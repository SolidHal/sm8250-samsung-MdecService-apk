.class public Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;
.super Landroid/app/Service;
.source "MdecEventHandler.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MDEC_EVT_RUNNING_MODE:Ljava/lang/String; = "MDEC_EVT_RUNNING_MODE"

.field public static mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;


# instance fields
.field private mCMCActivationObserver:Landroid/database/ContentObserver;

.field private mDeviceNameObserver:Landroid/database/ContentObserver;

.field mMultiUserModeEventReceiver:Lcom/samsung/android/mdecservice/mdec/receivers/explicit/MultiUserModeEventReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler$1;-><init>(Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mDeviceNameObserver:Landroid/database/ContentObserver;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler$2;-><init>(Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mCMCActivationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static initCMC(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->startMdecEventHandler(Landroid/content/Context;Z)V

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcOobe(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    if-ne v0, v2, :cond_0

    .line 3
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->restoreCMCActivation(Landroid/content/Context;)V

    .line 4
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->isEmOrUpsmEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->disableCMCForMPSMorMUM(Landroid/content/Context;)V

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->isActivatedGearOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "mdec_activation_service_start"

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    .line 10
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->isCmcActivated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "updating... setting db infoamtion"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->refresh(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/MdecBroadcastSender;->SendCMCActivatedIntent(Landroid/content/Context;)V

    .line 14
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivationForSkt(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne v0, v1, :cond_2

    .line 15
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationForSkt(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 16
    :cond_2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getSecondaryDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    invoke-static {p0, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->resetUI(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 18
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalyticsService;->schedule(Landroid/content/Context;)V

    return-void
.end method

.method private static isActivatedGearOnly(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcWatchActivation(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object p0

    .line 3
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmc activation status - cmc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cmc_watch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCmcActivated(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmc activation status - cmc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private printEntitlementProviderData(Landroid/content/Context;)V
    .locals 32

    const-string v1, "DEVICE_DEVICE_DATA"

    const-string v2, "deviceData("

    const-string v3, "DEVICE_APPLICATION_DATA"

    const-string v4, "), applicationData("

    const-string v5, "CMC_VERSION"

    const-string v6, "), deviceVersion("

    const-string v7, "), activeServices("

    const-string v8, "xxxxx"

    const-string v9, "DEVICE_TYPE"

    const-string v10, "), deviceType("

    const-string v11, "DEVICE_NAME"

    const-string v12, "), deviceName("

    const-string v13, "DEVICE_ID"

    const-string v14, "deviceId("

    const-string v15, "LINE_ID"

    move-object/from16 v16, v1

    const-string v1, "error is occurred"

    move-object/from16 v17, v2

    const-string v2, ")"

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "esDumpLog is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$GlobalSettingsData;->TABLE_URI:Landroid/net/Uri;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v24, v3

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 4
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v4

    :try_start_1
    sget-object v4, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v19, v5

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v20, v6

    :try_start_3
    const-string v6, "globalSettingsDataCursorCount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcDeviceId("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CMC_DEVICE_ID"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v4, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    sget-object v5, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_18

    :catch_3
    move-exception v0

    move-object/from16 v18, v4

    :goto_1
    move-object/from16 v19, v5

    :goto_2
    move-object/from16 v20, v6

    .line 8
    :goto_3
    :try_start_4
    sget-object v4, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_2

    .line 10
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 11
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    sget-object v26, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 12
    :try_start_5
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    sget-object v5, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saCursorCount : "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "USER_ID"

    .line 14
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 15
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "guid("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), mcc("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "MCC"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), regionMcc("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "REGION_MCC"

    .line 16
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    sget-object v6, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_7

    :cond_3
    const/4 v3, 0x0

    :goto_5
    if-eqz v4, :cond_4

    .line 18
    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_17

    :catch_5
    move-exception v0

    const/4 v3, 0x0

    .line 19
    :goto_7
    :try_start_7
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v4, :cond_4

    goto :goto_6

    .line 21
    :cond_4
    :goto_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "guid is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    sget-object v26, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Lines;->TABLE_URI:Landroid/net/Uri;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 24
    :try_start_8
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    sget-object v5, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v21, v7

    :try_start_9
    const-string v7, "lineCursorCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_9
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lineId("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), impu("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "IMPU"

    .line 27
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), ownerDeviceId("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "OWNER_DEVICE_ID"

    .line 28
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), msisdn("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "MSISDN"

    .line 29
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->isShipBuild()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 31
    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_6
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    sget-object v6, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_9

    :cond_7
    if-eqz v4, :cond_8

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    goto/16 :goto_16

    :catch_7
    move-exception v0

    move-object/from16 v21, v7

    .line 33
    :goto_a
    :try_start_a
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v4, :cond_8

    .line 35
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    sget-object v26, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Devices;->TABLE_URI:Landroid/net/Uri;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 37
    :try_start_b
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    sget-object v5, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deviceCursorCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_c
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), lineId("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "), isLineOwner("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "IS_LINE_OWNER"

    .line 43
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v5, v21

    :try_start_c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "ACTIVE_SERVICES"

    .line 44
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object/from16 v6, v20

    :try_start_d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v7, v19

    move-object/from16 v19, v15

    .line 45
    :try_start_e
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object/from16 v15, v18

    :try_start_f
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-object/from16 v20, v7

    move-object/from16 v18, v15

    move-object/from16 v15, v24

    .line 46
    :try_start_10
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-object/from16 v24, v15

    move-object/from16 v15, v17

    :try_start_11
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v6

    :try_start_12
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-static {}, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->isShipBuild()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 49
    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_9
    sget-object v7, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    move-object/from16 v21, v3

    sget-object v3, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v7, v3, v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    sget-object v3, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-object/from16 v3, v21

    move-object/from16 v21, v5

    move-object/from16 v31, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v31

    goto/16 :goto_c

    :catch_8
    move-exception v0

    goto :goto_10

    :catch_9
    move-exception v0

    move-object/from16 v17, v15

    goto :goto_d

    :catch_a
    move-exception v0

    move-object/from16 v24, v15

    goto :goto_d

    :catch_b
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v18, v15

    goto :goto_d

    :catch_c
    move-exception v0

    move-object/from16 v20, v7

    :goto_d
    move-object/from16 v15, v16

    goto :goto_e

    :catch_d
    move-exception v0

    move-object/from16 v15, v16

    move-object/from16 v20, v19

    :goto_e
    move-object/from16 v16, v6

    goto :goto_10

    :catch_e
    move-exception v0

    move-object/from16 v15, v16

    move-object/from16 v16, v20

    goto :goto_f

    :cond_a
    move-object/from16 v15, v16

    move-object/from16 v16, v20

    move-object/from16 v5, v21

    move-object/from16 v20, v19

    if-eqz v4, :cond_b

    goto :goto_11

    :catchall_3
    move-exception v0

    goto/16 :goto_15

    :catch_f
    move-exception v0

    move-object/from16 v15, v16

    move-object/from16 v16, v20

    move-object/from16 v5, v21

    :goto_f
    move-object/from16 v20, v19

    .line 52
    :goto_10
    :try_start_13
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v4, :cond_b

    .line 54
    :goto_11
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    sget-object v26, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$ProvisionedDevices;->TABLE_URI:Landroid/net/Uri;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 56
    :try_start_14
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    sget-object v4, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "provisioned deviceCursorCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_12
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DEVICE_ACTIVE_SERVICES"

    .line 61
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v20

    .line 62
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v4

    move-object/from16 v8, v24

    .line 63
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    move-object/from16 v5, v17

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v5

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 65
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    move-object/from16 v16, v2

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    move-object/from16 v18, v7

    move-object/from16 v24, v8

    move-object/from16 v2, v16

    move-object/from16 v16, v20

    move-object/from16 v5, v21

    move-object/from16 v20, v6

    goto/16 :goto_12

    :cond_c
    if-eqz v3, :cond_d

    goto :goto_13

    :catchall_4
    move-exception v0

    goto :goto_14

    :catch_10
    move-exception v0

    .line 67
    :try_start_15
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    if-eqz v3, :cond_d

    .line 69
    :goto_13
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_d
    return-void

    :goto_14
    if-eqz v3, :cond_e

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_e
    throw v0

    :goto_15
    if-eqz v4, :cond_f

    .line 71
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_f
    throw v0

    :goto_16
    if-eqz v4, :cond_10

    .line 73
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_10
    throw v0

    :goto_17
    if-eqz v4, :cond_11

    .line 75
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_11
    throw v0

    :goto_18
    if-eqz v3, :cond_12

    .line 77
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_12
    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->printEntitlementProviderData(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump Cmc from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " without "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->prepareDump(Ljava/io/PrintWriter;)V

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    if-eqz v0, :cond_2

    .line 11
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MDEC/"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->increaseIndent(Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->decreaseIndent(Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "esDump is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->cleanDump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->registerIntentReceiver()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mDeviceNameObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cmc_activation"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mCMCActivationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v1, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mEsDumpLog:Lcom/samsung/android/mdeccommon/log/SimpleEventLog;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->unregisterIntentReceiver()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mDeviceNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mCMCActivationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 5
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    const-string v0, "MDEC_EVT_RUNNING_MODE"

    .line 1
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p3

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcOobe(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, p3

    .line 3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcWatchActivation(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne v2, v4, :cond_2

    move p3, v3

    :cond_2
    if-nez v1, :cond_4

    if-nez p3, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const/4 p3, 0x2

    .line 5
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    .line 6
    :cond_4
    :goto_2
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCommand Sticky : hasoobe("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), isWatchActivation("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "), stickyMode("

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-super {p0, p1, p2, v3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method registerIntentReceiver()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mMultiUserModeEventReceiver:Lcom/samsung/android/mdecservice/mdec/receivers/explicit/MultiUserModeEventReceiver;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/receivers/explicit/MultiUserModeEventReceiver;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/mdec/receivers/explicit/MultiUserModeEventReceiver;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mMultiUserModeEventReceiver:Lcom/samsung/android/mdecservice/mdec/receivers/explicit/MultiUserModeEventReceiver;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_BACKGROUND"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_FOREGROUND"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_ADDED"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mMultiUserModeEventReceiver:Lcom/samsung/android/mdecservice/mdec/receivers/explicit/MultiUserModeEventReceiver;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->registerReceiverForAll(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method unregisterIntentReceiver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mMultiUserModeEventReceiver:Lcom/samsung/android/mdecservice/mdec/receivers/explicit/MultiUserModeEventReceiver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mMultiUserModeEventReceiver:Lcom/samsung/android/mdecservice/mdec/receivers/explicit/MultiUserModeEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->mMultiUserModeEventReceiver:Lcom/samsung/android/mdecservice/mdec/receivers/explicit/MultiUserModeEventReceiver;

    :cond_0
    return-void
.end method
