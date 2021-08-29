.class public Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;
.super Ljava/lang/Object;
.source "EntitlementJsonMake.java"


# static fields
.field public static final DEVICE_DATA_READ_PERMISSION:I

.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJsonObjectFromDeviceData(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string v1, "contentValues is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->makeJsonForGeneralInfo(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "general_info"

    .line 4
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->makeJsonForGeneralInfo(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->makeJsonForDeviceProperty(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "device_property"

    .line 6
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->makeJsonForCmcPolicy(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "cmc_policy"

    .line 8
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->makeJsonForCmcCapability(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "cmc_capability"

    .line 10
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->makeJsonForCmcState(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "cmc_state"

    .line 12
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_5
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->makeJsonForWatchApplicationData(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_6

    const-string v2, "watch_application_data"

    .line 14
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object v1

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method private static insertActiveServicesIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "ACTIVE_SERVICES"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceTypes("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " "

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 7
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p0, "active_services"

    .line 8
    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 10
    :cond_1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "serviceTypes is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static insertAddProvisionedDeviceToLineIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "ADD_PROVISIONED_DEVICE_TO_LINE"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "add_provisioned_device_to_line"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static insertApplicationDataIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "APPLICATION_DATA"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "application_data"

    .line 4
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "appData is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static insertDeviceActiveIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "DEVICE_ACTIVE"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "active"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static insertDeviceDataIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "DEVICE_DATA_STR_TYPE"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "device_data"

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DEVICE_DATA_STR"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->getJsonObjectFromDeviceData(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 9
    :cond_1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "deviceData is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isDeviceDataStr is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static insertDeviceIdIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "DEVICE_ID"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "deviceId is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "device_id"

    .line 5
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 7
    :cond_1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "deviceId is not exist"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static insertDeviceNameIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "DEVICE_NAME"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "device_name"

    .line 4
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "deviceName is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static insertDeviceTypeIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "DEVICE_TYPE"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "device_type"

    .line 4
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "deviceType is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static insertDeviceVersionIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "CMC_VERSION"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "cmc_version"

    .line 4
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "version is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static insertIncludeDeviceCountingIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "INCLUDE_DEVICE_COUNTING"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "include_device_counting"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static insertLineActiveIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "LINE_ACTIVE"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "line_active"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static insertLineMsisdnIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "MSISDN"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msisdn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "msisdn"

    .line 4
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "msisdn is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static insertLineNameIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "LINE_NAME"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lineName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "line_name"

    .line 4
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "lineName is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static insertLineOwnerDeviceIdIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "LINE_OWNER_DEVICE_ID"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lineOwnerDeviceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "line_owner_device_id"

    .line 4
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "lineOwnerDeviceId is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static insertMigrateSourceLineIdIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "MIGRATE_SOURCE_LINE_ID"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srcLineId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "migration_source_line_id"

    .line 4
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "srcLineId is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static insertMigrateSourceLineVersionIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "MIGRATE_SOURCE_LINE_VERSION"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srcLineVer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "migration_source_line_version"

    .line 4
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "srcLineVer is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static insertMigrateTargetLineVersionIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "MIGRATE_TARGET_LINE_VERSION"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "targetLineVer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "migration_target_line_version"

    .line 4
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "targetLineVer is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static insertModelNumberIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "DEVICE_MODEL"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceModel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "model_number"

    .line 7
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 9
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "deviceModel is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static insertModelNumberIntoJson(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->getDeviceNameByModel()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "model_number"

    .line 2
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static insertPushTokenIntoJson(Landroid/content/Context;Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "DEVICE_PUSH_TOKEN"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getFcmPushToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "pushToken is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_0
    const-string p1, "push_token"

    .line 6
    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static insertPushTokenIntoJsonForUpdate(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "DEVICE_PUSH_TOKEN"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "push_token"

    .line 4
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "token is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static insertPushTypeIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "DEVICE_PUSH_TYPE"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "gcm"

    if-eqz p0, :cond_0

    .line 3
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "spp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object p0, v0

    :cond_1
    :try_start_0
    const-string v0, "push_type"

    .line 5
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static insertRemanentDevicesIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "REMANENT_DEVICES"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remanentDevices : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ";"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5
    array-length v0, p0

    if-lez v0, :cond_2

    .line 6
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 8
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p0, "remanent_devices"

    .line 9
    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 11
    :cond_1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "remanentDevices is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static insertRemoveConditionIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "REMOVE_CONDITION"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "remove_condition"

    .line 4
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->LOG_TAG:Ljava/lang/String;

    const-string p1, "removeCondition is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static insertRemoveMigrateSourceLineIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "REMOVE_MIGRATE_SOURCE_LINE"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "remove_migration_source_line"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static makeJsonForCmcCapability(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 9

    const-string v0, "DEVICE_DATA_SUPPORT_CALL_FORKING"

    const-string v1, "DEVICE_DATA_SUPPORT_CALL_LOG_SYNC"

    const-string v2, "DEVICE_DATA_SUPPORT_MSG_SYNC"

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const-string v6, "access_type"

    const-string v7, "supported"

    if-eqz v4, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "message_sync"

    .line 7
    invoke-virtual {v2, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 8
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v4, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v1

    :cond_1
    const-string v1, "call_log_sync"

    .line 14
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, v7, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-nez v2, :cond_3

    .line 20
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, p0

    :cond_3
    const-string p0, "call_forking"

    .line 21
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-eqz v2, :cond_5

    .line 22
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "cmc_service_type"

    .line 23
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, p0

    :cond_5
    return-object v3

    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v3
.end method

.method public static makeJsonForCmcPolicy(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 13

    const-string v0, "DEVICE_DATA_RESPECTIVE_CONTROL"

    const-string v1, "DEVICE_DATA_NATIVE_ACTIVITY_NAME"

    const-string v2, "DEVICE_DATA_NATIVE_PACKAGE_NAME"

    const-string v3, "DEVICE_DATA_ACTIVATION_CONTROL"

    const-string v4, "DEVICE_DATA_REMOVE_CONTROL"

    const-string v5, "DEVICE_DATA_MIGRATE_DEVICE"

    const/4 v6, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "value"

    const/4 v9, 0x0

    const-string v10, "access_type"

    if-eqz v7, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    move-object v7, v6

    .line 6
    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 8
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 9
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v5, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    move-object v5, v6

    .line 11
    :goto_1
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 13
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 14
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v4, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    move-object v4, v6

    .line 16
    :goto_2
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, ""

    if-eqz v3, :cond_3

    .line 17
    :try_start_2
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v11

    .line 18
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 19
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "package_name"

    .line 20
    invoke-virtual {v3, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_4
    move-object v3, v6

    .line 21
    :goto_4
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 23
    :cond_5
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    if-nez v3, :cond_6

    .line 24
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v1

    :cond_6
    const-string v1, "activity_name"

    .line 25
    invoke-virtual {v3, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    if-eqz v3, :cond_8

    .line 26
    invoke-virtual {v3, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    :cond_8
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, v8, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 31
    invoke-virtual {v0, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_5

    :cond_9
    move-object v0, v6

    :goto_5
    if-nez v7, :cond_b

    if-nez v5, :cond_b

    if-nez v4, :cond_b

    if-nez v3, :cond_b

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    move-object p0, v6

    goto :goto_7

    .line 32
    :cond_b
    :goto_6
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :goto_7
    if-eqz v7, :cond_c

    const-string v1, "migrate_device"

    .line 33
    invoke-virtual {p0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    if-eqz v5, :cond_d

    const-string v1, "remove_control"

    .line 34
    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    if-eqz v4, :cond_e

    const-string v1, "activation_control"

    .line 35
    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    if-eqz v3, :cond_f

    const-string v1, "native_app_info"

    .line 36
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    if-eqz v0, :cond_10

    const-string v1, "respective_control"

    .line 37
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_10
    return-object p0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v6
.end method

.method public static makeJsonForCmcState(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 8

    const-string v0, "DEVICE_DATA_MESSAGE_ACTIVATION"

    const-string v1, "DEVICE_DATA_CALL_ACTIVATION"

    const-string v2, "DEVICE_DATA_ACTIVATION"

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "activation"

    .line 4
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 5
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    if-nez v4, :cond_2

    .line 7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    const-string v2, "call_activation"

    .line 8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_2

    :cond_3
    move v1, v6

    :goto_2
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    :cond_4
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_7

    if-nez v4, :cond_5

    .line 11
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :cond_5
    const-string v0, "message_activation"

    .line 12
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v5, v6

    :goto_3
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_7
    if-eqz v4, :cond_8

    const-string p0, "access_type"

    .line 13
    invoke-virtual {v4, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "cmc_activation_info"

    .line 15
    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    :cond_8
    return-object v3

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v3
.end method

.method public static makeJsonForDeviceProperty(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "DEVICE_DATA_IS_CELLULAR_DEVICE"

    const-string v1, "DEVICE_DATA_HASHED_BT_MAC"

    const-string v2, "DEVICE_DATA_HASHED_DEVICE_ID"

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "wifi_mac_address"

    .line 4
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 5
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v4, :cond_1

    .line 8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v4, v2

    :cond_1
    const-string v2, "bt_mac_address"

    .line 9
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_4

    if-nez v4, :cond_3

    .line 12
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    const-string v0, "is_cellular_device"

    .line 13
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v4, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    if-eqz v4, :cond_5

    const-string p0, "access_type"

    const/4 v0, 0x0

    .line 14
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "network_info"

    .line 16
    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p0

    :cond_5
    return-object v3

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v3
.end method

.method public static makeJsonForGeneralInfo(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "DEVICE_DATA_VERSION"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "version"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method public static makeJsonForWatchApplicationData(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "DEVICE_DATA_PD_BT_MAC"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pd_bt_mac_address"

    .line 5
    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "access_type"

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method public static makeJsonObjForAddDevice(Landroid/content/Context;Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "account_type"

    const-string v2, "Samsung Account"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertDeviceIdIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 4
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertDeviceNameIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 5
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertPushTypeIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 6
    invoke-static {p0, p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertPushTokenIntoJson(Landroid/content/Context;Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 7
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertApplicationDataIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 8
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertDeviceDataIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 9
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertActiveServicesIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 10
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertRemoveConditionIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 11
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertDeviceTypeIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 12
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertModelNumberIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 13
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertDeviceVersionIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 14
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertIncludeDeviceCountingIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static makeJsonObjForAddLine(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "account_type"

    const-string v2, "Samsung Account"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "line_id"

    .line 3
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertLineMsisdnIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 5
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertLineNameIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 6
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertPushTypeIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 7
    invoke-static {p0, p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertPushTokenIntoJson(Landroid/content/Context;Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 8
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertDeviceNameIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 9
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertApplicationDataIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 10
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertDeviceDataIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 11
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertActiveServicesIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 12
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertDeviceTypeIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 13
    invoke-static {v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertModelNumberIntoJson(Lorg/json/JSONObject;)V

    .line 14
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertDeviceVersionIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 15
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertMigrateSourceLineIdIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 16
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertMigrateSourceLineVersionIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 17
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertRemoveMigrateSourceLineIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 18
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertRemanentDevicesIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 19
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertIncludeDeviceCountingIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 20
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertAddProvisionedDeviceToLineIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static makeJsonObjForMigrateLine(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "account_type"

    const-string v2, "Samsung Account"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertMigrateSourceLineIdIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 4
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertMigrateSourceLineVersionIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertRemoveMigrateSourceLineIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 6
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertRemanentDevicesIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 7
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertMigrateTargetLineVersionIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static makeJsonObjForUpdateDeviceInfo(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertDeviceNameIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertDeviceActiveIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 4
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertApplicationDataIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertDeviceDataIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 6
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertActiveServicesIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 7
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertPushTypeIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 8
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertPushTokenIntoJsonForUpdate(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 9
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertDeviceVersionIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 10
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertDeviceTypeIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 11
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertIncludeDeviceCountingIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 12
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertAddProvisionedDeviceToLineIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static makeJsonObjForUpdateLineInfo(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertLineOwnerDeviceIdIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertLineActiveIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 4
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertLineNameIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->insertLineMsisdnIntoJson(Landroid/content/ContentValues;Lorg/json/JSONObject;)V

    return-object v0
.end method
