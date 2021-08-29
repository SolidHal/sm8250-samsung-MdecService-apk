.class public Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;
.super Ljava/lang/Object;
.source "RelayResponseObject.java"


# static fields
.field public static final KEY_OBJ_RESPONSE:Ljava/lang/String; = "response"

.field public static final KEY_OBJ_RESPONSE_AVAILABLE:Ljava/lang/String; = "available"

.field public static final KEY_OBJ_RESPONSE_FEATURES:Ljava/lang/String; = "features"

.field public static final KEY_OBJ_RESPONSE_ID:Ljava/lang/String; = "id"

.field public static final KEY_OBJ_RESPONSE_TIME:Ljava/lang/String; = "time"

.field public static final KEY_OBJ_TO:Ljava/lang/String; = "to"

.field public static final KEY_OBJ_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_ROOT_RELAY_RESPONSE:Ljava/lang/String; = "relayResponse"

.field public static final LOG_TAG:Ljava/lang/String; = "RelayResponseObj"


# instance fields
.field private mContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceId:Ljava/lang/String;

.field private mJsonObj:Lorg/json/JSONObject;

.field private mRcsEnabled:Z

.field private mRelayType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->mContactList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 14

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->mRelayType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rcs_enabled"

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->mRelayType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "response"

    if-eqz v1, :cond_1

    .line 5
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->mRcsEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 6
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 7
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->mContactList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    .line 8
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 9
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->mRelayType:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v8, "rcscapa_add"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v7, v13

    goto :goto_2

    :sswitch_1
    const-string v8, "rcscapa_update"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v7, v12

    goto :goto_2

    :sswitch_2
    const-string v8, "rcscapa_search"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v7, v11

    goto :goto_2

    :sswitch_3
    const-string v8, "rcscapa_delete"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :sswitch_4
    const-string v8, "rcscapa_checkbot"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v7, v9

    goto :goto_2

    :sswitch_5
    const-string v8, "rcscapa_check"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_2

    move v7, v10

    :cond_2
    :goto_2
    const-string v6, "id"

    if-eqz v7, :cond_4

    if-eq v7, v13, :cond_4

    if-eq v7, v12, :cond_3

    if-eq v7, v11, :cond_3

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "available"

    .line 11
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->isAvailable()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "features"

    .line 12
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getFeatures()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "time"

    .line 13
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getLastUpdateTime()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_3

    .line 14
    :cond_4
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :goto_3
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 16
    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    const-string v1, "to"

    .line 17
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "relayResponse"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2162ae86 -> :sswitch_5
        -0x1ab1fdf3 -> :sswitch_4
        -0x9655887 -> :sswitch_3
        0x102e8776 -> :sswitch_2
        0x14345a97 -> :sswitch_1
        0x5cef5993 -> :sswitch_0
    .end sparse-switch
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setContactList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->mContactList:Ljava/util/List;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setRcsEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->mRcsEnabled:Z

    return-void
.end method

.method public setRelayType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayResponseObject;->mRelayType:Ljava/lang/String;

    return-void
.end method
