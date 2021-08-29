.class public Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;
.super Landroid/app/IntentService;
.source "ResetService.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static final mLockObject:Ljava/lang/Object;


# instance fields
.field private mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

.field private mPdCount:I

.field private mProvisionedCount:I

.field mdecDeleteDeviceListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mLockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "ResetService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mPdCount:I

    .line 3
    iput v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mProvisionedCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mPdCount:I

    return p0
.end method

.method static synthetic access$010(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mPdCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mPdCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mProvisionedCount:I

    return p0
.end method

.method static synthetic access$110(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mProvisionedCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mProvisionedCount:I

    return v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mLockObject:Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized resetAllData(Landroid/content/Context;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resetAllData"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->clearAll(Landroid/content/Context;)V

    .line 3
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 4
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 5
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->all:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->resetActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)V

    .line 6
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSAAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->removeinOOBEHistory(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "oobeinfo remove failed"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->deleteAllSDData(Landroid/content/Context;)V

    .line 11
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->deleteAllPDData(Landroid/content/Context;)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getPrimaryDeviceListForDelete()Ljava/util/ArrayList;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mPdCount:I

    if-lez v1, :cond_1

    .line 14
    sget-object v1, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "PD data available for Delete"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 16
    sget-object v2, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pd.getLineOwnerDeviceId() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deletePrimaryDevice(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 18
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    goto :goto_1

    .line 19
    :cond_1
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "PD data is ! available for Delete"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getProvisionedDeviceList()Ljava/util/ArrayList;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mProvisionedCount:I

    if-lez v0, :cond_3

    .line 22
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "P-SD data available for Delete"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 24
    sget-object v1, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "psd.getDeviceId() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deleteProvisionedDevice(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_2

    .line 26
    :cond_3
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "P-SD data is ! available for Delete"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    .line 4
    new-instance v0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService$1;-><init>(Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mdecDeleteDeviceListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;

    .line 5
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {v1, v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerDeleteDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mPdCount:I

    .line 7
    iput v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mProvisionedCount:I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mdecDeleteDeviceListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterDeleteDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start service"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "intent is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->resetAllData(Landroid/content/Context;)V

    .line 4
    iget v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mPdCount:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mProvisionedCount:I

    if-lez v0, :cond_2

    .line 5
    :cond_1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x2710

    .line 6
    :try_start_0
    sget-object v2, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->mLockObject:Ljava/lang/Object;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception v1

    .line 7
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->updateDefaultAcs(Landroid/content/Context;)Z

    .line 10
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->deleteEntitlementProviderData(Landroid/content/Context;)Z

    const-string v0, "update_device_type"

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pd"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcDeviceType(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;)V

    goto :goto_1

    :cond_3
    const-string v0, "sd"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->sd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcDeviceType(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;)V

    .line 16
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcOobe(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationForSkt(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 19
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;

    move-result-object p1

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->setGlobalSettingsDataInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->all:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->resetActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)V

    .line 23
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object p1

    .line 24
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResetService : cmc_activation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->storeDumpLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "power"

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/IntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_5

    const-string v0, "[CMC] reset for test-rs"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :cond_5
    return-void

    .line 27
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
