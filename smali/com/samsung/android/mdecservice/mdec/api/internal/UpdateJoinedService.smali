.class public Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;
.super Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;
.source "UpdateJoinedService.java"


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

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UpdateJoinedService"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private afterProcedure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getAllInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 3
    invoke-direct {v0, v4, v2, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    return-void

    .line 4
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getProvisionedDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 6
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getModelNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getPushType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getPushToken()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v17

    const-string v11, "Tablet"

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v13, p3

    invoke-static/range {v7 .. v17}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->addDeviceInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v7

    .line 7
    sget-object v8, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v7, v8, :cond_3

    sget-object v8, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v7, v8, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addDevice in PdJoinService is failed, errorReason : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {v0, v4, v7, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    return-void

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v15, p1

    invoke-static {v15, v7}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->removeProvisionedDevicesInternal(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v7

    .line 11
    sget-object v8, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v7, v8, :cond_4

    .line 12
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v15, v6

    invoke-static/range {v8 .. v21}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v6

    .line 13
    sget-object v7, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v6, v7, :cond_1

    .line 14
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUpdateDevice in PdJoinService is failed, errorReason : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-direct {v0, v4, v6, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    return-void

    .line 16
    :cond_4
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeProvisionedDevice in PdJoinService is failed, errorReason : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-direct {v0, v4, v7, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    return-void

    .line 18
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-lez v3, :cond_7

    .line 19
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getAllInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v2

    .line 20
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v3, v2, :cond_6

    move v4, v5

    :cond_6
    invoke-direct {v0, v4, v2, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    goto :goto_1

    .line 21
    :cond_7
    invoke-direct {v0, v5, v2, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    :goto_1
    return-void
.end method

.method private doUpdateJoinedService(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 22

    move-object/from16 v12, p0

    move-object/from16 v1, p1

    move/from16 v10, p3

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v0

    .line 2
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    .line 3
    invoke-direct {v12, v3, v0, v10}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    return-void

    :cond_0
    const-string v0, "display_name"

    move-object/from16 v2, p2

    .line 4
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v1, v10}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getMyLineId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_INVALID_VALUE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {v12, v3, v0, v10}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    return-void

    .line 8
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getLineInfoListFromDb(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 9
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lineInfoList size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, ""

    move-object v6, v2

    move-object v7, v6

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;

    if-eqz v8, :cond_2

    .line 11
    invoke-virtual {v8}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->getLineId()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual {v8}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->getVersion()Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "2"

    if-eqz v13, :cond_5

    const-string v11, "1"

    .line 14
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v0, v9

    goto :goto_2

    :cond_4
    :goto_1
    move-object v7, v5

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v6, v11

    goto :goto_0

    :cond_6
    move v0, v3

    .line 17
    :goto_2
    sget-object v8, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sameVer1LineId("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "), ver2LineId("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "), isSameVer2Line("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v11, Lcom/samsung/android/mdeccommon/obj/DeviceData;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    const-string v17, "com.samsung.android.mdecservice"

    const-string v18, "com.samsung.android.cmcsettings.view.CMCMainActivity"

    move-object v13, v11

    invoke-direct/range {v13 .. v21}, Lcom/samsung/android/mdeccommon/obj/DeviceData;-><init>(ZZZLjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 19
    invoke-virtual {v11, v9, v9, v9}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setActivations(ZZZ)V

    const-string v8, "1.0.10"

    .line 20
    invoke-virtual {v11, v8}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setDeviceDataVersion(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v11, v2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setHashedWifiMacAddress(Ljava/lang/String;)V

    .line 22
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getHashedBluetoothMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setHashedBtMacAddress(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v11, v9}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setCellularDevice(Z)V

    .line 24
    invoke-virtual {v11, v9}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setRespectiveControl(Z)V

    .line 25
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getStoredDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_7

    .line 26
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Already Exist Line"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_LINE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {v12, v3, v0, v10}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    return-void

    .line 28
    :cond_7
    invoke-static {v10, v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getValidMsisdnForEng(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 29
    invoke-virtual {v12, v1, v8}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getActiveServicesFromExist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 30
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v4

    move-object v4, v9

    move-object v5, v13

    move/from16 v6, p3

    move-object v7, v11

    .line 32
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->originalAddLine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/mdeccommon/obj/DeviceData;)V

    goto :goto_3

    :cond_8
    const/4 v8, 0x1

    const/4 v14, 0x0

    const-string v7, "1"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v4

    move-object v4, v9

    move-object v5, v13

    move-object v9, v14

    move/from16 v10, p3

    .line 33
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->replaceAddLine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/samsung/android/mdeccommon/obj/DeviceData;)V

    goto :goto_3

    .line 34
    :cond_9
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 35
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v8

    move-object v5, v13

    move/from16 v6, p3

    move-object v7, v11

    .line 36
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->updateForUpgrade(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/mdeccommon/obj/DeviceData;)V

    goto :goto_3

    .line 37
    :cond_a
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "device id is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {v12, v3, v0, v10}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    goto :goto_3

    :cond_b
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v6, v13

    move/from16 v7, p3

    .line 39
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->migrateLine(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_3
    return-void
.end method

.method private migrateLine(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p7

    .line 1
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "migrate line"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "1"

    const-string v10, "2"

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    .line 2
    invoke-static/range {v4 .. v10}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->migrateLineInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v2, v3, :cond_0

    move-object v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 4
    invoke-direct {p0, p1, v4, v5, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->afterProcedure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    invoke-direct {p0, v3, v2, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    :goto_0
    return-void
.end method

.method private originalAddLine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/mdeccommon/obj/DeviceData;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p6

    .line 1
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "only addline"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v15, p7

    .line 2
    invoke-static/range {v4 .. v15}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->addLineInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_LINE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_PRIMARY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v2, v3, :cond_1

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    :cond_1
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v3, v2, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    .line 7
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->afterProcedure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method private replaceAddLine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/samsung/android/mdeccommon/obj/DeviceData;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p10

    .line 1
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "addline for migrate"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v15, p11

    .line 2
    invoke-static/range {v4 .. v15}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->addLineInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_LINE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CONNECT_MAX_PRIMARY_DEVICES:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v2, v3, :cond_1

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    :cond_1
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v3, v2, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    .line 7
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->afterProcedure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method private sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onUpdatePrimaryDeviceForSimSlotChanged(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    :cond_0
    return-void
.end method

.method private updateForUpgrade(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/mdeccommon/obj/DeviceData;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p6

    .line 1
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "update device"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const-string v10, "2"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v17, p7

    .line 2
    invoke-static/range {v4 .. v17}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v2, v3, :cond_0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    .line 4
    invoke-direct {v0, v3, v4, v5, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->afterProcedure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    invoke-direct {v0, v3, v2, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    :goto_0
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
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--> start service"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "intent is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "slot_id"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "context is null"

    invoke-static {p1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    return-void

    .line 7
    :cond_1
    invoke-direct {p0, v2, p1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->doUpdateJoinedService(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 8
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "--> end service"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
