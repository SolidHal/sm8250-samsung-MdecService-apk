.class public Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;
.super Ljava/lang/Object;
.source "ChangedObject.java"


# static fields
.field public static final KEY_OBJ_ATTR:Ljava/lang/String; = "attribute"

.field public static final KEY_OBJ_ATTRS:Ljava/lang/String; = "attributes"

.field public static final KEY_OBJ_CORRELATIONID:Ljava/lang/String; = "correlationId"

.field public static final KEY_OBJ_CORRELATIONTAG:Ljava/lang/String; = "correlationTag"

.field public static final KEY_OBJ_FLAG:Ljava/lang/String; = "flag"

.field public static final KEY_OBJ_FLAGS:Ljava/lang/String; = "flags"

.field public static final KEY_OBJ_LASTMODSEQ:Ljava/lang/String; = "lastModSeq"

.field public static final KEY_OBJ_PARENTFOLDER:Ljava/lang/String; = "parentFolder"

.field public static final KEY_OBJ_PAYLOAD_PART:Ljava/lang/String; = "payloadPart"

.field public static final KEY_OBJ_RESOURCEURL:Ljava/lang/String; = "resourceURL"

.field public static final KEY_OBJ_UPLOAD_STATUS:Ljava/lang/String; = "uploadStatus"

.field public static final LOG_TAG:Ljava/lang/String; = "ChangedObj"


# instance fields
.field private mAttrMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCorrelationId:Ljava/lang/String;

.field private mCorrelationTag:Ljava/lang/String;

.field private mFlagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastModSeq:Ljava/lang/String;

.field private mParentFolder:Ljava/lang/String;

.field private mResourceURL:Ljava/lang/String;

.field private mUploadStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mUploadStatus:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mFlagList:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mAttrMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAttrMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mAttrMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrelationTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mCorrelationTag:Ljava/lang/String;

    return-object v0
.end method

.method public getFlagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mFlagList:Ljava/util/List;

    return-object v0
.end method

.method public getLastModSeq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mLastModSeq:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mResourceURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mUploadStatus:Ljava/lang/String;

    return-object v0
.end method

.method public parseJSON(Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "payloadPart"

    const-string v1, "attributes"

    const-string v2, "flags"

    const-string v3, "correlationTag"

    const-string v4, "correlationId"

    const-string v5, "lastModSeq"

    const-string v6, "resourceURL"

    const-string v7, "parentFolder"

    .line 1
    :try_start_0
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mParentFolder:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mResourceURL:Ljava/lang/String;

    .line 5
    :cond_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mLastModSeq:Ljava/lang/String;

    .line 7
    :cond_2
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mCorrelationId:Ljava/lang/String;

    .line 9
    :cond_3
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mCorrelationTag:Ljava/lang/String;

    .line 11
    :cond_4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 12
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "flag"

    .line 13
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v4

    .line 14
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 15
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mFlagList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 17
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "attribute"

    .line 18
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v2, v4

    .line 19
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 20
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "name"

    .line 21
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    .line 22
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    move v7, v4

    .line 23
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 24
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 25
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mAttrMap:Ljava/util/Map;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 26
    :cond_7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 28
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "uploadStatus"

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->mUploadStatus:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-void

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
