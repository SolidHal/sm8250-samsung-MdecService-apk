.class public Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;
.super Ljava/lang/Object;
.source "NmsEventListObject.java"


# static fields
.field public static final KEY_OBJ_CALLBACKDATA:Ljava/lang/String; = "callbackData"

.field public static final KEY_OBJ_CHANGED_BIOBJECT:Ljava/lang/String; = "changedBIObject"

.field public static final KEY_OBJ_CHANGED_CONTACT:Ljava/lang/String; = "changedContact"

.field public static final KEY_OBJ_CHANGED_GROUPINFO_OBJECT:Ljava/lang/String; = "changedGIObject"

.field public static final KEY_OBJ_CHANGED_OBJECT:Ljava/lang/String; = "changedObject"

.field public static final KEY_OBJ_CHANGED_RELAY_DATA_OBJECT:Ljava/lang/String; = "relayData"

.field public static final KEY_OBJ_CHANGED_STATEMSG_OBJECT:Ljava/lang/String; = "stateMsg"

.field public static final KEY_OBJ_DDM_MSG_OBJECT:Ljava/lang/String; = "ddmMsg"

.field public static final KEY_OBJ_DELETED_BIOBJECT:Ljava/lang/String; = "deletedBIObject"

.field public static final KEY_OBJ_DELETED_CONTACT:Ljava/lang/String; = "deletedContact"

.field public static final KEY_OBJ_DELETED_GROUPINFO_OOBJECT:Ljava/lang/String; = "deletedGIObject"

.field public static final KEY_OBJ_DELETED_OBJECT:Ljava/lang/String; = "deletedObject"

.field public static final KEY_OBJ_INDEX:Ljava/lang/String; = "index"

.field public static final KEY_OBJ_NMSEVENT:Ljava/lang/String; = "nmsEvent"

.field public static final KEY_OBJ_PMSGRELAYDATE:Ljava/lang/String; = "P-MsgRelay-Date"

.field public static final KEY_OBJ_RELAY_REQUEST_OBJECT:Ljava/lang/String; = "relayRequest"

.field public static final KEY_OBJ_RELAY_RESPONSE_OBJECT:Ljava/lang/String; = "relayResponse"

.field public static final KEY_ROOT_NMSEVENTLIST:Ljava/lang/String; = "nmsEventList"

.field public static final LOG_TAG:Ljava/lang/String; = "NmsEventListObj"


# instance fields
.field private mCallBackData:Ljava/lang/String;

.field private mChangedBotInfoObjectsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedConactsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedGIObjectsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedObjectsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;",
            ">;"
        }
    .end annotation
.end field

.field private mDdmMsgObjectsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedBotInfoObjectsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DeletedBotInfoObject;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedContactsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DeletedContact;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedObjectsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:Ljava/lang/Integer;

.field private mJsonStr:Ljava/lang/String;

.field private mPMsgRelayDate:Ljava/lang/String;

.field private mRelayDataObjectsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;",
            ">;"
        }
    .end annotation
.end field

.field private mRelayRequestObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;",
            ">;"
        }
    .end annotation
.end field

.field private mRelayResponseObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMsgObjectsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mDeletedObjectsList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mChangedObjectsList:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mDeletedContactsList:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mChangedConactsList:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mChangedGIObjectsList:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mDdmMsgObjectsList:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mStateMsgObjectsList:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mRelayDataObjectsList:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mRelayRequestObjects:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mRelayRequestObjects:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mRelayResponseObjects:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mChangedBotInfoObjectsList:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mDeletedBotInfoObjectsList:Ljava/util/List;

    .line 15
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mJsonStr:Ljava/lang/String;

    return-void
.end method

.method private handleNmsEventByEventType(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "deletedContact"

    const-string v1, "changedContact"

    const-string v2, "deletedObject"

    const-string v3, "changedObject"

    .line 1
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    new-instance v4, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;

    invoke-direct {v4}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;-><init>()V

    .line 4
    invoke-virtual {v4, v3}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;->parseJSON(Lorg/json/JSONObject;)V

    .line 5
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mChangedObjectsList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    new-instance v3, Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;

    invoke-direct {v3}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;-><init>()V

    .line 9
    invoke-virtual {v3, v2}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;->parseJSON(Lorg/json/JSONObject;)V

    .line 10
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mDeletedObjectsList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    new-instance v2, Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;

    invoke-direct {v2}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;-><init>()V

    .line 14
    invoke-virtual {v2, v1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;->parseJSON(Lorg/json/JSONArray;)V

    .line 15
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mChangedConactsList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18
    new-instance v1, Lcom/samsung/android/mdecservice/nms/push/object/DeletedContact;

    invoke-direct {v1}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedContact;-><init>()V

    .line 19
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedContact;->parseJSON(Lorg/json/JSONArray;)V

    .line 20
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mDeletedContactsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->handleNmsEventByEventTypeForRcs(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private handleNmsEventByEventTypeForRcs(Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "deletedBIObject"

    const-string v1, "changedBIObject"

    const-string v2, "relayResponse"

    const-string v3, "relayRequest"

    const-string v4, "relayData"

    const-string v5, "stateMsg"

    const-string v6, "ddmMsg"

    const-string v7, "changedGIObject"

    .line 1
    :try_start_0
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 3
    new-instance v8, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;

    invoke-direct {v8}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;-><init>()V

    .line 4
    invoke-virtual {v8, v7}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;->parseJSON(Lorg/json/JSONObject;)V

    .line 5
    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mChangedGIObjectsList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 8
    new-instance v7, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;

    invoke-direct {v7}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;-><init>()V

    .line 9
    invoke-virtual {v7, v6}, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->parseJSON(Lorg/json/JSONObject;)V

    .line 10
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mDdmMsgObjectsList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 13
    new-instance v6, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;

    invoke-direct {v6}, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;-><init>()V

    .line 14
    invoke-virtual {v6, v5}, Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;->parseJSON(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object v5

    sget-object v7, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->PASS:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    if-ne v5, v7, :cond_2

    .line 15
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mStateMsgObjectsList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_2
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 17
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 18
    new-instance v5, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;

    invoke-direct {v5}, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;-><init>()V

    .line 19
    invoke-virtual {v5, v4}, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->parseJSON(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->PASS:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    if-ne v4, v6, :cond_3

    .line 20
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mRelayDataObjectsList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_3
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 22
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 23
    new-instance v4, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;

    invoke-direct {v4}, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;-><init>()V

    .line 24
    invoke-virtual {v4, v3}, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->parseJSON(Lorg/json/JSONObject;)V

    .line 25
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mRelayRequestObjects:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 27
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 28
    new-instance v3, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;

    invoke-direct {v3}, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;-><init>()V

    .line 29
    invoke-virtual {v3, v2}, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;->parseJSON(Lorg/json/JSONObject;)V

    .line 30
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mRelayResponseObjects:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 32
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 33
    new-instance v2, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;

    invoke-direct {v2}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;-><init>()V

    .line 34
    invoke-virtual {v2, v1}, Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;->parseJSON(Lorg/json/JSONObject;)V

    .line 35
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mChangedBotInfoObjectsList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 38
    new-instance v0, Lcom/samsung/android/mdecservice/nms/push/object/DeletedBotInfoObject;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedBotInfoObject;-><init>()V

    .line 39
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/push/object/DeletedBotInfoObject;->parseJSON(Lorg/json/JSONObject;)V

    .line 40
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mDeletedBotInfoObjectsList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public getCallBackData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mCallBackData:Ljava/lang/String;

    return-object v0
.end method

.method public getChangedBotInfoObjectsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/ChangedBotInfoObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mChangedBotInfoObjectsList:Ljava/util/List;

    return-object v0
.end method

.method public getChangedConactsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mChangedConactsList:Ljava/util/List;

    return-object v0
.end method

.method public getChangedGroupInfoObjectsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/ChangedGroupInfoObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mChangedGIObjectsList:Ljava/util/List;

    return-object v0
.end method

.method public getChangedObjectsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/ChangedObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mChangedObjectsList:Ljava/util/List;

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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mDdmMsgObjectsList:Ljava/util/List;

    return-object v0
.end method

.method public getDeletedBotInfoObjectsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DeletedBotInfoObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mDeletedBotInfoObjectsList:Ljava/util/List;

    return-object v0
.end method

.method public getDeletedContactsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DeletedContact;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mDeletedContactsList:Ljava/util/List;

    return-object v0
.end method

.method public getDeletedObjectsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DeletedObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mDeletedObjectsList:Ljava/util/List;

    return-object v0
.end method

.method public getIndex()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPMsgRelayDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mPMsgRelayDate:Ljava/lang/String;

    return-object v0
.end method

.method public getRelayDataObjectsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mRelayDataObjectsList:Ljava/util/List;

    return-object v0
.end method

.method public getRelayRequestObjectsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mRelayRequestObjects:Ljava/util/List;

    return-object v0
.end method

.method public getRelayResponseObjectsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mRelayResponseObjects:Ljava/util/List;

    return-object v0
.end method

.method public getStateMsgObjectsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/object/StateMsgObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mStateMsgObjectsList:Ljava/util/List;

    return-object v0
.end method

.method public parseJSON()V
    .locals 6

    const-string v0, "nmsEvent"

    const-string v1, "P-MsgRelay-Date"

    const-string v2, "index"

    const-string v3, "callbackData"

    .line 1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "nmsEventList"

    .line 2
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 3
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mCallBackData:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mIndex:Ljava/lang/Integer;

    .line 7
    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->mPMsgRelayDate:Ljava/lang/String;

    .line 9
    :cond_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 13
    invoke-direct {p0, v2}, Lcom/samsung/android/mdecservice/nms/push/object/NmsEventListObject;->handleNmsEventByEventType(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    return-void
.end method
