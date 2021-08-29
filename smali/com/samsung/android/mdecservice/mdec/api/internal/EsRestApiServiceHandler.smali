.class public Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;
.super Landroid/app/IntentService;
.source "EsRestApiServiceHandler.java"


# static fields
.field protected static final CHANGE_PD:I = 0x0

.field protected static final CUR_MSISDN:Ljava/lang/String; = "cur_msisdn"

.field protected static final DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field protected static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field protected static final IS_NEED_CALLBACK:Ljava/lang/String; = "is_need_callback"

.field protected static final JOIN_MODE:Ljava/lang/String; = "join_mode"

.field public static final LOG_TAG:Ljava/lang/String;

.field protected static final MAX_TIME_OUT_VAL_SEC:I = 0xd6d8

.field protected static final NOT_CHANGE_PD:I = 0x1

.field public static final PD_ID:Ljava/lang/String; = "pd_id"

.field public static final SD_ID:Ljava/lang/String; = "sd_id"

.field protected static final SLOT_ID:Ljava/lang/String; = "slot_id"

.field protected static mAddDeviceLock:Ljava/lang/Object;

.field protected static mAddLineLock:Ljava/lang/Object;

.field protected static mAddProvisionedDeviceLock:Ljava/lang/Object;

.field private static mEntitlementResultReceiver:Landroid/os/ResultReceiver;

.field protected static mGetAllInfoLock:Ljava/lang/Object;

.field protected static mGetProvisionedDeviceLock:Ljava/lang/Object;

.field protected static mGetUserInfoLock:Ljava/lang/Object;

.field protected static mMigrateLineLock:Ljava/lang/Object;

.field protected static mRegisterPdpLock:Ljava/lang/Object;

.field protected static mRemoveDeviceLock:Ljava/lang/Object;

.field protected static mRemoveLineLock:Ljava/lang/Object;

.field protected static mRemoveProvisionedDeviceLock:Ljava/lang/Object;

.field protected static mUpdateDeviceInfoLock:Ljava/lang/Object;

.field protected static mUpdateLineInfoLock:Ljava/lang/Object;

.field private static notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;


# instance fields
.field protected pdId:Ljava/lang/String;

.field protected sdId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mGetUserInfoLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddLineLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddDeviceLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddProvisionedDeviceLock:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mGetProvisionedDeviceLock:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRemoveLineLock:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRemoveDeviceLock:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRemoveProvisionedDeviceLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mUpdateLineInfoLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mUpdateDeviceInfoLock:Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mMigrateLineLock:Ljava/lang/Object;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRegisterPdpLock:Ljava/lang/Object;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mGetAllInfoLock:Ljava/lang/Object;

    .line 15
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "EsRestApiServiceHandler"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create internal-service : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addDeviceInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 13

    .line 1
    sget-object v12, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-static/range {v1 .. v12}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->addDeviceInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;Landroid/os/ResultReceiver;)Z

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddDeviceLock:Ljava/lang/Object;

    const-wide/32 v2, 0xd6d8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object v0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static addDeviceInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 13

    .line 9
    sget-object v12, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-static/range {v1 .. v12}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->addDeviceInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/ResultReceiver;)Z

    .line 10
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 11
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddDeviceLock:Ljava/lang/Object;

    const-wide/32 v2, 0xd6d8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 14
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object v0

    :catchall_0
    move-exception v0

    .line 16
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static addLineInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 14

    .line 1
    sget-object v13, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-static/range {v1 .. v13}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->addLineInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZLcom/samsung/android/mdeccommon/obj/DeviceData;Landroid/os/ResultReceiver;)Z

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddLineLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddLineLock:Ljava/lang/Object;

    const-wide/32 v2, 0xd6d8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object v0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static addProvisionedDevicesInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 12

    .line 1
    sget-object v11, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v1 .. v11}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->addProvisionedDevicesInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;Landroid/os/ResultReceiver;)Z

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddProvisionedDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddProvisionedDeviceLock:Ljava/lang/Object;

    const-wide/32 v2, 0xd6d8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object v0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private static assignNotifyReason(ZLandroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-nez p0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    const-string v0, "errorCode"

    .line 3
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getReason(I)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static doPreProcessing(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->doPreProcessing(Landroid/content/Context;Landroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method public static getAllInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getAllInformationInternal(Landroid/content/Context;Landroid/os/ResultReceiver;)Z

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mGetAllInfoLock:Ljava/lang/Object;

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mGetAllInfoLock:Ljava/lang/Object;

    const-wide/32 v1, 0xd6d8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object p0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static getProvisionedDeviceInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getProvisionedDeviceInternal(Landroid/content/Context;Landroid/os/ResultReceiver;)Z

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mGetProvisionedDeviceLock:Ljava/lang/Object;

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mGetProvisionedDeviceLock:Ljava/lang/Object;

    const-wide/32 v1, 0xd6d8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object p0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private static getReason(I)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_PROVISIONED_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    goto :goto_0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_SECONDERY_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    goto :goto_0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_PRIMARY_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    goto :goto_0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_SECONDERY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    goto :goto_0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_PRIMARY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    goto :goto_0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    goto :goto_0

    .line 8
    :pswitch_6
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_LINE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    goto :goto_0

    .line 9
    :pswitch_7
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CANNOT_CONNECT_TO_SERVER:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getUserInfomationInternal(Landroid/content/Context;Landroid/os/ResultReceiver;)Z

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mGetUserInfoLock:Ljava/lang/Object;

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mGetUserInfoLock:Ljava/lang/Object;

    const-wide/32 v1, 0xd6d8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object p0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static migrateLineInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 8

    .line 1
    sget-object v7, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->migrateLineInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Z

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mMigrateLineLock:Ljava/lang/Object;

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    sput-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mMigrateLineLock:Ljava/lang/Object;

    const-wide/32 p2, 0xd6d8

    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object p0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public static onAddDevice(ZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onAddDevice"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddDeviceLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->assignNotifyReason(ZLandroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddDeviceLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onAddLine(ZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onAddLine"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddLineLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->assignNotifyReason(ZLandroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddLineLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onAddProvisionedDevice(ZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onAddProvisionedDevice"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddProvisionedDeviceLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->assignNotifyReason(ZLandroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mAddProvisionedDeviceLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onGetAllInformation(ZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onGetAllInformation"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mGetAllInfoLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->assignNotifyReason(ZLandroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mGetAllInfoLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onGetProvisionedDevice(ZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onGetProvisionedDevice"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mGetProvisionedDeviceLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->assignNotifyReason(ZLandroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mGetProvisionedDeviceLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onGetUserInformation(ZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onGetUserInformation"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mGetUserInfoLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->assignNotifyReason(ZLandroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mGetUserInfoLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onMigrateLine(ZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMigrateLine"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mMigrateLineLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->assignNotifyReason(ZLandroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mMigrateLineLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onRemoveDevice(ZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRemoveDevice"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRemoveDeviceLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->assignNotifyReason(ZLandroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRemoveDeviceLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onRemoveLine(ZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRemoveLine"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRemoveLineLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->assignNotifyReason(ZLandroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRemoveLineLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onRemoveProvisionedDevice(ZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRemoveProvisionedDevice"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRemoveProvisionedDeviceLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->assignNotifyReason(ZLandroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRemoveProvisionedDeviceLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onUpdateDeviceInfo(ZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onUpdateDeviceInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mUpdateDeviceInfoLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->assignNotifyReason(ZLandroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mUpdateDeviceInfoLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onUpdateLineInfo(ZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onUpdateLineInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mUpdateLineInfoLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->assignNotifyReason(ZLandroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mUpdateLineInfoLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static onUpdatePDPAgreement(ZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onUpdatePDPAgreement"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRegisterPdpLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->assignNotifyReason(ZLandroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRegisterPdpLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static registerPdpInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->registerPdpAgreementInternal(Landroid/content/Context;Landroid/os/ResultReceiver;)Z

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRegisterPdpLock:Ljava/lang/Object;

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRegisterPdpLock:Ljava/lang/Object;

    const-wide/32 v1, 0xd6d8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object p0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static removeDeviceInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->removeDeviceInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Z

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRemoveDeviceLock:Ljava/lang/Object;

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    sput-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRemoveDeviceLock:Ljava/lang/Object;

    const-wide/32 v0, 0xd6d8

    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object p0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public static removeLineInternal(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->removeLineInternal(Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;)Z

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRemoveLineLock:Ljava/lang/Object;

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    sput-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRemoveLineLock:Ljava/lang/Object;

    const-wide/32 v0, 0xd6d8

    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object p0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public static removeProvisionedDevicesInternal(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->removeProvisionedDevicesInternal(Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;)Z

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRemoveProvisionedDeviceLock:Ljava/lang/Object;

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    sput-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mRemoveProvisionedDeviceLock:Ljava/lang/Object;

    const-wide/32 v0, 0xd6d8

    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object p0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public static updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 16

    .line 1
    sget-object v15, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    invoke-static/range {v1 .. v15}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;Landroid/os/ResultReceiver;)Z

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mUpdateDeviceInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mUpdateDeviceInfoLock:Ljava/lang/Object;

    const-wide/32 v2, 0xd6d8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object v0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static updateLineInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->updateLineInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Z

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mUpdateLineInfoLock:Ljava/lang/Object;

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    sput-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->mUpdateLineInfoLock:Ljava/lang/Object;

    const-wide/32 v0, 0xd6d8

    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->notifyReason:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    return-object p0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method protected getActiveServicesFromExist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "context is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "storedDeviceId is empty"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getDeviceInfoFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_2

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "deviceInfo is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_3

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "activeServicesList is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    .line 9
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    .line 12
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method protected getInitialActiveServices(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->msglogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getPrimaryDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "pd is not exist"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    if-nez p1, :cond_1

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "pdInfo is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object p1

    if-nez p1, :cond_2

    .line 9
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "pdDeviceData is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isRespectiveControl()Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method protected makeActiveServiceString(ZLcom/samsung/android/mdeccommon/obj/DeviceData;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p1, " "

    if-eqz p2, :cond_5

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isMsgSyncSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 3
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isCallForkingSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 6
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isCallLogSyncSupported()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 10
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 11
    :cond_5
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "deviceData is null : full capability"

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_2
    return-object v1
.end method

.method protected makeActiveServiceStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeActiveServiceStringFromList"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "activeServiceList is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    .line 4
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_3

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_3
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->msglogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->msglogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 12
    :cond_5
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 16
    :cond_7
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 20
    :cond_9
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected startMdecEventHandler(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "startMdecEventHandler"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->startMdecEventHandler(Landroid/content/Context;Z)V

    return-void
.end method
