.class public Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;
.super Ljava/lang/Object;
.source "SendFileRequest.java"


# instance fields
.field private mAccessoryID:J

.field private mAgentClassName:Ljava/lang/String;

.field private mContainerID:Ljava/lang/String;

.field private mDestFilePath:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPeerID:Ljava/lang/String;

.field private mSrcFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mSrcFilePath:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mDestFilePath:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPeerID:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mContainerID:Ljava/lang/String;

    .line 7
    iput-wide p5, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAccessoryID:J

    .line 8
    iput-object p7, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPackageName:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAgentClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "SourcePath"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mSrcFilePath:Ljava/lang/String;

    const-string p1, "DestinationPath"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mDestFilePath:Ljava/lang/String;

    const-string p1, "PeerId"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPeerID:Ljava/lang/String;

    const-string p1, "ContainerId"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mContainerID:Ljava/lang/String;

    const-string p1, "AccessoryId"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAccessoryID:J

    const-string p1, "PackageName"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPackageName:Ljava/lang/String;

    const-string p1, "AgentClassName"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAgentClassName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getAccessoryID()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAccessoryID:J

    return-wide v0
.end method

.method public getAgentClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAgentClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mContainerID:Ljava/lang/String;

    return-object v0
.end method

.method public getDestFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mDestFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPeerID:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mSrcFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mSrcFilePath:Ljava/lang/String;

    const-string v2, "SourcePath"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mDestFilePath:Ljava/lang/String;

    const-string v2, "DestinationPath"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPeerID:Ljava/lang/String;

    const-string v2, "PeerId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mContainerID:Ljava/lang/String;

    const-string v2, "ContainerId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-wide v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAccessoryID:J

    const-string v3, "AccessoryId"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 7
    iget-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPackageName:Ljava/lang/String;

    const-string v2, "PackageName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAgentClassName:Ljava/lang/String;

    const-string v2, "AgentClassName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
