.class public Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;
.super Ljava/lang/Object;
.source "EsDbApiWrapper.java"


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

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDeviceInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;Landroid/os/ResultReceiver;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "addDeviceInternal - sdData : class"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static/range {p1 .. p9}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->doAddDeviceInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object p1

    if-eqz p10, :cond_0

    .line 3
    invoke-static {p1, p10}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->insertDeviceDataIntoCV(Landroid/content/ContentValues;Lcom/samsung/android/mdeccommon/obj/DeviceData;)Landroid/content/ContentValues;

    move-result-object p1

    :cond_0
    const/4 p2, 0x2

    .line 4
    invoke-static {p0, p2, p1, p11}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method public static addDeviceInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/ResultReceiver;)Z
    .locals 2

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "addDeviceInternal - sdData : string"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static/range {p1 .. p9}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->doAddDeviceInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object p1

    .line 7
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p3, "DEVICE_DATA_STR_TYPE"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p2, "DEVICE_DATA_STR"

    .line 9
    invoke-virtual {p1, p2, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x2

    .line 10
    invoke-static {p0, p2, p1, p11}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method public static addLineInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZLcom/samsung/android/mdeccommon/obj/DeviceData;Landroid/os/ResultReceiver;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "addLineInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "LINE_ID"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "CMC_VERSION"

    const-string v1, "2"

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Tablet"

    goto :goto_0

    :cond_0
    const-string p1, "Phone"

    :goto_0
    const-string v1, "DEVICE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string p1, "MSISDN"

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "DEVICE_NAME"

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    const-string p1, "ACTIVE_SERVICES"

    .line 8
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p5, :cond_4

    const-string p1, "MIGRATE_SOURCE_LINE_ID"

    .line 9
    invoke-virtual {v0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "REMOVE_MIGRATE_SOURCE_LINE"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_4
    if-eqz p6, :cond_5

    const-string p1, "MIGRATE_SOURCE_LINE_VERSION"

    .line 11
    invoke-virtual {v0, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p8, :cond_6

    const-string p1, "REMANENT_DEVICES"

    .line 12
    invoke-virtual {v0, p1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_6
    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "INCLUDE_DEVICE_COUNTING"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 14
    invoke-static {p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "ADD_PROVISIONED_DEVICE_TO_LINE"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p11, :cond_7

    .line 15
    invoke-static {v0, p11}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->insertDeviceDataIntoCV(Landroid/content/ContentValues;Lcom/samsung/android/mdeccommon/obj/DeviceData;)Landroid/content/ContentValues;

    move-result-object v0

    :cond_7
    const/4 p1, 0x0

    .line 16
    invoke-static {p0, p1, v0, p12}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method public static addProvisionedDevicesInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;Landroid/os/ResultReceiver;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "addProvisionedDevicesInternal - sdData : class"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "DEVICE_ID"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DEVICE_MODEL"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DEVICE_TYPE"

    .line 5
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string p1, "DEVICE_NAME"

    .line 6
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    const-string p1, "ACTIVE_SERVICES"

    .line 7
    invoke-virtual {v0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p6, :cond_2

    const-string p1, "DEVICE_PUSH_TYPE"

    .line 8
    invoke-virtual {v0, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p7, :cond_3

    const-string p1, "DEVICE_PUSH_TOKEN"

    .line 9
    invoke-virtual {v0, p1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "CMC_VERSION"

    const-string p2, "2"

    .line 10
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "INCLUDE_DEVICE_COUNTING"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p9, :cond_4

    .line 12
    invoke-static {v0, p9}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->insertDeviceDataIntoCV(Landroid/content/ContentValues;Lcom/samsung/android/mdeccommon/obj/DeviceData;)Landroid/content/ContentValues;

    move-result-object v0

    :cond_4
    const/4 p1, 0x7

    .line 13
    invoke-static {p0, p1, v0, p10}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method private static doAddDeviceInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/ContentValues;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "LINE_ID"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DEVICE_ID"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DEVICE_MODEL"

    .line 4
    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DEVICE_TYPE"

    .line 5
    invoke-virtual {v0, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string p0, "DEVICE_NAME"

    .line 6
    invoke-virtual {v0, p0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    const-string p0, "ACTIVE_SERVICES"

    .line 7
    invoke-virtual {v0, p0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p6, :cond_2

    const-string p0, "DEVICE_PUSH_TYPE"

    .line 8
    invoke-virtual {v0, p0, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p7, :cond_3

    const-string p0, "DEVICE_PUSH_TOKEN"

    .line 9
    invoke-virtual {v0, p0, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p0, "CMC_VERSION"

    const-string p1, "2"

    .line 10
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "INCLUDE_DEVICE_COUNTING"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static doPreProcessing(Landroid/content/Context;Landroid/os/ResultReceiver;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "doPreProcessing"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method public static findLineId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getPrimaryDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAllInformationInternal(Landroid/content/Context;Landroid/os/ResultReceiver;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getAllInfomationInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method private static getDeviceCategory(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->tablet:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->phone:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    goto :goto_0

    :cond_1
    const-string v0, "Phone"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->phone:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    goto :goto_0

    :cond_2
    const-string v0, "Tablet"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->tablet:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    goto :goto_0

    :cond_3
    const-string v0, "BT-Watch"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->bt_watch:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    goto :goto_0

    :cond_4
    const-string v0, "Watch"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->watch:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    goto :goto_0

    :cond_5
    const-string v0, "Speaker"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->speaker:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    goto :goto_0

    :cond_6
    const-string v0, "PC"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->pc:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    goto :goto_0

    :cond_7
    const-string v0, "TV"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->tv:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    goto :goto_0

    :cond_8
    const-string v0, "Laptop"

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 18
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->laptop:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    goto :goto_0

    .line 19
    :cond_9
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->undefined:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    :goto_0
    return-object p0
.end method

.method public static getDeviceInfoFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "context is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "device id is empty"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Devices;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v5, "DEVICE_ID = ?"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_2

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "cursor is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->makeMdecDeviceInfoForDevice(Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object v0

    .line 8
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_3

    .line 9
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private static getDeviceList(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const/4 v1, 0x0

    aput-object p1, v6, v1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Devices;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v5, "IS_LINE_OWNER = ?"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "cursor is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    const-string p1, "CMC_VERSION"

    .line 5
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DEVICE_ID"

    .line 6
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This device is not phase2 device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->makeMdecDeviceInfoForDevice(Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getFcmPushTokenFromDb(Landroid/content/Context;)Ljava/lang/String;
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
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FCM_PUSH_TOKEN"

    .line 3
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p0, :cond_1

    .line 4
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 5
    :try_start_1
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error is occurred"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :goto_2
    if-eqz p0, :cond_2

    .line 7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 8
    :cond_2
    throw v0
.end method

.method public static getLineInfoListFromDb(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Lines;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;

    invoke-direct {v2}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;-><init>()V

    const-string v3, "LINE_ID"

    .line 5
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->setLineId(Ljava/lang/String;)V

    .line 7
    invoke-static {p0, v2, v3}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->insertDevicesInfo(Landroid/content/Context;Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 9
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 10
    :try_start_1
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error is occurred"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    return-object v0

    :goto_3
    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_2
    throw p0
.end method

.method public static getPrimaryDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getDeviceList(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getPrimaryDeviceListForDeleteFromDb(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "1"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Devices;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "IS_LINE_OWNER = ?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cursor is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-direct {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;-><init>()V

    const-string v2, "DEVICE_ID"

    .line 7
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setDeviceId(Ljava/lang/String;)V

    const-string v2, "LINE_ID"

    .line 8
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setLineId(Ljava/lang/String;)V

    const-string v2, "LINE_OWNER_DEVICE_ID"

    .line 9
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setLineOwnerDeviceId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getProvisionedDeviceInfoFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$ProvisionedDevices;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "DEVICE_ID = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cursor is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->makeMdecDeviceInfoForProvisioned(Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object p1

    .line 5
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1
.end method

.method public static getProvisionedDeviceInternal(Landroid/content/Context;Landroid/os/ResultReceiver;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getProvisionedDeviceInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method public static getProvisionedDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getProvisionedDeviceList"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "provisioned"

    .line 3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$ProvisionedDevices;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "LINE_ID = ?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cursor is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->makeMdecDeviceInfoForProvisioned(Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getSecondaryDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getDeviceList(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getUserInfomationInternal(Landroid/content/Context;Landroid/os/ResultReceiver;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getUserInfomationInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method private static insertDeviceDataIntoCV(Landroid/content/ContentValues;Lcom/samsung/android/mdeccommon/obj/DeviceData;)Landroid/content/ContentValues;
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "DEVICE_DATA_STR_TYPE"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->getDeviceDataVersion()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DEVICE_DATA_VERSION"

    .line 4
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->getHashedWifiMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DEVICE_DATA_HASHED_DEVICE_ID"

    .line 7
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->getHashedBtMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "DEVICE_DATA_HASHED_BT_MAC"

    .line 10
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isUseCellularDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isCellularDevice()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DEVICE_DATA_IS_CELLULAR_DEVICE"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isUseMigrateAllowed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isMigrateAllowed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DEVICE_DATA_MIGRATE_DEVICE"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isUseRemoveControlAllowed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isRemoveControlAllowed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DEVICE_DATA_REMOVE_CONTROL"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 17
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isUseActivationControlAllowed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isActivationControlAllowed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DEVICE_DATA_ACTIVATION_CONTROL"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 19
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->getPackageNameForNativeApp()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "DEVICE_DATA_NATIVE_PACKAGE_NAME"

    .line 21
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->getActivityNameForNativeApp()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "DEVICE_DATA_NATIVE_ACTIVITY_NAME"

    .line 24
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isUseMsgSyncSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isMsgSyncSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DEVICE_DATA_SUPPORT_MSG_SYNC"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 27
    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isUseCallLogSyncSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isCallLogSyncSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DEVICE_DATA_SUPPORT_CALL_LOG_SYNC"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 29
    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isUseCallForkingSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isCallForkingSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DEVICE_DATA_SUPPORT_CALL_FORKING"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 31
    :cond_b
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isUseActivation()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isActivation()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DEVICE_DATA_ACTIVATION"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 33
    :cond_c
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isUseCallActivation()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isCallActivation()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DEVICE_DATA_CALL_ACTIVATION"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 35
    :cond_d
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isUseMessageActivation()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isMessageActivation()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DEVICE_DATA_MESSAGE_ACTIVATION"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 37
    :cond_e
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isUseRespectiveControl()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isRespectiveControl()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "DEVICE_DATA_RESPECTIVE_CONTROL"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 39
    :cond_f
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->getPdBtMac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->getPdBtMac()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DEVICE_DATA_PD_BT_MAC"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-object p0
.end method

.method private static insertDevicesInfo(Landroid/content/Context;Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;Ljava/lang/String;)V
    .locals 8

    const-string v0, ""

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Devices;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "LINE_ID = ?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->setPhase1WatchDeviceId(Ljava/lang/String;)V

    move-object p2, v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "DEVICE_TYPE"

    .line 4
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CMC_VERSION"

    .line 5
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Watch"

    .line 6
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "DEVICE_ID"

    const-string v5, "2"

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v0

    .line 8
    :cond_1
    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->setPhase1WatchDeviceId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "IS_LINE_OWNER"

    .line 9
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "DEVICE_DEVICE_DATA"

    if-ne v2, v1, :cond_5

    .line 10
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v3, "1"

    .line 11
    :cond_3
    invoke-virtual {p1, v3}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->setVersion(Ljava/lang/String;)V

    const-string v2, "DEVICE_PUSH_TOKEN"

    .line 12
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->setOwnerFcmToken(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v2}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getDeviceData(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->getHashedBtMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->setPhase2HashedPdBtAddr(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_5
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v3}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getDeviceData(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 20
    invoke-virtual {v3}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isMigrateAllowed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 23
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 24
    :cond_7
    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->setRemanentDevices(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_8

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 25
    :try_start_3
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "error is occurred"

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_8

    .line 27
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_8
    return-void

    :goto_2
    if-eqz p0, :cond_9

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 28
    :cond_9
    throw p1
.end method

.method private static makeMdecDeviceInfoForDevice(Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;-><init>()V

    const-string v1, "DEVICE_ID"

    .line 2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setDeviceId(Ljava/lang/String;)V

    const-string v1, "MODEL_NUMBER"

    .line 3
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setModelNumber(Ljava/lang/String;)V

    const-string v1, "DEVICE_NAME"

    .line 4
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    const-string v1, "DEVICE_TYPE"

    .line 5
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setDeviceCategoryStr(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getDeviceCategory(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setDeviceCategory(Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;)V

    const-string v1, "LINE_ID"

    .line 8
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setLineId(Ljava/lang/String;)V

    const-string v1, "DEVICE_APPLICATION_DATA"

    .line 9
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setApplicationData(Ljava/lang/String;)V

    const-string v1, "DEVICE_DEVICE_DATA"

    .line 10
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getDeviceData(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setDeviceData(Lcom/samsung/android/mdeccommon/obj/DeviceData;)V

    const-string v1, "DEVICE_PUSH_TYPE"

    .line 12
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setPushType(Ljava/lang/String;)V

    const-string v1, "DEVICE_PUSH_TOKEN"

    .line 13
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setPushToken(Ljava/lang/String;)V

    const-string v1, "IS_LINE_OWNER"

    .line 14
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setLineOwner(Ljava/lang/String;)V

    const-string v1, "LINE_OWNER_DEVICE_ID"

    .line 15
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setLineOwnerDeviceId(Ljava/lang/String;)V

    const-string v1, "DEVICE_PD_MSISDN"

    .line 16
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setMsisdn(Ljava/lang/String;)V

    const-string v1, "CMC_VERSION"

    .line 17
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setVersion(Ljava/lang/String;)V

    const-string v1, "ACTIVE_SERVICES"

    .line 18
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->parseActiveServiceStringToArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setActiveServices(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private static makeMdecDeviceInfoForProvisioned(Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;-><init>()V

    const-string v1, "DEVICE_ID"

    .line 2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setDeviceId(Ljava/lang/String;)V

    const-string v1, "MODEL_NUMBER"

    .line 3
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setModelNumber(Ljava/lang/String;)V

    const-string v1, "DEVICE_NAME"

    .line 4
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    const-string v1, "DEVICE_TYPE"

    .line 5
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setDeviceCategoryStr(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getDeviceCategory(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setDeviceCategory(Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;)V

    const-string v1, "LINE_ID"

    .line 8
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setLineId(Ljava/lang/String;)V

    const-string v1, "DEVICE_APPLICATION_DATA"

    .line 9
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setApplicationData(Ljava/lang/String;)V

    const-string v1, "DEVICE_DEVICE_DATA"

    .line 10
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getDeviceData(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setDeviceData(Lcom/samsung/android/mdeccommon/obj/DeviceData;)V

    const-string v1, "DEVICE_PUSH_TYPE"

    .line 12
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setPushType(Ljava/lang/String;)V

    const-string v1, "DEVICE_PUSH_TOKEN"

    .line 13
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setPushToken(Ljava/lang/String;)V

    const-string v1, "LINE_OWNER_DEVICE_ID"

    .line 14
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setLineOwnerDeviceId(Ljava/lang/String;)V

    const-string v1, "DEVICE_ACTIVE_SERVICES"

    .line 15
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->parseActiveServiceStringToArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->setActiveServices(Ljava/util/ArrayList;)V

    .line 18
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static migrateLineInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "migrateLineInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "LINE_ID"

    .line 3
    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p5, "MIGRATE_SOURCE_LINE_ID"

    .line 4
    invoke-virtual {v0, p5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "REMOVE_MIGRATE_SOURCE_LINE"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "MIGRATE_SOURCE_LINE_VERSION"

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    const-string p1, "REMANENT_DEVICES"

    .line 7
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "MIGRATE_TARGET_LINE_VERSION"

    .line 8
    invoke-virtual {v0, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 9
    invoke-static {p0, p1, v0, p7}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method public static parseActiveServiceArrayToStr(Ljava/util/ArrayList;)Ljava/lang/String;
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
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseActiveServiceArrayToStr arrList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    if-eqz p0, :cond_c

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 4
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_2

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 8
    :cond_2
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->msglogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->msglogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 12
    :cond_4
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 16
    :cond_6
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 20
    :cond_8
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return-object v0

    .line 24
    :cond_c
    :goto_2
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "serviceArrList is empty"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseActiveServiceStringToArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseActiveServiceStringToArray str : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 5
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p0, v3, :cond_6

    .line 6
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_1
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->msglogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->msglogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_2
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_3
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_4
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_6
    return-object v0

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method public static registerPdpAgreementInternal(Landroid/content/Context;Landroid/os/ResultReceiver;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerPdpAgreementInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method public static removeDeviceInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "removeDeviceInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "LINE_ID"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DEVICE_ID"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 5
    invoke-static {p0, p1, v0, p3}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method public static removeLineInternal(Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "removeLineInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "LINE_ID"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method public static removeProvisionedDevicesInternal(Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "removeProvisionedDevicesInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "DEVICE_ID"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 4
    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method

.method public static updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;Landroid/os/ResultReceiver;)Z
    .locals 10

    move-object v0, p3

    move-object v1, p4

    move-object v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p13

    .line 1
    sget-object v7, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v8, "updateDeviceInfoInternal"

    invoke-static {v7, v8}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "LINE_ID"

    move-object v9, p1

    .line 3
    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "DEVICE_ID"

    move-object v9, p2

    .line 4
    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v8, "DEVICE_TYPE"

    .line 5
    invoke-virtual {v7, v8, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "DEVICE_NAME"

    .line 6
    invoke-virtual {v7, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v4, :cond_2

    const-string v0, "DEVICE_PUSH_TYPE"

    .line 7
    invoke-virtual {v7, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v5, :cond_3

    const-string v0, "DEVICE_PUSH_TOKEN"

    .line 8
    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v2, :cond_4

    const-string v0, "ACTIVE_SERVICES"

    .line 9
    invoke-virtual {v7, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v3, :cond_5

    const-string v0, "CMC_VERSION"

    .line 10
    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p9, :cond_6

    .line 11
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "INCLUDE_DEVICE_COUNTING"

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_6
    if-eqz p11, :cond_7

    .line 12
    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ADD_PROVISIONED_DEVICE_TO_LINE"

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_7
    if-eqz v6, :cond_8

    .line 13
    invoke-static {v7, v6}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->insertDeviceDataIntoCV(Landroid/content/ContentValues;Lcom/samsung/android/mdeccommon/obj/DeviceData;)Landroid/content/ContentValues;

    move-result-object v7

    :cond_8
    const/4 v0, 0x5

    move-object v1, p0

    move-object/from16 v2, p14

    .line 14
    invoke-static {p0, v0, v7, v2}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public static updateLineInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateLineInfoInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "LINE_ID"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "MSISDN"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x4

    .line 5
    invoke-static {p0, p1, v0, p3}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    move-result p0

    return p0
.end method
