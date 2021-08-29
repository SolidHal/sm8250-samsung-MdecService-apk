.class public Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;
.super Ljava/lang/Object;
.source "SearchResponseObject.java"


# static fields
.field public static final KEY_OBJ_CURSOR:Ljava/lang/String; = "cursor"

.field public static final KEY_OBJ_OBJECT:Ljava/lang/String; = "object"

.field public static final KEY_ROOT_OBJECTLIST:Ljava/lang/String; = "objectList"

.field public static final LOG_TAG:Ljava/lang/String; = "SearchRespObj"


# instance fields
.field private mAttributesArray:Lorg/json/JSONArray;

.field private mCursor:Ljava/lang/String;

.field private mJsonStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->mJsonStr:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->mCursor:Ljava/lang/String;

    .line 4
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->mAttributesArray:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public getAttributesArray()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->mAttributesArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getCursor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->mCursor:Ljava/lang/String;

    return-object v0
.end method

.method public parseJson()V
    .locals 5

    const-string v0, "object"

    const-string v1, "cursor"

    .line 1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "objectList"

    .line 2
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->mCursor:Ljava/lang/String;

    const-string v1, "SearchRespObj"

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCursor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->mCursor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchResponseObject;->mAttributesArray:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
