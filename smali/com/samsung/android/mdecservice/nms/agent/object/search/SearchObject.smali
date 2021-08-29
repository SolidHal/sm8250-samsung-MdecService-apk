.class public Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;
.super Ljava/lang/Object;
.source "SearchObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject$Calllog;
    }
.end annotation


# static fields
.field public static final DEFAULT_SEARCH_MAX_ENTRIES:I = 0x64

.field public static final DEFAULT_SEARCH_MAX_ENTRIES_FOR_CONTACT:I = 0x0

.field public static final KEY_OBJ_CRITERION:Ljava/lang/String; = "criterion"

.field public static final KEY_OBJ_CRITERION_NAME:Ljava/lang/String; = "name"

.field public static final KEY_OBJ_CRITERION_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_OBJ_CRITERION_VALUE:Ljava/lang/String; = "value"

.field public static final KEY_OBJ_FROMCURSOR:Ljava/lang/String; = "fromCursor"

.field public static final KEY_OBJ_MAXENTRIES:Ljava/lang/String; = "maxEntries"

.field public static final KEY_OBJ_OPERATOR:Ljava/lang/String; = "operator"

.field public static final KEY_OBJ_SEARCHCRITERIA:Ljava/lang/String; = "searchCriteria"

.field public static final KEY_ROOT_SELECTIONCRITERIA:Ljava/lang/String; = "selectionCriteria"

.field public static final LOG_TAG:Ljava/lang/String; = "SearchObj"

.field public static final SEARCHCRITERIA_CRITERION_NAME_OBJTYPE:Ljava/lang/String; = "ObjectType"

.field public static final SEARCHCRITERIA_CRITERION_TYPE_DATE:Ljava/lang/String; = "Date"

.field public static final SEARCHCRITERIA_CRITERION_TYPE_PRESETSEARCH:Ljava/lang/String; = "PresetSearch"

.field public static final SEARCHCRITERIA_OPERATOR_AND:Ljava/lang/String; = "And"


# instance fields
.field private isContactSearch:Z

.field private mDate:Ljava/lang/String;

.field private mFromCursor:Ljava/lang/String;

.field private mJsonObj:Lorg/json/JSONObject;

.field private mObjectType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->mFromCursor:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->mDate:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->mObjectType:Ljava/lang/String;

    .line 5
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->isContactSearch:Z

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 7

    const-string v0, "value"

    const-string v1, "type"

    .line 1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->mFromCursor:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "fromCursor"

    .line 4
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->mFromCursor:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->isContactSearch:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "maxEntries"

    if-nez v3, :cond_1

    const/16 v3, 0x64

    .line 6
    :try_start_1
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    :goto_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 9
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "Date"

    .line 10
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minDate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->mDate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 13
    iget-boolean v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->isContactSearch:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->mObjectType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 14
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "PresetSearch"

    .line 15
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    const-string v5, "ObjectType"

    .line 16
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->mObjectType:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 19
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "criterion"

    .line 20
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "operator"

    const-string v3, "And"

    .line 21
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "searchCriteria"

    .line 22
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "selectionCriteria"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->mDate:Ljava/lang/String;

    return-void
.end method

.method public setFromCursor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->mFromCursor:Ljava/lang/String;

    return-void
.end method

.method public setObjectType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/SearchObject;->mObjectType:Ljava/lang/String;

    return-void
.end method
