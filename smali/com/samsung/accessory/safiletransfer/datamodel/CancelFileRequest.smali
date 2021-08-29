.class public Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;
.super Ljava/lang/Object;
.source "CancelFileRequest.java"


# instance fields
.field private mTransactionId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;->mTransactionId:I

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "TransactionId"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;->mTransactionId:I

    return-void
.end method

.method public getTransactionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;->mTransactionId:I

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;->mTransactionId:I

    const-string v2, "TransactionId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
