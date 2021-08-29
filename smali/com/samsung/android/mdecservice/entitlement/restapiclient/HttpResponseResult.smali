.class public Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;
.super Ljava/lang/Object;
.source "HttpResponseResult.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "mdec/HttpResponseResult"

.field public static final RESULT_DATA_TYPE_JSON:I = 0x1

.field public static final RESULT_DATA_TYPE_NONE:I = 0x0

.field public static final RESULT_DATA_TYPE_XML:I = 0x2


# instance fields
.field private mBody:Lorg/json/JSONObject;

.field private mDataString:Ljava/lang/String;

.field private mEntitlementServerUri:Ljava/lang/String;

.field private mLineInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalAcsUri:Ljava/lang/String;

.field private mNmsServerUri:Ljava/lang/String;

.field private mPcscfServerUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProvisionedDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mReason:Ljava/lang/String;

.field private mResponseCode:I

.field private mResult:Z


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mLineInfoList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mPcscfServerUrlList:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mProvisionedDeviceList:Ljava/util/List;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mDataString:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mDataString:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->parseJsonArray()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->parseXml()V

    .line 9
    :cond_2
    :goto_0
    iput p3, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mResponseCode:I

    return-void
.end method

.method private getDeviceInfoFromJson(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;
    .locals 17

    move-object/from16 v0, p1

    .line 1
    new-instance v16, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auth_user_id"

    .line 2
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "added_at"

    .line 3
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "device_id"

    .line 4
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "model_number"

    .line 5
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "device_name"

    .line 6
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "device_type"

    .line 7
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "active"

    .line 8
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "is_line_owner"

    .line 9
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "application_data"

    .line 10
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "device_data"

    .line 11
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "push_type"

    .line 12
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "push_token"

    .line 13
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "active_services"

    .line 14
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "cmc_version"

    .line 15
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v16
.end method

.method private getLineInfoFromJson(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;
    .locals 13

    const-string v0, "mdec/HttpResponseResult"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v12, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;

    const-string v2, "created_at"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "impu"

    .line 2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "line_name"

    .line 3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "line_id"

    .line 4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "line_owner_device_id"

    .line 5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "line_owner_user_id"

    .line 6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "line_active"

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v2, "modified_at"

    .line 8
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "msisdn"

    .line 9
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "device"

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    instance-of v1, p1, Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    .line 13
    check-cast p1, Lorg/json/JSONArray;

    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 15
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 16
    invoke-direct {p0, v2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getDeviceInfoFromJson(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->addMdecDevice(Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_0
    instance-of v1, p1, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 18
    check-cast p1, Lorg/json/JSONObject;

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getDeviceInfoFromJson(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;

    move-result-object p1

    invoke-virtual {v12, p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->addMdecDevice(Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v12

    goto :goto_1

    :catch_1
    move-exception p1

    .line 20
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLineInfoFromJson : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v1

    :cond_1
    :goto_2
    return-object v12
.end method

.method private getProvisionedDeviceInfoFromJson(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;
    .locals 17

    move-object/from16 v0, p1

    .line 1
    new-instance v16, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auth_user_id"

    .line 2
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "added_at"

    .line 3
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "device_id"

    .line 4
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "model_number"

    .line 5
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "device_name"

    .line 6
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "device_type"

    .line 7
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "active"

    .line 8
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "is_line_owner"

    .line 9
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "application_data"

    .line 10
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "device_data"

    .line 11
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "push_type"

    .line 12
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "push_token"

    .line 13
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "active_services"

    .line 14
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "cmc_version"

    .line 15
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v16
.end method

.method private parseConfiguration()V
    .locals 8

    const-string v0, "nms_address"

    const-string v1, "es_address"

    const-string v2, "pcscf_address_list"

    const-string v3, "mdec/HttpResponseResult"

    .line 1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mBody:Lorg/json/JSONObject;

    const-string v5, "configurations"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_5

    .line 2
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pcscf_address_list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    instance-of v5, v2, Lorg/json/JSONArray;

    if-eqz v5, :cond_0

    .line 6
    check-cast v2, Lorg/json/JSONArray;

    const/4 v5, 0x0

    .line 7
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 8
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 9
    iget-object v7, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mPcscfServerUrlList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_0
    instance-of v5, v2, Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    .line 11
    check-cast v2, Lorg/json/JSONObject;

    .line 12
    iget-object v5, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mPcscfServerUrlList:Ljava/util/List;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mEntitlementServerUri:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, "esAddr is null"

    .line 16
    invoke-static {v3, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_3
    :goto_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 18
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mNmsServerUri:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v0, "nmsAddr is null"

    .line 20
    invoke-static {v3, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "configurations is null"

    .line 21
    invoke-static {v3, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private parseEs()V
    .locals 4

    const-string v0, "mdec/HttpResponseResult"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mBody:Lorg/json/JSONObject;

    const-string v2, "entitlement_server_address"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mEntitlementServerUri:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "esAddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mEntitlementServerUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspectorForUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private parseLineInfo()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mBody:Lorg/json/JSONObject;

    const-string v1, "line"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mdec/HttpResponseResult"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lines: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 7
    iget-object v3, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mLineInfoList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getLineInfoFromJson(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 9
    check-cast v0, Lorg/json/JSONObject;

    .line 10
    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mLineInfoList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getLineInfoFromJson(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private parseLocalAcs()V
    .locals 4

    const-string v0, "mdec/HttpResponseResult"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mBody:Lorg/json/JSONObject;

    const-string v2, "local_acs_address"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mLocalAcsUri:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localAcsAddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mLocalAcsUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspectorForUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private parseProvisionedInfo()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mBody:Lorg/json/JSONObject;

    const-string v1, "provisioned_devices"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 6
    iget-object v3, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mProvisionedDeviceList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getProvisionedDeviceInfoFromJson(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Lorg/json/JSONObject;

    .line 9
    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mProvisionedDeviceList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getProvisionedDeviceInfoFromJson(Lorg/json/JSONObject;)Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private parseSaMcc()V
    .locals 4

    const-string v0, "mdec/HttpResponseResult"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mBody:Lorg/json/JSONObject;

    const-string v2, "sa_mcc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverMccStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Lcom/samsung/android/mdecservice/entitlement/EntitlementConfig;->setServerMcc(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "saMcc is null"

    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private parseXml()V
    .locals 13

    const-string v0, "name"

    .line 1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mDataString:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "characteristic"

    .line 3
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "mdec/HttpResponseResult"

    if-eqz v1, :cond_6

    const/4 v3, 0x0

    move v4, v3

    .line 4
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 5
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    const-string v6, "type"

    .line 6
    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "APPLICATION"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "parm"

    .line 7
    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    if-eqz v5, :cond_4

    move v6, v3

    .line 8
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 9
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 10
    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "P-CSCF_Address"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "pscsf value is null"

    const-string v10, "value"

    const/4 v11, 0x1

    if-nez v8, :cond_1

    .line 11
    :try_start_2
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 12
    iput-boolean v11, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mResult:Z

    goto :goto_2

    .line 13
    :cond_0
    invoke-static {v2, v9}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_1
    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "NMS_Address"

    invoke-virtual {v8, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 15
    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 16
    iput-object v7, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mNmsServerUri:Ljava/lang/String;

    .line 17
    iput-boolean v11, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mResult:Z

    goto :goto_2

    .line 18
    :cond_2
    invoke-static {v2, v9}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const-string v5, "subNodeList is null"

    .line 19
    invoke-static {v2, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    const-string v0, "rootNodeList is null"

    .line 20
    invoke-static {v2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 21
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public getDeviceInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mLineInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;

    .line 2
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->getMdecDeviceList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getEntitlementServerUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mEntitlementServerUri:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAcsUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mLocalAcsUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMdecLineInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mLineInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getNmsServerUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mNmsServerUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPcscfServerUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mPcscfServerUrlList:Ljava/util/List;

    return-object v0
.end method

.method public getProvisionedDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mProvisionedDeviceList:Ljava/util/List;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mResponseCode:I

    return v0
.end method

.method public getResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mResult:Z

    return v0
.end method

.method public parseJsonArray()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mDataString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mBody:Lorg/json/JSONObject;

    const-string v1, "response"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mResult:Z

    const-string v1, "reason"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mReason:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mBody:Lorg/json/JSONObject;

    const-string v1, "entitlement_server_address"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->parseEs()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mBody:Lorg/json/JSONObject;

    const-string v1, "local_acs_address"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->parseLocalAcs()V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mBody:Lorg/json/JSONObject;

    const-string v1, "sa_mcc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->parseSaMcc()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mBody:Lorg/json/JSONObject;

    const-string v1, "configurations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->parseConfiguration()V

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mBody:Lorg/json/JSONObject;

    const-string v1, "line"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->parseLineInfo()V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->mBody:Lorg/json/JSONObject;

    const-string v1, "provisioned_devices"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->parseProvisionedInfo()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mdec/HttpResponseResult"

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
