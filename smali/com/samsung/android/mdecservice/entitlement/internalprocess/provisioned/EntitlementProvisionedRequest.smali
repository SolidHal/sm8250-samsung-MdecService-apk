.class public Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;
.super Ljava/lang/Object;
.source "EntitlementProvisionedRequest.java"


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

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProvisionedDevice(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "addProvisionedDevice"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DEVICE_ID"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x73

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 p0, 0x2

    const-string p1, ""

    .line 4
    invoke-static {v2, p0, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v3

    .line 5
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->getJsonObjectFromAddProvisionedDevice(Landroid/content/Context;Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x3

    .line 6
    invoke-static {v2, p0, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v3

    .line 7
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v1

    const/4 v4, 0x5

    if-nez v1, :cond_2

    .line 8
    invoke-static {v2, v4, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v3

    .line 9
    :cond_2
    new-instance v5, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddProvisionedDevice;

    invoke-virtual {v1}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddProvisionedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, p1, v6, v7, v8}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddProvisionedDevice;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v5

    const/4 v6, 0x4

    if-nez v5, :cond_3

    .line 11
    sget-object v5, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Http response is null"

    invoke-static {v5, v7}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v5, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddProvisionedDevice;

    invoke-virtual {v1}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddProvisionedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, p1, v7, v8, v1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddProvisionedDevice;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v5

    if-nez v5, :cond_3

    .line 14
    invoke-static {v2, v6, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v3

    .line 15
    :cond_3
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v1

    const/16 v7, 0x193

    if-ne v1, v7, :cond_6

    .line 16
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->LOG_TAG:Ljava/lang/String;

    const-string v5, "(403)first authentication is failed"

    invoke-static {v1, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->retryGetSaProcess(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v1

    if-nez v1, :cond_4

    .line 19
    invoke-static {v2, v4, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v3

    .line 20
    :cond_4
    new-instance v4, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddProvisionedDevice;

    invoke-virtual {v1}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddProvisionedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p1, p0, v5, v1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddProvisionedDevice;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v5

    if-nez v5, :cond_6

    .line 22
    invoke-static {v2, v6, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v3

    .line 23
    :cond_5
    invoke-static {v2, v4, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v3

    .line 24
    :cond_6
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResult()Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x72

    .line 25
    invoke-static {p0, v3, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    const/4 p0, 0x1

    return p0

    .line 26
    :cond_7
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot connect to server : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xd

    .line 27
    invoke-static {v2, p0, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v3
.end method

.method private static getJsonObjectFromAddProvisionedDevice(Landroid/content/Context;Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->LOG_TAG:Ljava/lang/String;

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

.method public static removeProvisionedDevice(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z
    .locals 8

    const-string v0, "DEVICE_ID"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x75

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    const-string p1, ""

    .line 3
    invoke-static {v2, p0, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    const/4 v3, 0x5

    if-nez v0, :cond_1

    .line 5
    invoke-static {v2, v3, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 6
    :cond_1
    new-instance v4, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveProvisionedDevice;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveProvisionedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveProvisionedDevice;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v4

    const/4 v5, 0x4

    if-nez v4, :cond_2

    .line 8
    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Http response is null"

    invoke-static {v4, v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v4, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveProvisionedDevice;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v6, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveProvisionedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v7, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveProvisionedDevice;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v4

    if-nez v4, :cond_2

    .line 11
    invoke-static {v2, v5, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 12
    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v0

    const/16 v6, 0x193

    if-ne v0, v6, :cond_5

    .line 13
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->LOG_TAG:Ljava/lang/String;

    const-string v4, "(403)first authentication is failed"

    invoke-static {v0, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->retryGetSaProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 16
    invoke-static {v2, v3, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 17
    :cond_3
    new-instance v3, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveProvisionedDevice;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveProvisionedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v4, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveProvisionedDevice;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v4

    if-nez v4, :cond_5

    .line 19
    invoke-static {v2, v5, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 20
    :cond_4
    invoke-static {v2, v3, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 21
    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResult()Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x74

    .line 22
    invoke-static {p0, v1, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    const/4 p0, 0x1

    return p0

    .line 23
    :cond_6
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result p0

    const/16 v0, 0x194

    if-ne p0, v0, :cond_7

    const/16 p0, 0xc

    .line 24
    invoke-static {v2, p0, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 25
    :cond_7
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot connect to server : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xd

    .line 26
    invoke-static {v2, p0, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    :goto_0
    return v1
.end method

.method private static sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    const-string p1, "deviceId"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p0, v0, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->sendToResultReceiver(ILandroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method
