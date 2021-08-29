.class public Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;
.super Ljava/lang/Object;
.source "EntitlementLineRequest.java"


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

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLine(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z
    .locals 10

    const-string v0, ""

    const/4 v1, 0x0

    const/16 v2, 0x65

    if-nez p1, :cond_0

    const/16 p0, 0x10

    .line 1
    invoke-static {v2, p0, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    :cond_0
    const-string v3, "LINE_ID"

    .line 2
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 4
    invoke-static {v2, v5, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 5
    :cond_1
    invoke-static {p0, p1, v3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->getJsonObjectFromAddLine(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p0, 0x3

    .line 6
    invoke-static {v2, p0, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 7
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    const/4 v4, 0x5

    if-nez v0, :cond_3

    .line 8
    invoke-static {v2, v4, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 9
    :cond_3
    new-instance v6, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddLine;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddLine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, p1, v7, v8, v9}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddLine;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v6

    const/4 v7, 0x4

    if-nez v6, :cond_4

    .line 11
    sget-object v6, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Http response is null"

    invoke-static {v6, v8}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v6, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddLine;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v8}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddLine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p1, v8, v9, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddLine;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v6

    if-nez v6, :cond_4

    .line 14
    invoke-static {v2, v7, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 15
    :cond_4
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v0

    const/16 v8, 0x193

    if-ne v0, v8, :cond_7

    .line 16
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string v6, "(403)first authentication is failed"

    invoke-static {v0, v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->retryGetSaProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    if-nez v0, :cond_5

    .line 19
    invoke-static {v2, v4, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 20
    :cond_5
    new-instance v4, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddLine;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddLine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p1, p0, v6, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/AddLine;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v6

    if-nez v6, :cond_7

    .line 22
    invoke-static {v2, v7, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 23
    :cond_6
    invoke-static {v2, v4, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 24
    :cond_7
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResult()Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x64

    .line 25
    invoke-static {p0, v1, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v5

    .line 26
    :cond_8
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result p0

    const/16 p1, 0x196

    if-ne p0, p1, :cond_9

    const/16 p0, 0x8

    .line 27
    invoke-static {v2, p0, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 28
    :cond_9
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result p0

    const/16 p1, 0x199

    if-ne p0, p1, :cond_a

    const/4 p0, 0x6

    .line 29
    invoke-static {v2, p0, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 30
    :cond_a
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot connect to server : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xd

    .line 31
    invoke-static {v2, p0, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    :goto_0
    return v1
.end method

.method private static getJsonObjectFromAddLine(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string p1, "contentValues is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string p1, "lineId is invalid"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->makeJsonObjForAddLine(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static getJsonObjectFromMigrateLine(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string v0, "contentValues is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->makeJsonObjForMigrateLine(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static getJsonObjectFromUpdateLineInfo(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string v0, "contentValues is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementJsonMake;->makeJsonObjForUpdateLineInfo(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static isExistSameUpdateLineData(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 12

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v5, v7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Lines;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "LINE_ID=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string p1, "cursor is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 3
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-ge p2, v0, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string p2, "cursor count less than 1"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :cond_1
    const-string p2, "LINE_OWNER_DEVICE_ID"

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v2

    :goto_0
    const-string v1, "LINE_NAME"

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    const-string v4, "MSISDN"

    .line 10
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    :cond_4
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newOwnerDeviceId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), newLineName("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), newMsisdn("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_5
    :goto_2
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "OWNER_DEVICE_ID"

    .line 14
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 17
    sget-object v9, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "storedOwnerDeviceId("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "), storedLineName("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "), storedMsisdn("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_3

    .line 19
    :cond_6
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string v9, "newOwnerDeviceId is null"

    invoke-static {p1, v9}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v3, :cond_8

    .line 20
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    .line 21
    :cond_8
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string v5, "newLineName is null"

    invoke-static {p1, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v2, :cond_a

    .line 22
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    .line 23
    :cond_a
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string v5, "newMsisdn is null"

    invoke-static {p1, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_b
    move v0, v7

    :goto_3
    move v7, v0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 24
    sget-object p2, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isExistSameUpdateLineData exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v7
.end method

.method public static migrateLine(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z
    .locals 10

    const-string v0, ""

    const/4 v1, 0x0

    const/16 v2, 0x79

    if-nez p1, :cond_0

    const/16 p0, 0x10

    .line 1
    invoke-static {v2, p0, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    :cond_0
    const-string v3, "LINE_ID"

    .line 2
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 4
    invoke-static {v2, v5, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->getJsonObjectFromMigrateLine(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p0, 0x3

    .line 6
    invoke-static {v2, p0, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 7
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    const/4 v4, 0x5

    if-nez v0, :cond_3

    .line 8
    invoke-static {v2, v4, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 9
    :cond_3
    new-instance v6, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, p1, v7, v8, v9}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v6

    const/4 v7, 0x4

    if-nez v6, :cond_4

    .line 11
    sget-object v6, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Http response is null"

    invoke-static {v6, v8}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v6, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v8, v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p1, v8, v9, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v6

    if-nez v6, :cond_4

    .line 14
    invoke-static {v2, v7, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 15
    :cond_4
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v0

    const/16 v8, 0x193

    if-ne v0, v8, :cond_7

    .line 16
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string v6, "(403)first authentication is failed"

    invoke-static {v0, v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->retryGetSaProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    if-nez v0, :cond_5

    .line 19
    invoke-static {v2, v4, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 20
    :cond_5
    new-instance v4, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v6, v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p1, p0, v6, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/MigrateLine;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v6

    if-nez v6, :cond_7

    .line 22
    invoke-static {v2, v7, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 23
    :cond_6
    invoke-static {v2, v4, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 24
    :cond_7
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResult()Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x78

    .line 25
    invoke-static {p0, v1, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v5

    .line 26
    :cond_8
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result p0

    const/16 p1, 0x196

    if-ne p0, p1, :cond_9

    const/16 p0, 0x8

    .line 27
    invoke-static {v2, p0, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 28
    :cond_9
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result p0

    const/16 p1, 0x199

    if-ne p0, p1, :cond_a

    const/4 p0, 0x6

    .line 29
    invoke-static {v2, p0, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 30
    :cond_a
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot connect to server : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xd

    .line 31
    invoke-static {v2, p0, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    :goto_0
    return v1
.end method

.method public static removeLine(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z
    .locals 9

    const-string v0, ""

    const/4 v1, 0x0

    const/16 v2, 0x67

    if-nez p1, :cond_0

    const/16 p0, 0x10

    .line 1
    invoke-static {v2, p0, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    :cond_0
    const-string v3, "LINE_ID"

    .line 2
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 4
    invoke-static {v2, v4, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    const/4 v3, 0x5

    if-nez v0, :cond_2

    .line 6
    invoke-static {v2, v3, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 7
    :cond_2
    new-instance v5, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v5

    const/4 v6, 0x4

    if-nez v5, :cond_3

    .line 9
    sget-object v5, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Http response is null"

    invoke-static {v5, v7}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v5, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v7, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v8, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v5

    if-nez v5, :cond_3

    .line 12
    invoke-static {v2, v6, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 13
    :cond_3
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v0

    const/16 v7, 0x193

    if-ne v0, v7, :cond_6

    .line 14
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string v5, "(403)first authentication is failed"

    invoke-static {v0, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->retryGetSaProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    if-nez v0, :cond_4

    .line 17
    invoke-static {v2, v3, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 18
    :cond_4
    new-instance v3, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v5, p1}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v5, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/RemoveLine;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v5

    if-nez v5, :cond_6

    .line 20
    invoke-static {v2, v6, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 21
    :cond_5
    invoke-static {v2, v3, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 22
    :cond_6
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResult()Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x66

    .line 23
    invoke-static {p0, v1, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v4

    .line 24
    :cond_7
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result p0

    const/16 v0, 0x194

    if-ne p0, v0, :cond_8

    const/16 p0, 0xa

    .line 25
    invoke-static {v2, p0, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 26
    :cond_8
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot connect to server : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xd

    .line 27
    invoke-static {v2, p0, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

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

    const-string p1, "lineId"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p0, v0, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->sendToResultReceiver(ILandroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public static updateLineInformation(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z
    .locals 10

    const-string v0, ""

    const/4 v1, 0x0

    const/16 v2, 0x6d

    if-nez p1, :cond_0

    const/16 p0, 0x10

    .line 1
    invoke-static {v2, p0, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    :cond_0
    const-string v3, "LINE_ID"

    .line 2
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 4
    invoke-static {v2, v5, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 5
    :cond_1
    invoke-static {p0, p1, v3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->isExistSameUpdateLineData(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 p0, 0xe

    .line 6
    invoke-static {v2, p0, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 7
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->getJsonObjectFromUpdateLineInfo(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p0, 0x3

    .line 8
    invoke-static {v2, p0, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 9
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    const/4 v4, 0x5

    if-nez v0, :cond_4

    .line 10
    invoke-static {v2, v4, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 11
    :cond_4
    new-instance v6, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateLineInformation;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateLineInformation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, p1, v7, v8, v9}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateLineInformation;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v6

    const/4 v7, 0x4

    if-nez v6, :cond_5

    .line 13
    sget-object v6, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Http response is null"

    invoke-static {v6, v8}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v6, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateLineInformation;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v8, v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateLineInformation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p1, v8, v9, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateLineInformation;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v6

    if-nez v6, :cond_5

    .line 16
    invoke-static {v2, v7, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 17
    :cond_5
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result v0

    const/16 v8, 0x193

    if-ne v0, v8, :cond_8

    .line 18
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    const-string v6, "(403)first authentication is failed"

    invoke-static {v0, v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->retryGetSaProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object v0

    if-nez v0, :cond_6

    .line 21
    invoke-static {v2, v4, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 22
    :cond_6
    new-instance v4, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateLineInformation;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v6, v3}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateLineInformation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p1, p0, v6, v0}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/UpdateLineInformation;->request(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;

    move-result-object v6

    if-nez v6, :cond_8

    .line 24
    invoke-static {v2, v7, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 25
    :cond_7
    invoke-static {v2, v4, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v1

    .line 26
    :cond_8
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResult()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x6c

    .line 27
    invoke-static {p0, v1, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    return v5

    .line 28
    :cond_9
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getResponseCode()I

    move-result p0

    const/16 p1, 0x194

    if-ne p0, p1, :cond_a

    const/16 p0, 0xa

    .line 29
    invoke-static {v2, p0, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 30
    :cond_a
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot connect to server : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/entitlement/restapiclient/HttpResponseResult;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xd

    .line 31
    invoke-static {v2, p0, v3, p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->sendToResultReceiverInternal(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    :goto_0
    return v1
.end method
