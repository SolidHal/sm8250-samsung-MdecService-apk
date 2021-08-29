.class public Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
.super Ljava/lang/Object;
.source "FTJson.java"


# instance fields
.field private opCode:I

.field private params:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->opCode:I

    .line 4
    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->params:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "OpCode"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->opCode:I

    const-string p1, "Parameters"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->params:Lorg/json/JSONObject;

    return-void
.end method

.method public getOpCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->opCode:I

    return v0
.end method

.method public getParams()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->params:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->opCode:I

    const-string v2, "OpCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->params:Lorg/json/JSONObject;

    const-string v2, "Parameters"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
