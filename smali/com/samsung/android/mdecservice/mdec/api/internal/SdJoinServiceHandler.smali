.class public Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;
.super Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;
.source "SdJoinServiceHandler.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_SECONDERY_NUM:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SdJoinServiceHandler"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addDeviceProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V
    .locals 14

    move-object v0, p0

    .line 1
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fount primary device("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")  add device to primary"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getDeviceNameByModel()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Tablet"

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    move-object/from16 v13, p7

    .line 3
    invoke-static/range {v3 .. v13}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->addDeviceInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 5
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v2, v1, :cond_0

    const/4 v3, 0x1

    .line 7
    :cond_0
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    :goto_0
    invoke-static {v1, v2, v4}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    :goto_1
    invoke-static {v1, v2, v3}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    :goto_2
    return-void
.end method

.method private addProvisionedDataProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V
    .locals 11

    move-object v0, p0

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getDeviceNameByModel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Tablet"

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    .line 2
    invoke-static/range {v1 .. v10}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->addProvisionedDevicesInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 4
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getProvisionedDeviceInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v1, v2, :cond_0

    const/4 v3, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    :goto_0
    invoke-static {v1, v2, v4}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    :goto_1
    invoke-static {v1, v2, v3}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    goto :goto_2

    .line 9
    :cond_3
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    :goto_2
    return-void
.end method

.method private doSdJoinProcess(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v0

    .line 2
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    .line 3
    invoke-direct {v8, v3, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 4
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {v8, v3, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 7
    :cond_1
    new-instance v7, Lcom/samsung/android/mdeccommon/obj/DeviceData;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const-string v13, "com.samsung.android.mdecservice"

    const-string v14, "com.samsung.android.cmcsettings.view.CMCMainActivity"

    move-object v9, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/mdeccommon/obj/DeviceData;-><init>(ZZZLjava/lang/String;Ljava/lang/String;ZZZ)V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {v7, v0, v0, v0}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setActivations(ZZZ)V

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getHashedBluetoothMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "1.0.10"

    .line 10
    invoke-virtual {v7, v5}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setDeviceDataVersion(Ljava/lang/String;)V

    const-string v5, ""

    .line 11
    invoke-virtual {v7, v5}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setHashedWifiMacAddress(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v7, v2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setHashedBtMacAddress(Ljava/lang/String;)V

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getPhoneSimSlotCount(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_2

    move v5, v0

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    invoke-virtual {v7, v5}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setCellularDevice(Z)V

    .line 14
    invoke-virtual {v7, v0}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setRespectiveControl(Z)V

    .line 15
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->findLineId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "display_name"

    move-object/from16 v9, p2

    .line 16
    invoke-virtual {v9, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-static {v1, v4}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getDeviceInfoFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 18
    invoke-virtual {v9}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getVersion()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v4

    move-object v4, v6

    move-object v5, v9

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->updateOwnDeviceProcessForSd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V

    return-void

    .line 19
    :cond_3
    sget-object v9, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v10, "(secondary)ownDeviceInfo is null : not exist"

    invoke-static {v9, v10}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-direct {v8, v1, v5, v2, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->removeMatchedBtAddrDeviceProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_4

    return-void

    .line 21
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getSecondaryDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v9

    .line 22
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_5

    .line 23
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_SECONDERY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {v8, v3, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 24
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getProvisionedDeviceInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v10

    .line 25
    sget-object v12, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v10, v12, :cond_6

    .line 26
    invoke-direct {v8, v3, v10}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 27
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getProvisionedDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v10

    .line 28
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    if-eqz v13, :cond_7

    .line 29
    invoke-virtual {v13}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v13

    .line 30
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_1

    :cond_8
    move v0, v3

    .line 31
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getInitialActiveServices(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 32
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getFcmPushTokenFromDb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    if-nez v0, :cond_c

    .line 33
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 34
    invoke-direct {v8, v1, v5, v2, v3}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->removeMatchedBtAddrDeviceProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 35
    :cond_9
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "There are no primary device add provisioned device"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    if-lt v0, v11, :cond_a

    .line 37
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_SECONDERY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {v8, v3, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v6

    move-object v4, v12

    move-object v5, v13

    move-object v6, v7

    .line 38
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->addProvisionedDataProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v4

    move-object v4, v6

    move-object v5, v12

    move-object v6, v13

    .line 39
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->addDeviceProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V

    goto :goto_2

    .line 40
    :cond_c
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "(provisioned)already exist device"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-direct {v8, v1, v4, v6, v7}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->updateProcessForProvisioned(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V

    .line 42
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {v8, v3, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    .line 43
    invoke-direct {v8, v1, v7}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->updateActivations(Landroid/content/Context;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V

    :goto_2
    return-void
.end method

.method private removeMatchedBtAddrDeviceProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    if-eqz p4, :cond_0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getSecondaryDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getProvisionedDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    if-nez v1, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v3

    if-nez v3, :cond_3

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "storedDeviceData is null"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->getHashedBtMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p4, :cond_4

    .line 6
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->removeDeviceInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->removeProvisionedDevicesInternal(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p1

    .line 7
    :goto_2
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 p3, 0x0

    if-ne p1, p2, :cond_5

    move p2, v2

    goto :goto_3

    :cond_5
    move p2, p3

    .line 8
    :goto_3
    sget-object p4, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--> own device(mac) remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6

    const-string v1, "success"

    goto :goto_4

    :cond_6
    const-string v1, "failed"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_7

    .line 9
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return p3

    :cond_7
    return v2
.end method

.method private sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onAddSecondaryDevice(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    :cond_0
    return-void
.end method

.method private updateActivations(Landroid/content/Context;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V
    .locals 5

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "sdData is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isMessageActivation()Z

    move-result v0

    .line 3
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-eq v0, v1, :cond_3

    .line 4
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    :goto_1
    invoke-static {p1, v1, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    if-eqz v0, :cond_3

    .line 5
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->setActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)V

    .line 6
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isCallActivation()Z

    move-result p2

    .line 7
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    if-eq p2, v3, :cond_6

    .line 8
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    if-eqz p2, :cond_5

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    :goto_3
    invoke-static {p1, v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    if-eqz p2, :cond_6

    .line 9
    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->setActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)V

    :cond_6
    return-void
.end method

.method private updateOwnDeviceProcessForSd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V
    .locals 15

    move-object v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getFcmPushTokenFromDb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 2
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getInitialActiveServices(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "Tablet"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v14, p6

    .line 3
    invoke-static/range {v1 .. v14}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v1, v2, :cond_0

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    :cond_0
    const-string v1, "2"

    move-object/from16 v2, p5

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 7
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "(secondary)already exist device"

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 9
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->updateActivations(Landroid/content/Context;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "(secondary)ownDevice is ver1 device"

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    :goto_0
    return-void
.end method

.method private updateProcessForProvisioned(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getFcmPushTokenFromDb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getInitialActiveServices(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getDeviceNameByModel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Tablet"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v4, p3

    move-object v9, p4

    .line 4
    invoke-static/range {v0 .. v9}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->addProvisionedDevicesInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p2

    .line 5
    sget-object p3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p2, p3, :cond_0

    .line 6
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getProvisionedDeviceInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--> start service"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "intent is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->startMdecEventHandler(Landroid/content/Context;)V

    .line 8
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->doSdJoinProcess(Landroid/content/Context;Landroid/content/Intent;)V

    .line 9
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "--> end service"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
