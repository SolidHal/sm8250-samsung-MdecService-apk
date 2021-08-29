.class public Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;
.super Ljava/lang/Object;
.source "PayloadInfo.java"


# static fields
.field private static final KEY_ATTR_NAME_PAYLOAD_PART:Ljava/lang/String; = "payloadPart"

.field private static final KEY_ROOT_PAYLOAD_INFO:Ljava/lang/String; = "payloadInfo"

.field public static final LOG_TAG:Ljava/lang/String; = "PayloadInfo"


# instance fields
.field private mJsonObject:Lorg/json/JSONObject;

.field private mPayloadPartList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;->mPayloadPartList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;->mPayloadPartList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;->mPayloadPartList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;->mJsonObject:Lorg/json/JSONObject;

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;->mPayloadPartList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;->mPayloadPartList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;

    .line 7
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->encodeJSON()V

    .line 8
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->getJSON()Lorg/json/JSONObject;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "payloadPart"

    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;->mJsonObject:Lorg/json/JSONObject;

    const-string v2, "payloadInfo"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12
    sget-object v1, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "error in encoding json!"

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;->mJsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPayloadPartList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;->mPayloadPartList:Ljava/util/List;

    return-object v0
.end method
