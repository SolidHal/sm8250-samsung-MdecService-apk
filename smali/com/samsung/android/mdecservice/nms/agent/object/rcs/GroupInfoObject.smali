.class public Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;
.super Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;
.source "GroupInfoObject.java"


# static fields
.field protected static final KEY_ATTR_PARTICIPANT_ADDRESS:Ljava/lang/String; = "address"

.field protected static final KEY_ATTR_PARTICIPANT_NAME:Ljava/lang/String; = "name"

.field protected static final KEY_ATTR_PARTICIPANT_OWN:Ljava/lang/String; = "yourown"

.field protected static final KEY_ATTR_STATUS:Ljava/lang/String; = "status"

.field protected static final KEY_ATTR_STATUS_MSG_EVENT:Ljava/lang/String; = "stateMsgEvent"

.field public static final KEY_ROOT_GROUP_OBJECT:Ljava/lang/String; = "groupInfoObject"

.field public static final KEY_ROOT_RELAY_DATA_OBJECT:Ljava/lang/String; = "relayData"

.field public static final KEY_ROOT_STATEMSG_OBJECT:Ljava/lang/String; = "stateMsg"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mGroupAttributeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupAttributeMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mRcsGroupInfoAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;-><init>()V

    .line 15
    const-class v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;-><init>()V

    .line 7
    const-class v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->LOG_TAG:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonStr:Ljava/lang/String;

    .line 9
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;-><init>()V

    .line 2
    const-class v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->LOG_TAG:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->mGroupAttributeList:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->mGroupAttributeMap:Ljava/util/TreeMap;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mFlagList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;-><init>()V

    .line 11
    const-class v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->LOG_TAG:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    .line 13
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mAttributeMap:Ljava/util/TreeMap;

    return-void
.end method

.method private static createParticipantsJson(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "name"

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getName()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "address"

    .line 8
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getYourOwn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "yourown"

    .line 11
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getYourOwn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 12
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_2
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private encodeAttrInfo()V
    .locals 13

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    .line 5
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->mGroupAttributeList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributeMap()Ljava/util/Map;

    move-result-object v3

    .line 6
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->mGroupAttributeMap:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 8
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v8, -0x1

    .line 9
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x76000860

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v9, v10, :cond_3

    const v10, -0x5128d96d

    if-eq v9, v10, :cond_2

    const v10, 0x7a81aab8

    if-eq v9, v10, :cond_1

    goto :goto_1

    :cond_1
    const-string v9, "correlationTag"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v8, v12

    goto :goto_1

    :cond_2
    const-string v9, "chatId"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v8, v11

    goto :goto_1

    :cond_3
    const-string v9, "participants"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v8, v4

    :cond_4
    :goto_1
    if-eqz v8, :cond_6

    if-eq v8, v12, :cond_5

    if-eq v8, v11, :cond_5

    .line 10
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 11
    :cond_5
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 12
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v9, "name"

    .line 13
    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {v8, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 16
    :cond_6
    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->createParticipantsJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v7

    .line 17
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 18
    :cond_7
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->encodeMiscAttr(Ljava/util/Map;Lorg/json/JSONArray;)V

    .line 19
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_8

    const-string v3, "attribute"

    .line 20
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "attributes"

    .line 21
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "groupInfoObject"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private encodeAttrRelay()V
    .locals 13

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->mGroupAttributeList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributeMap()Ljava/util/Map;

    move-result-object v3

    .line 5
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->mGroupAttributeList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getRelayOperation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "operation"

    if-nez v5, :cond_0

    .line 6
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->mGroupAttributeList:Ljava/util/List;

    .line 7
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getRelayOperation()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->mGroupAttributeMap:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 10
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 11
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 12
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "contacts"

    .line 13
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "value"

    const-string v12, "name"

    if-eqz v10, :cond_4

    .line 14
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 15
    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 16
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 18
    invoke-virtual {v7, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v7, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :cond_3
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 22
    invoke-virtual {v0, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 23
    :cond_5
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 24
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 25
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 26
    :cond_6
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 27
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {v7, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 30
    :cond_7
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->encodeMiscAttr(Ljava/util/Map;Lorg/json/JSONArray;)V

    .line 31
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_8

    const-string v3, "attribute"

    .line 32
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "attributes"

    .line 33
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "relayData"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private encodeAttrState()V
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->mGroupAttributeMap:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "Left"

    .line 7
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "Removed"

    .line 8
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "Joined"

    .line 9
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "Added"

    .line 10
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "Declined"

    .line 11
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v7, "timestamp"

    .line 12
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 13
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 15
    :cond_3
    :goto_1
    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->createParticipantsJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 16
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 17
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    const-string v3, "status"

    .line 18
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "stateMsgEvent"

    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "stateMsg"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private encodeMiscAttr(Ljava/util/Map;Lorg/json/JSONArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 6
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    aget-object v5, v3, v4

    if-eqz v5, :cond_0

    .line 7
    :try_start_0
    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "name"

    .line 8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "value"

    .line 9
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private processExceptionCase(Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "groupChatId"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "groupType"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mystatus"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "subject"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "timestamp"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "resourceURL"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->LOG_TAG:Ljava/lang/String;

    const-string v0, "parseJsonEle: mandatory fields missing"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public encodeJSON()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->LOG_TAG:Ljava/lang/String;

    const-string v1, "encodeJSON"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->mGroupAttributeList:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->LOG_TAG:Ljava/lang/String;

    const-string v1, "invalid Group information"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->mGroupAttributeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;

    move-result-object v0

    .line 6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    .line 7
    new-instance v2, Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->mGroupAttributeList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getAttrMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->mGroupAttributeMap:Ljava/util/TreeMap;

    .line 8
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject$1;->$SwitchMap$com$samsung$android$mdecservice$nms$attribute$RcsGroupInfoAttribute$GroupAttrType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->encodeAttrRelay()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->encodeAttrState()V

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->encodeAttrInfo()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getGroupAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->mRcsGroupInfoAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    return-object v0
.end method

.method public parseJSON()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;
    .locals 3

    const-string v0, "groupInfoObject"

    .line 1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonStr:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->LOG_TAG:Ljava/lang/String;

    const-string v1, "parseJson: invalid json"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->parseJsonEle()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8
    :cond_3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    .line 9
    :cond_4
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->LOG_TAG:Ljava/lang/String;

    const-string v1, "parseJson: mandatory fields missing"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

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
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "yourown"

    const-string v2, "address"

    const-string v3, "attributes"

    const-string v4, "participants"

    const-string v5, "st-timestamp"

    const-string v6, "timestamp"

    const-string v7, "parentFolder"

    .line 1
    :try_start_0
    iget-object v8, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    if-nez v8, :cond_0

    iget-object v8, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonStr:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 2
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->LOG_TAG:Ljava/lang/String;

    const-string v2, "parseJsonEle: invalid json"

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    .line 4
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v9, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    if-nez v9, :cond_1

    new-instance v9, Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v9, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mJsonObj:Lorg/json/JSONObject;

    .line 6
    :goto_0
    invoke-direct {v1, v9}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->processExceptionCase(Lorg/json/JSONObject;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 7
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->LOG_TAG:Ljava/lang/String;

    const-string v2, "parseJsonEle: mandatory fields missing"

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    :cond_2
    const-string v10, "resourceURL"

    .line 9
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mResourceURL:Ljava/lang/String;

    .line 10
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 11
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->mParentFolder:Ljava/lang/String;

    .line 12
    :cond_3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getRcsBuilder()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v7

    const-string v10, "groupChatId"

    .line 13
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 14
    invoke-virtual {v7, v10}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setGroupChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v7

    const-string v10, "chatIdreference"

    .line 15
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 16
    invoke-virtual {v7, v10}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setChatIdReference(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v7

    const-string v10, "groupType"

    .line 17
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 18
    invoke-virtual {v7, v10}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setGroupType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v7

    const-string v10, "mystatus"

    .line 19
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 20
    invoke-virtual {v7, v10}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setMystatus(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v7

    const-string v10, "subject"

    .line 21
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 22
    invoke-virtual {v7, v10}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setSubject(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v7

    .line 23
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 24
    invoke-virtual {v7, v10}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setTimestamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v7

    .line 25
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 26
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {v7, v5}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setStTimestamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v7

    .line 28
    :cond_4
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "name"

    if-eqz v5, :cond_7

    .line 29
    :try_start_1
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    .line 30
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 31
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 32
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 33
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 34
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 35
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 36
    new-instance v14, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    .line 37
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 38
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 39
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v15, v11, v13}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_6
    const-string v0, ""

    .line 41
    invoke-virtual {v7, v5, v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 42
    :cond_7
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 43
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "attribute"

    .line 44
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 45
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 46
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 47
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "correlationTag"

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "value"

    if-eqz v5, :cond_8

    .line 49
    :try_start_2
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setRelayOpTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    :goto_3
    const/4 v11, 0x0

    goto :goto_4

    :cond_8
    const-string v5, "chatId"

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 51
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    goto :goto_3

    .line 52
    :cond_9
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 53
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v11

    .line 54
    invoke-interface {v8, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 55
    :cond_a
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {v7, v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setTimestamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->mRcsGroupInfoAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    .line 58
    invoke-virtual {v0, v8}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->setMiscRcsAttr(Ljava/util/Map;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->PASS:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 61
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0
.end method
