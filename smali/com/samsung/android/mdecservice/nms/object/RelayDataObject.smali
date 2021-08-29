.class public Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;
.super Ljava/lang/Object;
.source "RelayDataObject.java"


# static fields
.field private static final FT_OPERATION_DOWNLOAD:Ljava/lang/String; = "download"

.field private static final FT_OPERATION_UPLOAD:Ljava/lang/String; = "upload"

.field public static final KEY_OBJ_ATTR:Ljava/lang/String; = "attribute"

.field public static final KEY_OBJ_ATTRS:Ljava/lang/String; = "attributes"

.field public static final KEY_OBJ_FLAG:Ljava/lang/String; = "flag"

.field public static final MESSAGE_ID:Ljava/lang/String; = "MessageId"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAttributeMap:Ljava/util/Map;
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

.field private mOperation:Ljava/lang/String;

.field private mResUrl:Ljava/lang/String;

.field private validRelayOps:Ljava/util/List;
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
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->LOG_TAG:Ljava/lang/String;

    const-string v1, "download"

    const-string v2, "upload"

    const-string v3, "create"

    const-string v4, "invite"

    const-string v5, "exit"

    const-string v6, "remove"

    .line 3
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->validRelayOps:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mAttributeMap:Ljava/util/Map;

    return-void
.end method

.method private validateAttributes()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mOperation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_1
    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "upload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v1, "invite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_5
    const-string v1, "create"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_7

    const-string v1, "groupChatId"

    const-string v6, "contacts"

    const-string v7, "chatId"

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mAttributeMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->LOG_TAG:Ljava/lang/String;

    const-string v1, "parseJSON: chat id missing"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mAttributeMap:Ljava/util/Map;

    const-string v1, "correlationTag"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mAttributeMap:Ljava/util/Map;

    .line 7
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->LOG_TAG:Ljava/lang/String;

    const-string v1, "parseJSON: cotag or contacts missing"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mAttributeMap:Ljava/util/Map;

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mAttributeMap:Ljava/util/Map;

    .line 12
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->LOG_TAG:Ljava/lang/String;

    const-string v1, "parseJSON: needed attrs missing"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    .line 15
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mAttributeMap:Ljava/util/Map;

    const-string v1, "MessageId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 16
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->LOG_TAG:Ljava/lang/String;

    const-string v1, "parseJSON: message id missing"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    .line 18
    :cond_8
    :goto_2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->PASS:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x509a5f04 -> :sswitch_5
        -0x468dd0f7 -> :sswitch_4
        -0x37b5077c -> :sswitch_3
        -0x31fbf1ff -> :sswitch_2
        0x2fb91e -> :sswitch_1
        0x551ac888 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public createGroupInfoAttribute()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;
    .locals 13

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getRcsBuilder()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setRelayOperation(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 3
    sget-object v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;->ATTR_RELAY:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mResUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    .line 5
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, -0x1

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "correlationTag"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v9

    goto :goto_1

    :sswitch_1
    const-string v6, "groupChatId"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v8

    goto :goto_1

    :sswitch_2
    const-string v6, "contacts"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v11

    goto :goto_1

    :sswitch_3
    const-string v6, "chatId"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v10

    goto :goto_1

    :sswitch_4
    const-string v6, "groupType"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v7

    goto :goto_1

    :sswitch_5
    const-string v6, "subject"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v12

    :cond_0
    :goto_1
    if-eqz v5, :cond_6

    if-eq v5, v11, :cond_5

    if-eq v5, v10, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-eq v5, v7, :cond_1

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v12

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setGroupType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v12

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setGroupChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    goto/16 :goto_0

    .line 12
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v12

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setRelayOpTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    goto/16 :goto_0

    .line 13
    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v12

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    goto/16 :goto_0

    .line 14
    :cond_5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setRelayOpContacts(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    goto/16 :goto_0

    .line 15
    :cond_6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v12

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->setSubject(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    goto/16 :goto_0

    .line 16
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object v0

    .line 17
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->setMiscRcsAttr(Ljava/util/Map;)V

    :cond_8
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f55aad4 -> :sswitch_5
        -0x58645da7 -> :sswitch_4
        -0x5128d96d -> :sswitch_3
        -0x21d29fad -> :sswitch_2
        0x1143edf2 -> :sswitch_1
        0x7a81aab8 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAttributeMap()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mAttributeMap:Ljava/util/Map;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mOperation:Ljava/lang/String;

    return-object v0
.end method

.method public getResUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mResUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isFtRelayData()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mOperation:Ljava/lang/String;

    const-string v1, "upload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGroupRelayData()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mOperation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mOperation:Ljava/lang/String;

    const-string v1, "invite"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mOperation:Ljava/lang/String;

    const-string v1, "remove"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mOperation:Ljava/lang/String;

    const-string v1, "create"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mOperation:Ljava/lang/String;

    const-string v1, "exit"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseJSON(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;
    .locals 9

    const-string v0, "resourceURL"

    const-string v1, "attributes"

    const-string v2, "operation"

    .line 1
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mOperation:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->validRelayOps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->LOG_TAG:Ljava/lang/String;

    const-string v0, "parseJSON: invalid relay op"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mResUrl:Ljava/lang/String;

    .line 9
    :cond_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->LOG_TAG:Ljava/lang/String;

    const-string v0, "parseJSON: invalid attrs"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object p1, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object p1

    :cond_3
    const-string v0, "attribute"

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    .line 14
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 15
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    .line 16
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    .line 17
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 19
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attrName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v0

    .line 20
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 21
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 22
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "attrValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 23
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->validateAttributes()Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    move-result-object p1

    return-object p1

    .line 25
    :cond_7
    :goto_2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object p1

    .line 26
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/object/RelayDataObject;->LOG_TAG:Ljava/lang/String;

    const-string v0, "parseJSON: invalid relayData"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object p1, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 29
    sget-object p1, Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;->FAIL:Lcom/samsung/android/mdecservice/nms/util/NMSUtil$Result;

    return-object p1
.end method
