.class public Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;
.super Ljava/lang/Object;
.source "OnErrorMessage.java"


# instance fields
.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;

.field private mTransactionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mTransactionId:I

    .line 3
    iput v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorCode:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mTransactionId:I

    .line 7
    iput p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorCode:I

    .line 8
    iput-object p3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mTransactionId:I

    const-string p1, "errorCode"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorCode:I

    const-string p1, "errorMsg"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorMsg:Ljava/lang/String;

    return-void
.end method

.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorCode:I

    return v0
.end method

.method getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mTransactionId:I

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mTransactionId:I

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    iget v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorCode:I

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorMsg:Ljava/lang/String;

    const-string v2, "errorMsg"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
