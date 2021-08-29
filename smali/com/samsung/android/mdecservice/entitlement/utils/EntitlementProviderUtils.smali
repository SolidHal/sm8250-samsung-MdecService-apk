.class public Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;
.super Ljava/lang/Object;
.source "EntitlementProviderUtils.java"


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

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultAcsAddrFromDb(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DefaultAcs;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0, v0, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "defaultAcsCursor is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "DEFAULT_ACS"

    .line 5
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getFcmPushToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Fcms;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fcm cursor count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FCM_PUSH_TOKEN"

    .line 4
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p0, :cond_1

    .line 5
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 6
    :try_start_1
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error is occurred"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fcmPushToken : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :goto_2
    if-eqz p0, :cond_2

    .line 9
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_2
    throw v0
.end method

.method public static getSaAccessToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "saInfo is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSaApiServerUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "saInfo is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    invoke-direct {v1}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "USER_ID"

    .line 5
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->setUserId(Ljava/lang/String;)V

    const-string v0, "ACCESS_TOKEN"

    .line 6
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->setAccessToken(Ljava/lang/String;)V

    const-string v0, "API_SERVER_URL"

    .line 7
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->setApiServerUrl(Ljava/lang/String;)V

    const-string v0, "MCC"

    .line 8
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->setMcc(Ljava/lang/String;)V

    const-string v0, "REGION_MCC"

    .line 9
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->setRegionMcc(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    .line 10
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 11
    :goto_1
    :try_start_2
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error is occurred"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_2

    .line 13
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_2
    return-object v0

    :goto_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 14
    :cond_4
    throw v0
.end method

.method public static getSaMcc(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "saInfo is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getMcc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSaUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "saInfo is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSingleServerInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SingleServers;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "singleServerCursor is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v1, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;

    invoke-direct {v1}, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "LOCAL_ACS_URI"

    .line 6
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->setLocalAcsAddr(Ljava/lang/String;)V

    const-string v0, "ES_URI"

    .line 7
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->setEsAddr(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 9
    :goto_1
    :try_start_2
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error is occurred"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_2
    return-object v0

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 12
    throw v0
.end method

.method public static setEsAddr(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "esAddr is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "ES_URI"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SingleServers;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SingleServers;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_1
    return-void
.end method

.method public static setFcmPushToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "fcmPushToken is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getFcmPushToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Fcm push token is same"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "FCM_PUSH_TOKEN"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Fcms;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Fcms;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_2
    return-void
.end method

.method public static setLocalAcsAddr(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "localAcsAddr is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "LOCAL_ACS_URI"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SingleServers;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SingleServers;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_1
    return-void
.end method

.method public static setSaAccessToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "ACCESS_TOKEN"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public static setSaApiServerUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "API_SERVER_URL"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public static setSaInfo(Landroid/content/Context;Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;)V
    .locals 3

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "context is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "saInfo is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACCESS_TOKEN"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getApiServerUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "API_SERVER_URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getMcc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MCC"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->getRegionMcc()Ljava/lang/String;

    move-result-object p1

    const-string v1, "REGION_MCC"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_2
    return-void
.end method

.method public static setSaMcc(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "MCC"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public static setSaUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "USER_ID"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    return-void
.end method
