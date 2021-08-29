.class public Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;
.super Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;
.source "RcsMessageObject.java"


# static fields
.field protected static final KEY_ATTR_NAME_RELAY_OPERATION:Ljava/lang/String; = "operation"

.field protected static final KEY_OBJ_CORRELATION_ID:Ljava/lang/String; = "correlationId"

.field public static final KEY_OBJ_DDM_MSG:Ljava/lang/String; = "ddmMsg"

.field public static final KEY_OBJ_DDM_MSGS:Ljava/lang/String; = "ddmMsgs"

.field protected static final KEY_OBJ_MESSAGE_ID:Ljava/lang/String; = "MessageId"

.field protected static final KEY_OBJ_OP_VALUE_DOWNLOAD:Ljava/lang/String; = "download"

.field protected static final KEY_OBJ_OP_VALUE_UPLOAD:Ljava/lang/String; = "upload"

.field public static final KEY_OBJ_PAYLOAD_PART:Ljava/lang/String; = "payloadPart"

.field protected static final KEY_OBJ_PAYLOAD_URL:Ljava/lang/String; = "payloadURL"

.field protected static final KEY_OBJ_THUMBNAIL_URL:Ljava/lang/String; = "thumbnailURL"

.field public static final KEY_OBJ_UPLOAD_STATUS:Ljava/lang/String; = "uploadStatus"

.field protected static final KEY_ROOT_RELAY_DATA_OBJECT:Ljava/lang/String; = "relayData"

.field private static final LOG_TAG:Ljava/lang/String; = "RcsMessageObject"


# instance fields
.field private mCorrelationId:Ljava/lang/String;

.field private mDdmMsgObjectsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;",
            ">;"
        }
    .end annotation
.end field

.field protected mPayloadURL:Ljava/lang/String;

.field private mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

.field protected mThumbnailURL:Ljava/lang/String;

.field private mUploadStatus:Ljava/lang/String;

.field private validMsgContext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;-><init>()V

    const-string v0, "standalone-message"

    const-string v1, "chat-message"

    const-string v2, "ft-message"

    const-string v3, "bot-chat"

    const-string v4, "bot-ft"

    .line 2
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->validMsgContext:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mCorrelationId:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mUploadStatus:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;-><init>()V

    const-string v0, "standalone-message"

    const-string v1, "chat-message"

    const-string v2, "ft-message"

    const-string v3, "bot-chat"

    const-string v4, "bot-ft"

    .line 8
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->validMsgContext:Ljava/util/List;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mCorrelationId:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mUploadStatus:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 12
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getAttributeMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->hasMiscAttrs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributeMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 15
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;-><init>()V

    const-string v0, "standalone-message"

    const-string v1, "chat-message"

    const-string v2, "ft-message"

    const-string v3, "bot-chat"

    const-string v4, "bot-ft"

    .line 17
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->validMsgContext:Ljava/util/List;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mCorrelationId:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mUploadStatus:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonStr:Ljava/lang/String;

    .line 21
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    return-void
.end method

.method private checkJsonEleValidity(Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "correlationId"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "correlationTag"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "lastModSeq"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "resourceURL"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "flags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "attributes"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private publishAttributeParseResult(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;
    .locals 7

    if-eqz p1, :cond_2

    const-string v0, "attribute"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    .line 4
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    .line 5
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move v5, v0

    .line 7
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 8
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    invoke-direct {p1, v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->validateAttributes()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->PASS:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object p1
.end method

.method private validateAttributes()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "RcsMessageObject"

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->validMsgContext:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 3
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getDirection()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4f0e616e

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    const v4, -0x3abdf8

    if-eq v3, v4, :cond_2

    const v4, 0x497fae7f

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "standalone-message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "ft-message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v5

    goto :goto_0

    :cond_3
    const-string v3, "chat-message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v6

    :cond_4
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    goto :goto_1

    .line 5
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "invalid file name"

    .line 6
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    .line 8
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getTxtContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "text content null"

    .line 9
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    .line 11
    :cond_7
    :goto_1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->PASS:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    :cond_8
    :goto_2
    const-string v0, "validateAttributes failed"

    .line 12
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0
.end method


# virtual methods
.method public encodeJSON()V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "RcsMessageObject"

    .line 1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v3, v1, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object v3

    .line 4
    sget-object v4, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_RELAY_DOWNLOAD_PAYLOAD:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "attributes"

    const-string v6, "attribute"

    const-string v7, "value"

    const-string v8, "name"

    if-ne v3, v4, :cond_1

    .line 5
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 8
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 9
    iget-object v10, v1, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v10}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getImdnMessageID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v10, "MessageId"

    .line 10
    invoke-virtual {v4, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 13
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 14
    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "operation"

    const-string v3, "upload"

    .line 16
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v3, "relayData"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 18
    :cond_1
    iget-object v3, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mParentFolder:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "parentFolder"

    .line 19
    iget-object v4, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mParentFolder:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :cond_2
    iget-object v3, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mCorrelationTag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "correlationTag"

    .line 21
    iget-object v4, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_3
    iget-object v3, v1, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mCorrelationId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "correlationId"

    .line 23
    iget-object v4, v1, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mParentFolder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mParentFolder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCorrelationTag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 27
    iget-object v4, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v4, 0x0

    .line 28
    :goto_0
    iget-object v10, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_5

    .line 29
    iget-object v10, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 30
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "flag ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 31
    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "flag"

    .line 32
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "flags"

    .line 33
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 36
    iget-object v4, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 37
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 38
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 39
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    array-length v14, v13

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_9

    aget-object v9, v13, v15

    .line 40
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 41
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 42
    :cond_9
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 43
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v11, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    invoke-virtual {v11, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 46
    :cond_a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 47
    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    :cond_b
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v3, "object"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public getAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getDdmMsgObjectsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mDdmMsgObjectsList:Ljava/util/List;

    return-object v0
.end method

.method public getObjectID()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mResourceURL:Ljava/lang/String;

    const-string v1, "[/]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 3
    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPayloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mPayloadURL:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mThumbnailURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mUploadStatus:Ljava/lang/String;

    return-object v0
.end method

.method public parseJSON()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;
    .locals 4

    const-string v0, "object"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonStr:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "RcsMessageObject"

    if-nez v1, :cond_0

    :try_start_1
    const-string v0, "parseJson: invalid json"

    .line 2
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "parseJSON: mandaory field missing"

    .line 6
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->parseJsonEle()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 10
    :cond_2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0
.end method

.method public parseJsonEle()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;
    .locals 13

    const-string v0, "uploadStatus"

    const-string v1, "payloadPart"

    const-string v2, "ddmMsgs"

    const-string v3, "payloadURL"

    const-string v4, "thumbnailURL"

    const-string v5, "flags"

    const-string v6, "attributes"

    const-string v7, "correlationTag"

    const-string v8, "correlationId"

    const-string v9, "parentFolder"

    const-string v10, "RcsMessageObject"

    const-string v11, "parseJsonEle"

    .line 1
    invoke-static {v10, v11}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v11, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonStr:Ljava/lang/String;

    if-nez v11, :cond_0

    const-string v0, "parseJsonEle: invalid json"

    .line 3
    invoke-static {v10, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    .line 5
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    new-instance v11, Lorg/json/JSONObject;

    iget-object v12, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-direct {p0, v11}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->checkJsonEleValidity(Lorg/json/JSONObject;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v0, "parseJsonEle: mandaory field missing"

    .line 7
    invoke-static {v10, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    .line 9
    :cond_2
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 10
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mParentFolder:Ljava/lang/String;

    .line 11
    :cond_3
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 12
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mCorrelationId:Ljava/lang/String;

    .line 13
    :cond_4
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 14
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mCorrelationTag:Ljava/lang/String;

    :cond_5
    const-string v7, "lastModSeq"

    .line 15
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mLastModSeq:Ljava/lang/String;

    const-string v7, "resourceURL"

    .line 16
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mResourceURL:Ljava/lang/String;

    .line 17
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    .line 18
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    goto :goto_1

    :cond_6
    move-object v6, v8

    .line 19
    :goto_1
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 20
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_2

    :cond_7
    move-object v5, v8

    .line 21
    :goto_2
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 22
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mThumbnailURL:Ljava/lang/String;

    .line 23
    :cond_8
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 24
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mPayloadURL:Ljava/lang/String;

    .line 25
    :cond_9
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 26
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 27
    :cond_a
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    .line 28
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 29
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 31
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mUploadStatus:Ljava/lang/String;

    :cond_b
    if-eqz v5, :cond_e

    const-string v0, "flag"

    .line 32
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 33
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_c

    goto :goto_4

    :cond_c
    move v1, v3

    .line 34
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 35
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    const-string v0, "invalid flags attr"

    .line 36
    invoke-static {v10, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    :cond_e
    if-eqz v8, :cond_f

    const-string v0, "ddmMsg"

    .line 38
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 39
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mDdmMsgObjectsList:Ljava/util/List;

    .line 41
    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_f

    .line 42
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 43
    new-instance v2, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;

    invoke-direct {v2}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;-><init>()V

    .line 44
    invoke-virtual {v2, v1}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->parseJSON(Lorg/json/JSONObject;)V

    .line 45
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mDdmMsgObjectsList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 46
    :cond_f
    invoke-direct {p0, v6}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->publishAttributeParseResult(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 48
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0
.end method

.method public setCorrelationId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->mCorrelationId:Ljava/lang/String;

    return-void
.end method
