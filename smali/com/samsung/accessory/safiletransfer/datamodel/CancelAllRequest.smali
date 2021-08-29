.class public Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;
.super Ljava/lang/Object;
.source "CancelAllRequest.java"


# instance fields
.field private mAgentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;->mAgentId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "AgentId"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;->mAgentId:Ljava/lang/String;

    return-void
.end method

.method public getAgentId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;->mAgentId:Ljava/lang/String;

    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;->mAgentId:Ljava/lang/String;

    const-string v2, "AgentId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
