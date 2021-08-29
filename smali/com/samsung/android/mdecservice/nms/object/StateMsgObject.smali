.class public Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;
.super Ljava/lang/Object;
.source "StateMsgObject.java"


# static fields
.field protected static final KEY_ATTR_PARTICIPANT_ADDRESS:Ljava/lang/String; = "address"

.field protected static final KEY_ATTR_PARTICIPANT_NAME:Ljava/lang/String; = "name"

.field protected static final KEY_ATTR_PARTICIPANT_OWN:Ljava/lang/String; = "yourown"

.field protected static final KEY_ATTR_STATUS:Ljava/lang/String; = "status"

.field protected static final KEY_ATTR_STATUS_MSG_EVENT:Ljava/lang/String; = "stateMsgEvent"

.field public static final LOG_TAG:Ljava/lang/String; = "StateMsgObject"


# instance fields
.field protected mRcsGroupInfoAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseParticipantArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;",
            ">;"
        }
    .end annotation

    const-string v0, "yourown"

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 4
    new-instance v4, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    const-string v5, "name"

    .line 5
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "address"

    .line 6
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 8
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, "false"

    :goto_1
    invoke-direct {v4, v5, v6, v3}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 10
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getGroupAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;->mRcsGroupInfoAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    return-object v0
.end method

.method public parseJSON(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;
    .locals 13

    const-string v0, "status"

    const-string v1, "timestamp"

    const-string v2, "resourceURL"

    const-string v3, "stateMsgEvent"

    const-string v4, "chatId"

    const-string v5, "Declined"

    const-string v6, "Added"

    const-string v7, "Joined"

    const-string v8, "Removed"

    const-string v9, "Left"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getRcsBuilder()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v10

    .line 2
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "StateMsgObject"

    if-eqz v11, :cond_9

    .line 3
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v10, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 8
    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v10, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setTimestamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 12
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "parseJSON: invalid stateMsgEvent"

    .line 13
    invoke-static {v12, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object p1, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object p1

    .line 15
    :cond_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;->parseParticipantArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 20
    invoke-virtual {v10, v0, v9}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 21
    :cond_4
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 23
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;->parseParticipantArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 25
    invoke-virtual {v10, v0, v8}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 26
    :cond_5
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;->parseParticipantArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 30
    invoke-virtual {v10, v0, v7}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 31
    :cond_6
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 33
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;->parseParticipantArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 35
    invoke-virtual {v10, v0, v6}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 36
    :cond_7
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 37
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;->parseParticipantArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 40
    invoke-virtual {v10, p1, v5}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 41
    :cond_8
    invoke-virtual {v10}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;->mRcsGroupInfoAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    sget-object p1, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->PASS:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object p1

    :cond_9
    :goto_0
    :try_start_2
    const-string p1, "parseJSON: invalid stateMsg"

    .line 43
    invoke-static {v12, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object p1, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 46
    sget-object p1, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object p1
.end method
