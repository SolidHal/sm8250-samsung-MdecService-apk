.class public Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;
.super Ljava/lang/Object;
.source "RelayRequestObject.java"


# static fields
.field public static final KEY_OBJ_FROM:Ljava/lang/String; = "from"

.field public static final KEY_OBJ_REQUEST:Ljava/lang/String; = "request"

.field public static final KEY_OBJ_REQUEST_ID:Ljava/lang/String; = "id"

.field public static final KEY_OBJ_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_ROOT_RELAY_REQUEST:Ljava/lang/String; = "relayRequest"

.field public static final LOG_TAG:Ljava/lang/String; = "RelayRequestObj"


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

.field private mRelayType:Ljava/lang/String;

.field private mSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->mContactList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->mRelayType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "from"

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rcs_enabled"

    .line 5
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->mRelayType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "request"

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, ""

    .line 6
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    const-string v1, "rcscapa_search"

    .line 7
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->mRelayType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-wide v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->mSearchTime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 9
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 10
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->mContactList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    .line 11
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "id"

    .line 12
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "relayRequest"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->mJsonObj:Lorg/json/JSONObject;

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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->mContactList:Ljava/util/List;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setRelayType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->mRelayType:Ljava/lang/String;

    return-void
.end method

.method public setSearchTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/RelayRequestObject;->mSearchTime:J

    return-void
.end method
