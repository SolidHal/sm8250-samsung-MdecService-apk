.class public Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;
.super Ljava/lang/Object;
.source "EntitlementDeviceRequest.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDevice(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z
    .locals 11

    const-string v0, ""

    const/4 v1, 0x0

    const/16 v2, 0x69

    if-nez p1, :cond_0

    const/16 p0, 0x10

    .line 1
    invoke-static {v2, p0, v0, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    :cond_0
    const-string v3, "LINE_ID"

    .line 2
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEVICE_ID"

    .line 3
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 5
    invoke-static {v2, v6, v0, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 6
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p0, 0x2

    .line 7
    invoke-static {v2, p0, v3, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 8
    :cond_2
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->getJsonObjectFromAddDevice(Landroid/content/Context;Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p0, 0x3

    .line 9
    invoke-static {v2, p0, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 10
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    const/4 v5, 0x5

    if-nez v0, :cond_4

    .line 11
    invoke-static {v2, v5, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 12
    :cond_4
    new-instance v7, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddDevice;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8, v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, p1, v8, v9, v10}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddDevice;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v7

    const/4 v8, 0x4

    if-nez v7, :cond_5

    .line 14
    sget-object v7, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Http response is null"

    invoke-static {v7, v9}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v7, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddDevice;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v9, v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p1, v9, v10, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddDevice;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v7

    if-nez v7, :cond_5

    .line 17
    invoke-static {v2, v8, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 18
    :cond_5
    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v0

    const/16 v9, 0x193

    if-ne v0, v9, :cond_8

    .line 19
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    const-string v7, "(403)first authentication is failed"

    invoke-static {v0, v7}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->retryGetSaProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    if-nez v0, :cond_6

    .line 22
    invoke-static {v2, v5, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 23
    :cond_6
    new-instance v5, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddDevice;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v7, v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p1, p0, v7, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddDevice;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v7

    if-nez v7, :cond_8

    .line 25
    invoke-static {v2, v8, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 26
    :cond_7
    invoke-static {v2, v5, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 27
    :cond_8
    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResult()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x68

    .line 28
    invoke-static {p0, v1, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v6

    .line 29
    :cond_9
    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result p0

    const/16 p1, 0x196

    if-ne p0, p1, :cond_a

    const/16 p0, 0x9

    .line 30
    invoke-static {v2, p0, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 31
    :cond_a
    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result p0

    const/16 p1, 0x199

    if-ne p0, p1, :cond_b

    const/4 p0, 0x7

    .line 32
    invoke-static {v2, p0, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 33
    :cond_b
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot connect to server : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xd

    .line 34
    invoke-static {v2, p0, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    :goto_0
    return v1
.end method

.method private static getJsonObjectFromAddDevice(Landroid/content/Context;Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    const-string p1, "contentValues is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->makeJsonObjForAddDevice(Landroid/content/Context;Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static getJsonObjectFromUpdateDeviceInfo(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    const-string v0, "contentValues is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->makeJsonObjForUpdateDeviceInfo(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static isExistSameUpdateDeviceData(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 p2, 0x1

    aput-object p3, v5, p2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Devices;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "LINE_ID=? and DEVICE_ID=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    if-nez p3, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    const-string p1, "cursor is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    .line 3
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, p2, :cond_1

    .line 4
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    const-string p1, "cursor count less than 1"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return p2

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "DEVICE_NAME"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    const-string v2, "APPLICATION_DATA"

    .line 9
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    const-string v4, "ACTIVE_SERVICES"

    .line 11
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 12
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    :cond_4
    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newAuthUid("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), newDeviceName("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), newActiveServices("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), newAppData("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_5
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 15
    invoke-static {p3, p0, v1, v2, v3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->isNeedUpdateGeneralData(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {p3, p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->isNeedUpdateDeviceData(Landroid/database/Cursor;Landroid/content/ContentValues;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_5

    :cond_6
    move v0, p2

    goto :goto_2

    :catch_0
    move-exception p0

    .line 16
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isExistSameUpdateDeviceData exception : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_7
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method private static isNeedUpdateDeviceData(Landroid/database/Cursor;Landroid/content/ContentValues;)Z
    .locals 4

    const-string v0, "DEVICE_DEVICE_DATA"

    .line 1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->getJsonObjectFromDeviceData(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storedDeviceData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newDeviceData("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNeedUpdateGeneralData(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "AUTH_UID"

    .line 1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_NAME"

    .line 2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEVICE_APPLICATION_DATA"

    .line 3
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTIVE_SERVICES"

    .line 4
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storedAuthUid("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), storedDeviceName("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") storedActiveServices("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), storedAppData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newAuthUid("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), newDeviceName("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") newActiveServices("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), newAppData("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    const-string p1, "need update(newAuthUid is not null)"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    const-string p1, "need update(newDeviceName is not null)"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    if-eqz p3, :cond_2

    .line 11
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    const-string p1, "need update(newAppData is not null)"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    if-eqz p4, :cond_3

    .line 13
    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 14
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    const-string p1, "need update(newActiveServices is not null)"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static removeDevice(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z
    .locals 10

    const-string v0, ""

    const/4 v1, 0x0

    const/16 v2, 0x6b

    if-nez p1, :cond_0

    const/16 p0, 0x10

    .line 1
    invoke-static {v2, p0, v0, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    :cond_0
    const-string v3, "LINE_ID"

    .line 2
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEVICE_ID"

    .line 3
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 5
    invoke-static {v2, v5, v0, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 6
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p0, 0x2

    .line 7
    invoke-static {v2, p0, v3, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    const/4 v4, 0x5

    if-nez v0, :cond_3

    .line 9
    invoke-static {v2, v4, v3, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 10
    :cond_3
    new-instance v6, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveDevice;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, v3, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveDevice;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v6

    const/4 v7, 0x4

    if-nez v6, :cond_4

    .line 12
    sget-object v6, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Http response is null"

    invoke-static {v6, v8}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v6, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveDevice;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v8, v3, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v8, v9, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveDevice;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v6

    if-nez v6, :cond_4

    .line 15
    invoke-static {v2, v7, v3, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 16
    :cond_4
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v0

    const/16 v8, 0x193

    if-ne v0, v8, :cond_7

    .line 17
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    const-string v6, "(403)first authentication is failed"

    invoke-static {v0, v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->retryGetSaProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    if-nez v0, :cond_5

    .line 20
    invoke-static {v2, v4, v3, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 21
    :cond_5
    new-instance v4, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveDevice;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v6, v3, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p0, v6, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveDevice;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v6

    if-nez v6, :cond_7

    .line 23
    invoke-static {v2, v7, v3, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 24
    :cond_6
    invoke-static {v2, v4, v3, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 25
    :cond_7
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResult()Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x6a

    .line 26
    invoke-static {p0, v1, v3, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v5

    .line 27
    :cond_8
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result p0

    const/16 v0, 0x194

    if-ne p0, v0, :cond_9

    const/16 p0, 0xb

    .line 28
    invoke-static {v2, p0, v3, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 29
    :cond_9
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot connect to server : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xd

    .line 30
    invoke-static {v2, p0, v3, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    :goto_0
    return v1
.end method

.method private static sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    const-string p1, "lineId"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "deviceId"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-static {p0, v0, p4}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->sendToResultReceiver(ILandroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public static updateDeviceInformation(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z
    .locals 11

    const-string v0, ""

    const/16 v1, 0x6f

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/16 p0, 0x10

    .line 1
    invoke-static {v1, p0, v0, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v2

    :cond_0
    const-string v3, "LINE_ID"

    .line 2
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEVICE_ID"

    .line 3
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 5
    invoke-static {v1, v6, v0, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v2

    .line 6
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p0, 0x2

    .line 7
    invoke-static {v1, p0, v3, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v2

    .line 8
    :cond_2
    invoke-static {p0, p1, v3, v4}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->isExistSameUpdateDeviceData(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 p0, 0xe

    .line 9
    invoke-static {v1, p0, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v2

    .line 10
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->getJsonObjectFromUpdateDeviceInfo(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p0, 0x3

    .line 11
    invoke-static {v1, p0, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v2

    .line 12
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    const/4 v5, 0x5

    if-nez v0, :cond_5

    .line 13
    invoke-static {v1, v5, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v2

    .line 14
    :cond_5
    new-instance v7, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateDeviceInformation;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8, v3, v4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateDeviceInformation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, p1, v8, v9, v10}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateDeviceInformation;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v7

    const/4 v8, 0x4

    if-nez v7, :cond_6

    .line 16
    sget-object v7, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Http response is null"

    invoke-static {v7, v9}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v7, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateDeviceInformation;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v9, v3, v4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateDeviceInformation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p1, v9, v10, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateDeviceInformation;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v7

    if-nez v7, :cond_6

    .line 19
    invoke-static {v1, v8, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v2

    .line 20
    :cond_6
    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v0

    const/16 v9, 0x193

    if-ne v0, v9, :cond_9

    .line 21
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    const-string v7, "(403)first authentication is failed"

    invoke-static {v0, v7}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->retryGetSaProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    if-nez v0, :cond_7

    .line 24
    invoke-static {v1, v5, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v2

    .line 25
    :cond_7
    new-instance v5, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateDeviceInformation;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v7, v3, v4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateDeviceInformation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p1, p0, v7, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateDeviceInformation;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v7

    if-nez v7, :cond_9

    .line 27
    invoke-static {v1, v8, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v2

    .line 28
    :cond_8
    invoke-static {v1, v5, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v2

    .line 29
    :cond_9
    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResult()Z

    move-result p0

    if-eqz p0, :cond_a

    const/16 p0, 0x6e

    .line 30
    invoke-static {p0, v2, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v6

    .line 31
    :cond_a
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot connect to server : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xd

    .line 32
    invoke-static {v1, p0, v3, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->sendToResultReceiverInternal(IILjava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return v2
.end method
