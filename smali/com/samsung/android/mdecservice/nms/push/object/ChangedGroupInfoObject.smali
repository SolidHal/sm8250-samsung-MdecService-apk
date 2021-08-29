.class public Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;
.super Ljava/lang/Object;
.source "ChangedGroupInfoObject.java"


# static fields
.field private static final KEY_OBJ_CHAT_ID_REFERENCE:Ljava/lang/String; = "chatIdReference"

.field private static final KEY_OBJ_GROUP_CHAT_ID:Ljava/lang/String; = "groupChatId"

.field private static final KEY_OBJ_GROUP_TYPE:Ljava/lang/String; = "groupType"

.field private static final KEY_OBJ_MY_STATUS:Ljava/lang/String; = "mystatus"

.field private static final KEY_OBJ_PARENTFOLDER:Ljava/lang/String; = "parentFolder"

.field private static final KEY_OBJ_RESOURCEURL:Ljava/lang/String; = "resourceURL"

.field private static final KEY_OBJ_ST_TIMESTAMP:Ljava/lang/String; = "st-timestamp"

.field private static final KEY_OBJ_SUBJECT:Ljava/lang/String; = "subject"

.field private static final KEY_OBJ_TIME_STAMP:Ljava/lang/String; = "timestamp"

.field public static final LOG_TAG:Ljava/lang/String; = "ChangedObj"


# instance fields
.field private mChatIdReference:Ljava/lang/String;

.field private mGroupChatId:Ljava/lang/String;

.field private mGroupType:Ljava/lang/String;

.field private mMystatus:Ljava/lang/String;

.field private mParentFolder:Ljava/lang/String;

.field private mResourceURL:Ljava/lang/String;

.field private mStTimestamp:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mTimestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupChatId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mGroupChatId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mGroupType:Ljava/lang/String;

    return-object v0
.end method

.method public getMystatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mMystatus:Ljava/lang/String;

    return-object v0
.end method

.method public getParentFolder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mParentFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mResourceURL:Ljava/lang/String;

    return-object v0
.end method

.method public getStTimestamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mStTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public parseJSON(Lorg/json/JSONObject;)V
    .locals 10

    const-string v0, "st-timestamp"

    const-string v1, "timestamp"

    const-string v2, "mystatus"

    const-string v3, "subject"

    const-string v4, "chatIdReference"

    const-string v5, "groupType"

    const-string v6, "groupChatId"

    const-string v7, "resourceURL"

    const-string v8, "parentFolder"

    .line 1
    :try_start_0
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mParentFolder:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mResourceURL:Ljava/lang/String;

    .line 5
    :cond_1
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mGroupChatId:Ljava/lang/String;

    .line 7
    :cond_2
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mGroupType:Ljava/lang/String;

    .line 9
    :cond_3
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 10
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mChatIdReference:Ljava/lang/String;

    .line 11
    :cond_4
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 12
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mSubject:Ljava/lang/String;

    .line 13
    :cond_5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 14
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mMystatus:Ljava/lang/String;

    .line 15
    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 16
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mTimestamp:Ljava/lang/String;

    .line 17
    :cond_7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->mStTimestamp:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_8
    :goto_0
    return-void
.end method
