.class public Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;
.super Ljava/lang/Object;
.source "OnMultipleErrorMessage.java"


# instance fields
.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;

.field private mTransactionId:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mTransactionId:[I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorCode:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([IILjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mTransactionId:[I

    .line 7
    iput p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorCode:I

    .line 8
    iput-object p3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "errorCode"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorCode:I

    const-string v1, "errorMsg"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorMsg:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mTransactionId:[I

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mTransactionId:[I

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorCode:I

    return v0
.end method

.method getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mTransactionId:[I

    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mTransactionId:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 4
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "id"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorCode:I

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    iget-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->mErrorMsg:Ljava/lang/String;

    const-string v2, "errorMsg"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
