.class public Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;
.super Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;
.source "SetDeviceServiceMode.java"


# static fields
.field public static final DEVICE_ID:Ljava/lang/String; = "cmc_device_id"

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final SERVICE_MODE:Ljava/lang/String; = "service_mode"

.field public static final SERVICE_TYPE:Ljava/lang/String; = "service_type"

.field public static final SERVICE_TYPE_CALL:I = 0x2

.field public static final SERVICE_TYPE_MESSAGE:I = 0x1

.field public static final SERVICE_TYPE_TOTAL:I = 0x0

.field public static final SERVICE_TYPE_UNDEFINED:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SetDeviceServiceMode"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private doSetDeviceServiceProcess(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 21

    .line 1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Device Id is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 3
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    xor-int/lit8 v6, p3, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    return-void

    .line 4
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->findLineId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v1, "lineId is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 7
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    return-void

    .line 8
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v10

    .line 9
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v10, v0, :cond_2

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getUserInformation failed"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    xor-int/lit8 v11, p3, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v12, p4

    .line 11
    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    .line 12
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->doSetDeviceServiceTurnOn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v1, "active services is same"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 15
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    return-void

    .line 16
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->doSetDeviceServiceTurnOff(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v12, v0

    if-nez v12, :cond_5

    .line 17
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v1, "activeServices is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 18
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    xor-int/lit8 v6, p3, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    return-void

    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    .line 19
    invoke-static/range {v7 .. v20}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v3

    .line 20
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v3, v0, :cond_6

    .line 21
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateDeviceInformation failed"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    xor-int/lit8 v4, p3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v5, p4

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    goto :goto_0

    .line 23
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v8

    .line 24
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v8, v3, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    goto :goto_0

    .line 26
    :cond_7
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getUserInformation1 failed"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    xor-int/lit8 v9, p3, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v10, p4

    .line 27
    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    :goto_0
    return-void
.end method

.method private doSetDeviceServiceTurnOff(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getDeviceInfoFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string p2, "deviceInfo is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->parseActiveServiceArrayToStr(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "DEVICE_ID"

    .line 5
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ACTIVE_SERVICES"

    .line 6
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$RollbackActiveServices;->TABLE_URI:Landroid/net/Uri;

    const-string v4, "DEVICE_ID = ?"

    invoke-virtual {p2, v3, v1, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-ge p2, v0, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$RollbackActiveServices;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private doSetDeviceServiceTurnOn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$RollbackActiveServices;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "DEVICE_ID = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ACTIVE_SERVICES"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception v0

    .line 5
    :try_start_1
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v2, "error is occurred"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2

    :goto_2
    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 8
    :cond_2
    throw p2
.end method

.method private doSetSubDeviceServiceProcess(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v1, p2

    move/from16 v4, p3

    .line 1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Device Id is null"

    invoke-static {v0, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 3
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    xor-int/2addr v4, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v3

    move-object v3, v5

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    return-void

    .line 4
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v3

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v3, v0, :cond_1

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getUserInformation failed"

    invoke-static {v0, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    xor-int/2addr v4, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v5

    move/from16 v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    return-void

    .line 8
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->findLineId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v2, "lineId is empty"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 11
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    return-void

    .line 12
    :cond_2
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getDeviceInfoFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 13
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Device info is null"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 14
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    return-void

    .line 15
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v0

    move/from16 v5, p4

    if-ne v5, v2, :cond_4

    .line 16
    invoke-direct {v6, v1, v4, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->makeMessageServiceString(Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_4
    invoke-direct {v6, v1, v4, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->makeCallServiceString(Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v12, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    .line 18
    invoke-static/range {v7 .. v20}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v3

    .line 19
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v3, v0, :cond_5

    .line 20
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v7, "updateDeviceInformation failed"

    invoke-static {v0, v7}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    xor-int/2addr v4, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v7

    move/from16 v5, p4

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    goto :goto_1

    .line 22
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v3

    .line 23
    sget-object v7, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v3, v7, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v7

    move/from16 v4, p3

    move/from16 v5, p4

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    goto :goto_1

    .line 25
    :cond_6
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v7, "getUserInformation1 failed"

    invoke-static {v0, v7}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    xor-int/2addr v4, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v7

    move/from16 v5, p4

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    :goto_1
    return-void
.end method

.method private makeCallServiceString(Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " "

    if-eqz p3, :cond_3

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isCallForkingSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getDeviceInfoFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    .line 9
    sget-object p3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->msglogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 15
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string p2, "deviceData is null : full capability"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->msglogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private makeMessageServiceString(Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " "

    if-eqz p3, :cond_3

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isMsgSyncSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->msglogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getDeviceInfoFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    .line 9
    sget-object p3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 15
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string p2, "deviceData is null : full capability"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->msglogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p5, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object p5

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onSetSdServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object p5

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onSetSdMessageServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p5, v0, :cond_2

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object p5

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onSetSdCallServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    goto :goto_0

    .line 5
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string p2, "serviceType is invalid"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--> start service"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v0, "intent is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "cmc_device_id"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const-string v1, "service_mode"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, -0x1

    const-string v3, "service_type"

    .line 5
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 8
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v3, "context is null"

    invoke-static {p1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 9
    sget-object v4, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    xor-int/lit8 v5, v0, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    return-void

    :cond_1
    if-nez v6, :cond_2

    .line 10
    invoke-direct {p0, p1, v2, v0, v6}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->doSetDeviceServiceProcess(Landroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_1

    :cond_2
    if-eq v6, v1, :cond_4

    const/4 v3, 0x2

    if-ne v6, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 11
    sget-object v4, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    xor-int/lit8 v5, v0, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->sendCallback(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;ZI)V

    goto :goto_1

    .line 12
    :cond_4
    :goto_0
    invoke-direct {p0, p1, v2, v0, v6}, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->doSetSubDeviceServiceProcess(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 13
    :goto_1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;->LOG_TAG:Ljava/lang/String;

    const-string v0, "--> end service"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
