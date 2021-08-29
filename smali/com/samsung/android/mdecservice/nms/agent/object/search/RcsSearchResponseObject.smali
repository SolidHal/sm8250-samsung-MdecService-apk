.class public Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;
.super Ljava/lang/Object;
.source "RcsSearchResponseObject.java"


# static fields
.field private static final KEY_OBJ_BIO:Ljava/lang/String; = "BIObject"

.field private static final KEY_OBJ_CURSOR:Ljava/lang/String; = "cursor"

.field private static final KEY_OBJ_GIO:Ljava/lang/String; = "GIObject"

.field private static final KEY_OBJ_RELAY_DATA:Ljava/lang/String; = "relayData"

.field private static final KEY_OBJ_STATE_MSG:Ljava/lang/String; = "stateMsg"

.field private static final KEY_ROOT_BOTINFO_LIST:Ljava/lang/String; = "BIObjectList"

.field private static final KEY_ROOT_GIO_LIST:Ljava/lang/String; = "GIObjectList"

.field private static final KEY_ROOT_RELAYDATA_LIST:Ljava/lang/String; = "relayDataList"

.field private static final KEY_ROOT_STATEMSG_LIST:Ljava/lang/String; = "stateMsgList"

.field public static final LOG_TAG:Ljava/lang/String; = "RcsSearchResponseObject"


# instance fields
.field private mAttributes:Lorg/json/JSONArray;

.field private mCursor:Ljava/lang/String;

.field private mJsonStr:Ljava/lang/String;

.field private mRcsObjectType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

.field mRcsObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mJsonStr:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mCursor:Ljava/lang/String;

    .line 4
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mAttributes:Lorg/json/JSONArray;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mRcsObjects:Ljava/util/ArrayList;

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->parseJson()V

    return-void
.end method

.method private parseBioObjectListJson(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "BIObject"

    const-string v1, "cursor"

    :try_start_0
    const-string v2, "BIObjectList"

    .line 1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mCursor:Ljava/lang/String;

    const-string v1, "RcsSearchResponseObject"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCursor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mCursor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mAttributes:Lorg/json/JSONArray;

    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mAttributes:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mAttributes:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mRcsObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private parseGioObjectListJson(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "GIObject"

    const-string v1, "cursor"

    :try_start_0
    const-string v2, "GIObjectList"

    .line 1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mCursor:Ljava/lang/String;

    const-string v1, "RcsSearchResponseObject"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCursor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mCursor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mAttributes:Lorg/json/JSONArray;

    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mAttributes:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mAttributes:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;-><init>(Lorg/json/JSONObject;)V

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->parseJsonEle()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->PASS:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    if-ne v1, v2, :cond_1

    .line 10
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mRcsObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private parseJson()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "GIObjectList"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->parseGioObjectListJson(Lorg/json/JSONObject;)V

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->GROUP_INFO:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mRcsObjectType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    goto :goto_0

    :cond_0
    const-string v1, "stateMsgList"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->parseStateMsgObjectListJson(Lorg/json/JSONObject;)V

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->STATE_MSG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mRcsObjectType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    goto :goto_0

    :cond_1
    const-string v1, "relayDataList"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->parseRelayDataListJson(Lorg/json/JSONObject;)V

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->RELAY_DATA:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mRcsObjectType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    goto :goto_0

    :cond_2
    const-string v1, "BIObjectList"

    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->parseBioObjectListJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private parseRelayDataListJson(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "relayData"

    const-string v1, "cursor"

    :try_start_0
    const-string v2, "relayDataList"

    .line 1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mCursor:Ljava/lang/String;

    const-string v1, "RcsSearchResponseObject"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCursor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mCursor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mAttributes:Lorg/json/JSONArray;

    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mAttributes:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mAttributes:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->parseJSON(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->PASS:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    if-ne v1, v2, :cond_1

    .line 10
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mRcsObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private parseStateMsgObjectListJson(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "stateMsg"

    const-string v1, "cursor"

    :try_start_0
    const-string v2, "stateMsgList"

    .line 1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mCursor:Ljava/lang/String;

    const-string v1, "RcsSearchResponseObject"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCursor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mCursor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mAttributes:Lorg/json/JSONArray;

    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mAttributes:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mAttributes:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;->parseJSON(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->PASS:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    if-ne v1, v2, :cond_1

    .line 10
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mRcsObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getCursor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mCursor:Ljava/lang/String;

    return-object v0
.end method

.method public getParsedRcsObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mRcsObjects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRcsObjectType()Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/search/RcsSearchResponseObject;->mRcsObjectType:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    return-object v0
.end method
