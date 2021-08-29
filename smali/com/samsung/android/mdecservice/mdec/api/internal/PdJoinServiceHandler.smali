.class public Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;
.super Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;
.source "PdJoinServiceHandler.java"


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

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "PdJoinServiceHandler"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private afterProcedure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "afterProcedure"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getAllInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 4
    invoke-direct {v0, v3, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 5
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getProvisionedDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 7
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getModelNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getPushType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getPushToken()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v16

    const-string v10, "Tablet"

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v12, p3

    invoke-static/range {v6 .. v16}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->addDeviceInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v6

    .line 8
    sget-object v7, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v6, v7, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDevice in PdJoinService is failed, errorReason : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {v0, v3, v6}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v15, p1

    invoke-static {v15, v6}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->removeProvisionedDevicesInternal(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v6

    .line 12
    sget-object v7, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v6, v7, :cond_5

    sget-object v7, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_PROVISIONED_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v6, v7, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeProvisionedDevice in PdJoinService is failed, errorReason : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-direct {v0, v3, v6}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 15
    :cond_5
    :goto_1
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object v15, v5

    invoke-static/range {v7 .. v20}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v5

    .line 16
    sget-object v6, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v5, v6, :cond_1

    .line 17
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUpdateDevice in PdJoinService is failed, errorReason : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-direct {v0, v3, v5}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 19
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-lez v2, :cond_b

    .line 20
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getAllInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 21
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v2, v1, :cond_7

    move v3, v4

    :cond_7
    if-eqz p4, :cond_8

    if-eqz v3, :cond_8

    .line 22
    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->checkUpdateForActiveServices(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    return-void

    .line 23
    :cond_8
    invoke-direct {v0, v3, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    if-eqz v3, :cond_9

    sget-object v4, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    goto :goto_2

    :cond_9
    sget-object v4, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    :goto_2
    invoke-static {v1, v2, v4}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    if-eqz v3, :cond_a

    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    goto :goto_3

    :cond_a
    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    :goto_3
    invoke-static {v1, v2, v3}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    goto :goto_4

    :cond_b
    if-eqz p4, :cond_c

    .line 26
    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->checkUpdateForActiveServices(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    return-void

    .line 27
    :cond_c
    invoke-direct {v0, v4, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    :goto_4
    return-void
.end method

.method private checkUpdateForActiveServices(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkUpdateForActiveServices"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "context is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getSecondaryDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "sdInfoList size is 0"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 7
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_3

    .line 8
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->updateDeviceForActiveServices(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 9
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    .line 10
    sget-object v8, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    if-ne v7, v8, :cond_5

    move v5, v0

    goto :goto_0

    .line 11
    :cond_5
    sget-object v8, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    if-ne v7, v8, :cond_6

    move v6, v0

    :cond_6
    :goto_0
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    :cond_7
    if-eqz v5, :cond_8

    if-nez v6, :cond_2

    .line 12
    :cond_8
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->updateDeviceForActiveServices(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v4

    :cond_9
    return v0
.end method

.method private doPdJoinProcess(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v6, 0x0

    if-eq v2, v3, :cond_0

    .line 3
    invoke-direct {v11, v6, v2}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    :cond_0
    const-string v2, "display_name"

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "slot_id"

    .line 5
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 6
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getMyLineId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {v11, v6, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 9
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getLineInfoListFromDb(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 10
    sget-object v4, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lineInfoList size : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v4, ""

    move-object v7, v4

    move-object v9, v7

    move-object v10, v9

    move-object v12, v10

    move-object v13, v12

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;

    if-nez v14, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v14}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->getLineId()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v14}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->getVersion()Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-virtual {v14}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->getPhase1WatchDeviceId()Ljava/lang/String;

    move-result-object v16

    .line 15
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    move-object/from16 v18, v3

    const-string v3, "2"

    if-eqz v17, :cond_5

    const-string v6, "1"

    .line 16
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    :goto_1
    move-object v9, v5

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 19
    invoke-virtual {v14}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->getRemanentDevices()Ljava/lang/String;

    move-result-object v12

    .line 20
    invoke-virtual {v14}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->getPhase2HashedPdBtAddr()Ljava/lang/String;

    move-result-object v13

    move-object v7, v6

    move-object/from16 v10, v16

    :cond_6
    :goto_2
    move-object/from16 v3, v18

    const/4 v6, 0x0

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    .line 21
    :goto_3
    sget-object v6, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sameVer1LineId("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "), ver2LineId("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "), ver2WatchDeviceId("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "), isSameVer2Line("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, "), remanentDevices("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v14, Lcom/samsung/android/mdeccommon/obj/DeviceData;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    const-string v20, "com.samsung.android.mdecservice"

    const-string v21, "com.samsung.android.cmcsettings.view.CMCMainActivity"

    move-object/from16 v16, v14

    invoke-direct/range {v16 .. v24}, Lcom/samsung/android/mdeccommon/obj/DeviceData;-><init>(ZZZLjava/lang/String;Ljava/lang/String;ZZZ)V

    const/4 v6, 0x1

    .line 23
    invoke-virtual {v14, v6, v6, v6}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setActivations(ZZZ)V

    .line 24
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getHashedBluetoothMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string v6, "1.0.10"

    .line 25
    invoke-virtual {v14, v6}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setDeviceDataVersion(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v14, v4}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setHashedWifiMacAddress(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v14, v15}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setHashedBtMacAddress(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 28
    invoke-virtual {v14, v6}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setCellularDevice(Z)V

    .line 29
    invoke-virtual {v14, v6}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setRespectiveControl(Z)V

    .line 30
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getStoredDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    if-eqz v3, :cond_8

    .line 31
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Already Exist Line"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, v16

    move-object v4, v8

    move-object v5, v14

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->updateProcessForPdInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V

    .line 33
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_LINE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v1, 0x0

    invoke-direct {v11, v1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto/16 :goto_4

    .line 34
    :cond_8
    invoke-static {v2, v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getValidMsisdnForEng(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->getPdInitialActiveServices()Ljava/lang/String;

    move-result-object v17

    .line 36
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 37
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "--> try own device(mac) remove"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-direct {v11, v10, v12}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->getAllRemanentDevices(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "1"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v8

    move-object v4, v6

    move-object/from16 v5, v17

    move-object v6, v7

    move-object v7, v12

    move v8, v9

    move-object v9, v10

    move-object v10, v14

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->replaceAddLine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V

    return-void

    :cond_9
    const/4 v2, -0x1

    const-string v3, "join_mode"

    .line 39
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 40
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 41
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v8

    move-object v4, v6

    move-object/from16 v5, v17

    move-object v6, v14

    .line 42
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->originalAddLine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V

    goto/16 :goto_4

    .line 43
    :cond_a
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addline for migrate, mode : "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 44
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_PRIMARY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v1, 0x0

    invoke-direct {v11, v1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto/16 :goto_4

    :cond_b
    if-nez v0, :cond_c

    .line 45
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-direct {v11, v10, v12}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->getAllRemanentDevices(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "1"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v8

    move-object v4, v6

    move-object/from16 v5, v17

    move-object v6, v7

    move-object v7, v12

    move v8, v9

    move-object v9, v10

    move-object v10, v14

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->replaceAddLine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V

    goto :goto_4

    .line 46
    :cond_c
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v1, 0x0

    invoke-direct {v11, v1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_4

    .line 47
    :cond_d
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object/from16 v3, v16

    move-object v4, v8

    move-object/from16 v5, v17

    move-object v6, v14

    .line 48
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->updateForUpgrade(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V

    goto :goto_4

    :cond_e
    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 49
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_PRIMARY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v1, 0x0

    invoke-direct {v11, v1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_4

    :cond_f
    if-nez v0, :cond_10

    .line 50
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v11, v10, v12}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->getAllRemanentDevices(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->migrateLine(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 51
    :cond_10
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v1, 0x0

    invoke-direct {v11, v1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    :goto_4
    return-void
.end method

.method private getAllRemanentDevices(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getPdInitialActiveServices()Ljava/lang/String;
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

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private migrateLine(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "migrate line"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "1"

    const-string v9, "2"

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 2
    invoke-static/range {v3 .. v9}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->migrateLineInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v8, "Phone"

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v9, p6

    .line 4
    invoke-static/range {v4 .. v17}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 6
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->afterProcedure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {v0, v3, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {v0, v3, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    :goto_0
    return-void
.end method

.method private originalAddLine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V
    .locals 15

    move-object v0, p0

    .line 1
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "only addline"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v14, p6

    .line 2
    invoke-static/range {v3 .. v14}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->addLineInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_LINE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_PRIMARY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v1, v2, :cond_1

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    .line 6
    :cond_1
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    .line 7
    invoke-direct {p0, v1, v2, v4, v3}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->afterProcedure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method private replaceAddLine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V
    .locals 15

    move-object v0, p0

    .line 1
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "addline for migrate"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v14, p10

    .line 2
    invoke-static/range {v3 .. v14}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->addLineInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_LINE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_PRIMARY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v1, v2, :cond_1

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    :cond_1
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    .line 7
    invoke-direct {p0, v2, v3, v4, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->afterProcedure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
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

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onAddPrimaryDevice(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    :cond_0
    return-void
.end method

.method private updateDeviceForActiveServices(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDeviceForActiveServices : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    .line 2
    invoke-static/range {v3 .. v16}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    move-object/from16 v1, p0

    .line 4
    invoke-direct {v1, v2, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v5, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v5, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p0

    .line 7
    :goto_0
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v0, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private updateForUpgrade(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "update device"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getFcmPushTokenFromDb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    const/4 v7, 0x0

    const-string v9, "2"

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v16, p6

    .line 3
    invoke-static/range {v3 .. v16}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    .line 5
    invoke-direct {v0, v2, v4, v5, v3}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->afterProcedure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {v0, v3, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    :goto_0
    return-void
.end method

.method private updateProcessForPdInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdeccommon/obj/DeviceData;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->getPdInitialActiveServices()Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getFcmPushTokenFromDb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Tablet"

    goto :goto_0

    :cond_0
    const-string v0, "Phone"

    :goto_0
    move-object v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v13, p5

    .line 4
    invoke-static/range {v0 .. v13}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v0, v1, :cond_1

    .line 6
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    :cond_1
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
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--> start service"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "intent is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->startMdecEventHandler(Landroid/content/Context;)V

    .line 8
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->doPdJoinProcess(Landroid/content/Context;Landroid/content/Intent;)V

    .line 9
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "--> end service"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
