.class public Lcom/samsung/android/mdecservice/mdec/api/internal/CMCDeactivationHandler;
.super Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;
.source "CMCDeactivationHandler.java"


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

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/CMCDeactivationHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/CMCDeactivationHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CMCDeactivationHandler"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 18

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/CMCDeactivationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--> start service"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/CMCDeactivationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Device type is not PD"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-virtual {v0, v2, v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onSetCMCDeactivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    return-void

    .line 6
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CANNOT_CONNECT_TO_SERVER:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onSetCMCDeactivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    return-void

    .line 9
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onSetCMCDeactivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    return-void

    .line 12
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getDeviceInfoFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 13
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/CMCDeactivationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DB error. There are no PD"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_PRIMARY_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onSetCMCDeactivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    return-void

    .line 15
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1, v2, v2, v2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setActivations(ZZZ)V

    .line 17
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v9, ""

    move-object/from16 v17, v1

    invoke-static/range {v4 .. v17}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v0, v1, :cond_5

    .line 19
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onSetCMCDeactivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    goto :goto_0

    .line 20
    :cond_5
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onSetCMCDeactivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 23
    :goto_0
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/CMCDeactivationHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--> end service"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
