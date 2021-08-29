.class public Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;
.super Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;
.source "SdActivationSwitchHandler.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MODE_CALL_SWITCH:I = 0x3

.field public static final MODE_INVALID:I = -0x1

.field public static final MODE_MAIN_SWITCH_OFF:I = 0x1

.field public static final MODE_MAIN_SWITCH_ON:I = 0x0

.field public static final MODE_MESSAGE_SWITCH:I = 0x2

.field public static final SWITCH_MODE:Ljava/lang/String; = "SWITCH_MODE"

.field public static final SWITCH_STATE:Ljava/lang/String; = "SWITCH_STATE"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SdActivationSwitchHandler"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private doSdMainSwitchChangeProcess(Landroid/content/Context;IZ)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v0, v1, :cond_0

    const/4 v4, 0x0

    .line 3
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    xor-int/lit8 v7, p3, 0x1

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->sendCallback(Landroid/content/Context;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;IZ)V

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getStoredDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deviceId is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 7
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    xor-int/lit8 v7, p3, 0x1

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->sendCallback(Landroid/content/Context;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;IZ)V

    return-void

    .line 8
    :cond_1
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getDeviceInfoFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->updateSecondaryProcess(Landroid/content/Context;Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;IZ)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "deviceInfo is null"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getProvisionedDeviceInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 12
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v1, v2, :cond_3

    const/4 v5, 0x0

    .line 13
    sget-object v6, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    xor-int/lit8 v8, p3, 0x1

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->sendCallback(Landroid/content/Context;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;IZ)V

    return-void

    .line 14
    :cond_3
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getProvisionedDeviceInfoFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_4

    .line 15
    sget-object p3, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "device is not exist"

    invoke-static {p3, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 16
    sget-object v4, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->sendCallback(Landroid/content/Context;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;IZ)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->updateProvisionedProcess(Landroid/content/Context;Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;IZ)V

    :goto_0
    return-void
.end method

.method private sendCallback(Landroid/content/Context;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p4, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p5}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onSetCMCActivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p5}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onSetCMCDeactivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    if-ne p4, v0, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getCmcDeviceId()Ljava/lang/String;

    move-result-object p4

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p4, p2, p3, p5}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onSetSdMessageServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    if-eqz p2, :cond_6

    .line 6
    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    if-eqz p5, :cond_2

    sget-object p3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    goto :goto_0

    :cond_2
    sget-object p3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    :goto_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x3

    if-ne p4, v0, :cond_5

    .line 7
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getCmcDeviceId()Ljava/lang/String;

    move-result-object p4

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p4, p2, p3, p5}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onSetSdCallServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    if-eqz p2, :cond_6

    .line 9
    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    if-eqz p5, :cond_4

    sget-object p3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    goto :goto_1

    :cond_4
    sget-object p3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    :goto_1
    invoke-static {p1, p2, p3}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    goto :goto_2

    .line 10
    :cond_5
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "switchMode is invalid"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private setActivation(Lcom/samsung/android/mdeccommon/obj/DeviceData;IZ)Lcom/samsung/android/mdeccommon/obj/DeviceData;
    .locals 1

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 1
    invoke-virtual {p1, p3}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setMessageActivation(Z)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 2
    invoke-virtual {p1, p3}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setCallActivation(Z)V

    goto :goto_1

    .line 3
    :cond_2
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->LOG_TAG:Ljava/lang/String;

    const-string p3, "switchMode is invalid"

    invoke-static {p2, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_3
    :goto_0
    invoke-virtual {p1, p3}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setActivation(Z)V

    :goto_1
    return-object p1
.end method

.method private updateProvisionedProcess(Landroid/content/Context;Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;IZ)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v0, p4

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "deviceData is null"

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 3
    sget-object v4, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    xor-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    move-object v3, v4

    move/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->sendCallback(Landroid/content/Context;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;IZ)V

    return-void

    .line 4
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getModelNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->makeActiveServiceStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getPushToken()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    move/from16 v4, p3

    invoke-direct {v6, v1, v4, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->setActivation(Lcom/samsung/android/mdeccommon/obj/DeviceData;IZ)Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v16

    const-string v10, "Tablet"

    move-object/from16 v7, p1

    .line 6
    invoke-static/range {v7 .. v16}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->addProvisionedDevicesInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v3

    .line 7
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v3, v1, :cond_1

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getProvisionedDeviceInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 9
    :cond_1
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v5, 0x0

    if-ne v3, v1, :cond_2

    move v7, v2

    goto :goto_0

    :cond_2
    move v7, v5

    :goto_0
    if-eqz v7, :cond_3

    move v5, v0

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    move v5, v2

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    move/from16 v4, p3

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->sendCallback(Landroid/content/Context;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;IZ)V

    return-void
.end method

.method private updateSecondaryProcess(Landroid/content/Context;Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;IZ)V
    .locals 24

    move/from16 v0, p4

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "deviceData is null"

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 3
    sget-object v7, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    xor-int/lit8 v9, v0, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->sendCallback(Landroid/content/Context;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;IZ)V

    return-void

    .line 4
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v9, p0

    move/from16 v7, p3

    .line 5
    invoke-direct {v9, v1, v7, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->setActivation(Lcom/samsung/android/mdeccommon/obj/DeviceData;IZ)Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v23

    move-object/from16 v10, p1

    .line 6
    invoke-static/range {v10 .. v23}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v6

    .line 7
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v6, v1, :cond_1

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 9
    :cond_1
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v3, 0x0

    if-ne v6, v1, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    if-eqz v5, :cond_3

    move v8, v0

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    move v8, v2

    goto :goto_1

    :cond_4
    move v8, v3

    :goto_1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p3

    .line 10
    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->sendCallback(Landroid/content/Context;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;IZ)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--> start service"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "intent is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "SWITCH_MODE"

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "switchMode is invalid"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    const-string v2, "SWITCH_STATE"

    .line 5
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 6
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "context is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-direct {p0, v1, v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->doSdMainSwitchChangeProcess(Landroid/content/Context;IZ)V

    .line 9
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "--> end service"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
