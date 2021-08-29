.class public Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;
.super Ljava/lang/Object;
.source "ReceiveFileJsonV2.java"


# instance fields
.field private mAccept:Z

.field private mFileURI:Ljava/lang/String;

.field private mId:I

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mId:I

    .line 4
    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mPath:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mAccept:Z

    .line 6
    iput-object p3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mFileURI:Ljava/lang/String;

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

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mId:I

    const-string p1, "path"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mPath:Ljava/lang/String;

    const-string p1, "fileuri"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mFileURI:Ljava/lang/String;

    const-string p1, "accepted"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mAccept:Z

    return-void
.end method

.method public getFileUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mFileURI:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mId:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public isAccept()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mAccept:Z

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mId:I

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mPath:Ljava/lang/String;

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mFileURI:Ljava/lang/String;

    const-string v2, "fileuri"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-boolean v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mAccept:Z

    const-string v2, "accepted"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method
