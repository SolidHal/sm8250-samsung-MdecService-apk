.class public Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;
.super Ljava/lang/Object;
.source "EntitlementUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteEntitlementProviderData(Landroid/content/Context;)Z
    .locals 3

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "context is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Lines;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Devices;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$ProvisionedDevices;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SingleServers;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$MultiServers;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static getConditionResultString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    const-string p0, "GET_SERVER_INFO_FAILED"

    goto :goto_0

    :pswitch_1
    const-string p0, "GET_SERVER_INFO_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string p0, "GET_MAC_INFO_FAILED"

    goto :goto_0

    :pswitch_3
    const-string p0, "GET_MAC_INFO_SUCCESS"

    goto :goto_0

    :pswitch_4
    const-string p0, "GET_FCM_INFO_FAILED"

    goto :goto_0

    :pswitch_5
    const-string p0, "GET_FCM_INFO_SUCCESS"

    goto :goto_0

    :pswitch_6
    const-string p0, "GET_SA_INFO_FAILED"

    goto :goto_0

    :pswitch_7
    const-string p0, "GET_SA_INFO_SUCCESS"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getDeviceNameByModel()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->getDeviceNameByModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorCodeString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    const-string p0, "Invalid contents value"

    goto :goto_0

    :pswitch_1
    const-string p0, "Invalid guid"

    goto :goto_0

    :pswitch_2
    const-string p0, "Already exist same data"

    goto :goto_0

    :pswitch_3
    const-string p0, "Connot connect to server"

    goto :goto_0

    :pswitch_4
    const-string p0, "Not exist provisioned device"

    goto :goto_0

    :pswitch_5
    const-string p0, "Not exist device"

    goto :goto_0

    :pswitch_6
    const-string p0, "Not exist line"

    goto :goto_0

    :pswitch_7
    const-string p0, "Already has max devices"

    goto :goto_0

    :pswitch_8
    const-string p0, "Already has max lines"

    goto :goto_0

    :pswitch_9
    const-string p0, "Already exist device"

    goto :goto_0

    :pswitch_a
    const-string p0, "Already exist line"

    goto :goto_0

    :pswitch_b
    const-string p0, "Samsung Account Authentication failed"

    goto :goto_0

    :pswitch_c
    const-string p0, "Received null response from HttpRequest"

    goto :goto_0

    :pswitch_d
    const-string p0, "Invalid Json"

    goto :goto_0

    :pswitch_e
    const-string p0, "Invalid Device Id"

    goto :goto_0

    :pswitch_f
    const-string p0, "Invalid Line Id"

    goto :goto_0

    :pswitch_10
    const-string p0, "Error None"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLocalActiveServices(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "activeServicesStr is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 5
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, " "

    .line 6
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    :cond_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public static getLocalWatchActiveServiceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "appDataStr is empty"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "active_service_type"

    .line 4
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, " "

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    :cond_1
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method public static getMyLineId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    const/4 v1, 0x2

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SamsungAccount user id is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hashedDeviceId is not incorrect"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "invalid sim slot index"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNumOfSimSlot(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getNumOfSimSlot(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getRequestString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    const-string p0, "REQUEST_TYPE_GET_ALL_INFORMATION"

    goto :goto_0

    :pswitch_1
    const-string p0, "REQUEST_TYPE_PRE_PROCESSING"

    goto :goto_0

    :pswitch_2
    const-string p0, "REQUEST_TYPE_REGISTER_PDP_AGREEMENT"

    goto :goto_0

    :pswitch_3
    const-string p0, "REQUEST_TYPE_MIGRATE_LINE"

    goto :goto_0

    :pswitch_4
    const-string p0, "REQUEST_TYPE_GET_PROVISIONED_DEVICE"

    goto :goto_0

    :pswitch_5
    const-string p0, "REQUEST_TYPE_REMOVE_PROVISIONED_DEVICE"

    goto :goto_0

    :pswitch_6
    const-string p0, "REQUEST_TYPE_ADD_PROVISIONED_DEVICE"

    goto :goto_0

    :pswitch_7
    const-string p0, "REQUEST_TYPE_GET_USER_INFORMATION"

    goto :goto_0

    :pswitch_8
    const-string p0, "REQUEST_TYPE_UPDATE_DEVICE_INFO"

    goto :goto_0

    :pswitch_9
    const-string p0, "REQUEST_TYPE_UPDATE_LINE_INFO"

    goto :goto_0

    :pswitch_a
    const-string p0, "REQUEST_TYPE_REMOVE_DEVICE"

    goto :goto_0

    :pswitch_b
    const-string p0, "REQUEST_TYPE_ADD_DEVICE"

    goto :goto_0

    :pswitch_c
    const-string p0, "REQUEST_TYPE_REMOVE_LINE"

    goto :goto_0

    :pswitch_d
    const-string p0, "REQUEST_TYPE_ADD_LINE"

    goto :goto_0

    :pswitch_e
    const-string p0, "REQUEST_TYPE_ERROR"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getResponseResultString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "RESPONSE_TYPE_GET_ALL_INFORMATION_FAILED"

    goto :goto_0

    :pswitch_1
    const-string p0, "RESPONSE_TYPE_GET_ALL_INFORMATION_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string p0, "RESPONSE_TYPE_REGISTER_PDP_AGREEMENT_FAILED"

    goto :goto_0

    :pswitch_3
    const-string p0, "RESPONSE_TYPE_REGISTER_PDP_AGREEMENT_SUCCESS"

    goto :goto_0

    :pswitch_4
    const-string p0, "RESPONSE_TYPE_MIGRATE_LINE_FAILED"

    goto :goto_0

    :pswitch_5
    const-string p0, "RESPONSE_TYPE_MIGRATE_LINE_SUCCESS"

    goto :goto_0

    :pswitch_6
    const-string p0, "RESPONSE_TYPE_GET_PROVISIONED_DEVICE_FAILED"

    goto :goto_0

    :pswitch_7
    const-string p0, "RESPONSE_TYPE_GET_PROVISIONED_DEVICE_SUCCESS"

    goto :goto_0

    :pswitch_8
    const-string p0, "RESPONSE_TYPE_REMOVE_PROVISIONED_DEVICE_FAILED"

    goto :goto_0

    :pswitch_9
    const-string p0, "RESPONSE_TYPE_REMOVE_PROVISIONED_DEVICE_SUCCESS"

    goto :goto_0

    :pswitch_a
    const-string p0, "RESPONSE_TYPE_ADD_PROVISIONED_DEVICE_FAILED"

    goto :goto_0

    :pswitch_b
    const-string p0, "RESPONSE_TYPE_ADD_PROVISIONED_DEVICE_SUCCESS"

    goto :goto_0

    :pswitch_c
    const-string p0, "RESPONSE_TYPE_GET_USER_INFORMATION_FAILED"

    goto :goto_0

    :pswitch_d
    const-string p0, "RESPONSE_TYPE_GET_USER_INFORMATION_SUCCESS"

    goto :goto_0

    :pswitch_e
    const-string p0, "RESPONSE_TYPE_UPDATE_DEVICE_INFO_FAILED"

    goto :goto_0

    :pswitch_f
    const-string p0, "RESPONSE_TYPE_UPDATE_DEVICE_INFO_SUCCESS"

    goto :goto_0

    :pswitch_10
    const-string p0, "RESPONSE_TYPE_UPDATE_LINE_INFO_FAILED"

    goto :goto_0

    :pswitch_11
    const-string p0, "RESPONSE_TYPE_UPDATE_LINE_INFO_SUCCESS"

    goto :goto_0

    :pswitch_12
    const-string p0, "RESPONSE_TYPE_REMOVE_DEVICE_FAILED"

    goto :goto_0

    :pswitch_13
    const-string p0, "RESPONSE_TYPE_REMOVE_DEVICE_SUCCESS"

    goto :goto_0

    :pswitch_14
    const-string p0, "RESPONSE_TYPE_ADD_DEVICE_FAILED"

    goto :goto_0

    :pswitch_15
    const-string p0, "RESPONSE_TYPE_ADD_DEVICE_SUCCESS"

    goto :goto_0

    :pswitch_16
    const-string p0, "RESPONSE_TYPE_REMOVE_LINE_FAILED"

    goto :goto_0

    :pswitch_17
    const-string p0, "RESPONSE_TYPE_REMOVE_LINE_SUCCESS"

    goto :goto_0

    :pswitch_18
    const-string p0, "RESPONSE_TYPE_ADD_LINE_FAILED"

    goto :goto_0

    :pswitch_19
    const-string p0, "RESPONSE_TYPE_ADD_LINE_SUCCESS"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSIMMcc(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getSIMMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSIMOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getSIMOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isRemoteConnectionOnGear(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProviderContract$Gears;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "ENABLE"

    .line 4
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 5
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remoteConnectionEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 7
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    const/4 p0, 0x1

    if-ne v1, p0, :cond_4

    move v0, p0

    :cond_4
    return v0
.end method

.method public static isSaLogined(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mContext is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v1, "com.osp.app.signin"

    .line 3
    invoke-virtual {p0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 4
    array-length p0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static registerReceiverForCurrentUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/mdeccommon/utils/SemUtils;->registerReceiverForCurrentUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendBroadcastForCurrentUser(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/mdeccommon/utils/SemUtils;->sendBroadcastForCurrentUser(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static setActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->setActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;Z)V

    return-void
.end method

.method public static setWatchEnabled(ZLandroid/content/Context;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "context is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 2
    sget-object p0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p1, p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcWatchActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/MdecBroadcastSender;->SendCMCWatchActivatedIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p1, p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcWatchActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/MdecBroadcastSender;->SendCMCWatchDectivatedIntent(Landroid/content/Context;)V

    .line 6
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->printSettingsDbLogs(Landroid/content/Context;)V

    return-void
.end method

.method public static startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInternalService :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "context is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p3, :cond_1

    .line 3
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "receiver is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 4
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "TYPE"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "VALUE"

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "receiver"

    .line 7
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/utils/SemUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static storeDumpLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->storeDumpLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateDefaultAcs(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DefaultAcs;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "defaultAcsCursor is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x1

    .line 4
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 5
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultAcsCursorCountNum : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "DEFAULT_ACS"

    const/4 v4, 0x0

    if-ne v2, v0, :cond_2

    .line 6
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 7
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DefaultAcs;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 10
    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    const-string v5, "phase2:"

    invoke-static {v4, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "acs.samsungmdec.com"

    .line 11
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DefaultAcs;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 13
    :cond_4
    :goto_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultAcsAddrInDb : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspectorForUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 14
    :try_start_2
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error is occurred"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 17
    throw p0
.end method
