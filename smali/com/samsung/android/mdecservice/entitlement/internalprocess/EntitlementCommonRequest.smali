.class public Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;
.super Ljava/lang/Object;
.source "EntitlementCommonRequest.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static final THREAD_TIMEOUT_VALUE:I = 0x3a98

.field private static isSuccessGetProvisionedFromAll:Z

.field private static isSuccessGetUserInfoFromAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->isSuccessGetUserInfoFromAll:Z

    .line 3
    sput-boolean v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->isSuccessGetProvisionedFromAll:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->isSuccessGetUserInfoFromAll:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->isSuccessGetProvisionedFromAll:Z

    return p0
.end method

.method public static doGetAllInformation(Landroid/content/Context;Landroid/os/ResultReceiver;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest$1;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest$2;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x3a98

    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 11
    :cond_1
    :goto_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 12
    sget-boolean v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->isSuccessGetUserInfoFromAll:Z

    const-string v1, "errorCode"

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->isSuccessGetProvisionedFromAll:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x7c

    .line 14
    invoke-virtual {p1, v0, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    const/16 v0, 0xd

    .line 15
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x7d

    .line 16
    invoke-virtual {p1, v0, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_2
    return-void
.end method

.method public static getDeviceConfiguration(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    const-string v1, "saInfo is null"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3
    :cond_0
    new-instance v3, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetDeviceConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetDeviceConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetDeviceConfiguration;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getDeviceConfiguration response is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v3

    const/16 v4, 0x193

    if-ne v3, v4, :cond_4

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string v3, "(403)first authentication is failed"

    invoke-static {v0, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->retryGetSaProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 11
    :cond_2
    new-instance v1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetDeviceConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetDeviceConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetDeviceConfiguration;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v0

    if-nez v0, :cond_4

    .line 13
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Http response is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 14
    :cond_3
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SA Retry finished"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 15
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResult()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_b

    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getNmsServerUri()Ljava/lang/String;

    move-result-object v1

    .line 17
    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nmsUri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspectorForUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getPcscfServerUrlList()Ljava/util/List;

    move-result-object v0

    .line 19
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 21
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, " "

    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pcscfUrlList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v3

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    if-nez v2, :cond_8

    if-eqz v4, :cond_7

    goto :goto_1

    .line 28
    :cond_7
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string p1, "all server uri is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 29
    :cond_8
    :goto_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "LINE_ID"

    .line 30
    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_9

    const-string p1, "NMS_URI"

    .line 31
    invoke-virtual {v5, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v4, :cond_a

    const-string p1, "PCSCF_URI"

    .line 32
    invoke-virtual {v5, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$MultiServers;->TABLE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v5, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_c

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$MultiServers;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    .line 35
    :cond_b
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result p0

    const/16 p1, 0x194

    if-ne p0, p1, :cond_d

    :cond_c
    :goto_2
    move v2, v3

    :cond_d
    return v2
.end method

.method private static getDeviceList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ContentValues;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Devices;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    return-void
.end method

.method public static getEsAddrFromLocalAcs(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetESAddress;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetESAddress;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetESAddress;->request()Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string v0, "esAddress fail"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getEntitlementServerUri()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLineList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ContentValues;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Lines;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    return-void
.end method

.method public static getProvisionedDevice(Landroid/content/Context;ZLandroid/os/ResultReceiver;)Z
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, v2, v1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendGetProvisionedDeviceCallback(ZZILandroid/os/ResultReceiver;)V

    return v2

    .line 3
    :cond_0
    new-instance v3, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetProvisionedDeviceList;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetProvisionedDeviceList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetProvisionedDeviceList;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v3

    const/4 v4, 0x4

    if-nez v3, :cond_1

    .line 5
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Http response is null"

    invoke-static {v3, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v3, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetProvisionedDeviceList;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetProvisionedDeviceList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v6, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetProvisionedDeviceList;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v3

    if-nez v3, :cond_1

    .line 8
    invoke-static {p1, v2, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendGetProvisionedDeviceCallback(ZZILandroid/os/ResultReceiver;)V

    return v2

    .line 9
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v0

    const/16 v5, 0x193

    if-ne v0, v5, :cond_4

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string v3, "first authentication is failed"

    invoke-static {v0, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->retryGetSaProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 13
    invoke-static {p1, v2, v1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendGetProvisionedDeviceCallback(ZZILandroid/os/ResultReceiver;)V

    return v2

    .line 14
    :cond_2
    new-instance v1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetProvisionedDeviceList;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetProvisionedDeviceList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v5, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetProvisionedDeviceList;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v3

    if-nez v3, :cond_4

    .line 16
    invoke-static {p1, v2, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendGetProvisionedDeviceCallback(ZZILandroid/os/ResultReceiver;)V

    return v2

    :cond_3
    const/4 p0, 0x5

    .line 17
    invoke-static {p1, v2, p0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendGetProvisionedDeviceCallback(ZZILandroid/os/ResultReceiver;)V

    return v2

    .line 18
    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_7

    .line 20
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$ProvisionedDevices;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is occured: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_1
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getProvisionedDeviceList()Ljava/util/List;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$ProvisionedDevices;->TABLE_URI:Landroid/net/Uri;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->makeContentValueFromMdecProvisionedDeviceInfo(Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    :cond_6
    const/4 p0, 0x1

    .line 25
    invoke-static {p1, p0, v2, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendGetProvisionedDeviceCallback(ZZILandroid/os/ResultReceiver;)V

    return p0

    .line 26
    :cond_7
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot connect to server : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xd

    .line 27
    invoke-static {p1, v2, p0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendGetProvisionedDeviceCallback(ZZILandroid/os/ResultReceiver;)V

    return v2
.end method

.method public static getUserInformation(Landroid/content/Context;ZLandroid/os/ResultReceiver;)Z
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 p0, 0xf

    .line 2
    invoke-static {p1, v1, p0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendGetUserInfoCallback(ZZILandroid/os/ResultReceiver;)V

    return v1

    .line 3
    :cond_0
    new-instance v2, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserInformation;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserInformation;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v2

    const/4 v3, 0x4

    if-nez v2, :cond_1

    .line 5
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Http response is null"

    invoke-static {v2, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserInformation;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v5, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserInformation;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v2

    if-nez v2, :cond_1

    .line 8
    invoke-static {p1, v1, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendGetUserInfoCallback(ZZILandroid/os/ResultReceiver;)V

    return v1

    .line 9
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v0

    const/16 v4, 0x193

    if-ne v0, v4, :cond_4

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "first authentication is failed"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->retryGetSaProcess(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_3

    .line 12
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 13
    invoke-static {p1, v1, v2, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendGetUserInfoCallback(ZZILandroid/os/ResultReceiver;)V

    return v1

    .line 14
    :cond_2
    new-instance v2, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserInformation;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v5, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserInformation;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v2

    if-nez v2, :cond_4

    .line 16
    invoke-static {p1, v1, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendGetUserInfoCallback(ZZILandroid/os/ResultReceiver;)V

    return v1

    .line 17
    :cond_3
    invoke-static {p1, v1, v2, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendGetUserInfoCallback(ZZILandroid/os/ResultReceiver;)V

    return v1

    .line 18
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v0

    const/16 v3, 0x194

    const/16 v4, 0xd

    if-ne v0, v3, :cond_5

    .line 19
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getUserInformation success flag change true : not exist data"

    invoke-static {v0, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$MultiServers;->TABLE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception is occured: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_5
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_9

    .line 23
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getMdecLineInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;

    .line 26
    invoke-static {v5}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->makeContentValueFromMdecLineInfo(Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->getLineId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->getDeviceConfiguration(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 28
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getDeviceConfiguration is false"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {p1, v1, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendGetUserInfoCallback(ZZILandroid/os/ResultReceiver;)V

    return v1

    .line 30
    :cond_7
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->getMdecDeviceList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;

    .line 31
    invoke-static {v5, v7}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->makeContentValueFromMdecDeviceInfo(Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 32
    :cond_8
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->getLineList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 33
    invoke-static {p0, v3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->getDeviceList(Landroid/content/Context;Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    .line 34
    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendGetUserInfoCallback(ZZILandroid/os/ResultReceiver;)V

    .line 35
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/samsung/android/mdecservice/mdec/api/internal/DbDataSyncService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "start_mode"

    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    return v0

    .line 38
    :cond_9
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot connect to server : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p1, v1, v4, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendGetUserInfoCallback(ZZILandroid/os/ResultReceiver;)V

    return v1
.end method

.method public static getUserLocalAcsAddrFromDefaultAcs(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getDefaultAcsAddrFromDb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    const-string v2, ""

    const-string v3, "saInfo is null"

    if-nez v0, :cond_1

    .line 4
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 5
    :cond_1
    new-instance v4, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;->request(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getLocalAcsAddress fail"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v4

    const/16 v5, 0x193

    if-ne v4, v5, :cond_4

    .line 9
    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string v5, "first authentication is failed"

    invoke-static {v4, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->retryGetSaProcess(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 12
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 13
    :cond_3
    new-instance v2, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/GetUserLocalAcsAddress;->request(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v0

    if-nez v0, :cond_4

    .line 15
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Http response is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 16
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getLocalAcsUri()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makeContentValueFromMdecDeviceInfo(Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getAuthUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUTH_UID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->getLineId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LINE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->getLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LINE_OWNER_DEVICE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEVICE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getAccountType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACCOUNT_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getModelNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MODEL_NUMBER"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEVICE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEVICE_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->isActive()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "DEVICE_ACTIVE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getApplicationData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEVICE_APPLICATION_DATA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getDeviceData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEVICE_DEVICE_DATA"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getPushType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEVICE_PUSH_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getPushToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEVICE_PUSH_TOKEN"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->isLineOwner()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IS_LINE_OWNER"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getActiveServices()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTIVE_SERVICES"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->getMsisdn()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DEVICE_PD_MSISDN"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getVersion()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CMC_VERSION"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static makeContentValueFromMdecLineInfo(Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->getLineId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LINE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->getLineName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LINE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->getImpu()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMPU"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->getLineOwnerUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OWNER_USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->getLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OWNER_DEVICE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->isActive()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "LINE_ACTIVE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->getModifiedAt()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MODIFIED_AT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->getMsisdn()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MSISDN"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static makeContentValueFromMdecProvisionedDeviceInfo(Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;)Landroid/content/ContentValues;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getAuthUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUTH_UID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LINE_ID"

    const-string v2, "provisioned"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LINE_OWNER_DEVICE_ID"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DEVICE_ID"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getAccountType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ACCOUNT_TYPE"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getModelNumber()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MODEL_NUMBER"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DEVICE_NAME"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DEVICE_TYPE"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->isActive()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "DEVICE_ACTIVE"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getApplicationData()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DEVICE_APPLICATION_DATA"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getDeviceData()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DEVICE_DEVICE_DATA"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getPushType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DEVICE_PUSH_TYPE"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getPushToken()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DEVICE_PUSH_TOKEN"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->isLineOwner()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "IS_LINE_OWNER"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getActiveServices()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DEVICE_ACTIVE_SERVICES"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DEVICE_PD_MSISDN"

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getVersion()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CMC_VERSION"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static registerPDPAgreement(Landroid/content/Context;Landroid/os/ResultReceiver;)Z
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x5

    const/16 v3, 0x7b

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v3, v2, v1, p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v4

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5
    invoke-static {v3, v2, v1, p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v4

    .line 6
    :cond_1
    new-instance v1, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RegisterPDPAgreement;

    invoke-direct {v1, p0, v5}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RegisterPDPAgreement;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RegisterPDPAgreement;->request(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 8
    invoke-static {v3, v1, v5, p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v4

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v6

    const/16 v7, 0x193

    if-ne v6, v7, :cond_5

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    const-string v6, "(403)first authentication is failed"

    invoke-static {v0, v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->retryGetSaProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 13
    invoke-static {v3, v2, v5, p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v4

    .line 14
    :cond_3
    new-instance v2, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RegisterPDPAgreement;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, p0, v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RegisterPDPAgreement;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RegisterPDPAgreement;->request(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v0

    if-nez v0, :cond_5

    .line 16
    invoke-static {v3, v1, v5, p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v4

    .line 17
    :cond_4
    invoke-static {v3, v2, v5, p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v4

    .line 18
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResult()Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x7a

    .line 19
    invoke-static {p0, v4, v5, p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    const/4 p0, 0x1

    return p0

    .line 20
    :cond_6
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot connect to server : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {v3, v1, v5, p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v4
.end method

.method private static sendGetProvisionedDeviceCallback(ZZILandroid/os/ResultReceiver;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendGetProvisionedDeviceCallback : result("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), reasonCode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p2}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->getErrorCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "errorCode"

    .line 5
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_1

    const/16 p1, 0x76

    goto :goto_0

    :cond_1
    const/16 p1, 0x77

    .line 6
    :goto_0
    invoke-virtual {p3, p1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method private static sendGetUserInfoCallback(ZZILandroid/os/ResultReceiver;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendGetUserInfoCallback : result("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), reasonCode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p2}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->getErrorCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "errorCode"

    .line 5
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_1

    const/16 p1, 0x70

    goto :goto_0

    :cond_1
    const/16 p1, 0x71

    .line 6
    :goto_0
    invoke-virtual {p3, p1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
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

    const-string p1, "guid"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p0, v0, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->sendToResultReceiver(ILandroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method
