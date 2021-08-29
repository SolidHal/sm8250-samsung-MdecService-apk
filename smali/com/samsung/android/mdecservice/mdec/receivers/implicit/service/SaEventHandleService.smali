.class public Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;
.super Landroid/app/IntentService;
.source "SaEventHandleService.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final TIMEOUT_VALUE:I

.field private mContext:Landroid/content/Context;

.field private mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

.field private mRefreshEventListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;

.field private mSaLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SaEventHandleService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mSaLock:Ljava/lang/Object;

    const/16 v0, 0x3a98

    .line 3
    iput v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->TIMEOUT_VALUE:I

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/a;-><init>(Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mRefreshEventListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;

    return-void
.end method


# virtual methods
.method public synthetic a(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefresh result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " errorCode = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object p1

    .line 3
    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getProvisionedDeviceList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provisionedDeviceInfoList.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 7
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isActivation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    .line 9
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceName of provisioned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 11
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00af

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->postNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->sd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne p1, p2, :cond_3

    .line 14
    iget-object p1, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getPrimaryDeviceList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 15
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetUserInformation: !PD: primaryDeviceInfoList.size( ) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 17
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isActivation()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 18
    iget-object p1, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0f00b0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p2, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->postNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Unknown device type"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mSaLock:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mSaLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 25
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "end wait"

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mSaLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mSaLock:Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mRefreshEventListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerRefreshEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mRefreshEventListener:Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterRefreshEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "intent is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start service : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.osp.app.signin"

    .line 7
    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 8
    array-length v0, v0

    if-lez v0, :cond_1

    .line 9
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "receive samsung account log out intent .. but still log in"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 10
    :cond_1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "receive samsung account log out intent... log-out done"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->clearAll(Landroid/content/Context;)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->updateDefaultAcs(Landroid/content/Context;)Z

    .line 13
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->deleteEntitlementProviderData(Landroid/content/Context;)Z

    .line 14
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;

    move-result-object v0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->setGlobalSettingsDataInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x69

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getSAAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v2

    .line 19
    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne v2, v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    .line 20
    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 21
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->isExistOobeHistory(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcOobe(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;)V

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    if-eqz v0, :cond_4

    .line 24
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->refresh(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mSaLock:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start wait"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->mSaLock:Ljava/lang/Object;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 29
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 30
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 31
    :cond_5
    :goto_2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/service/SaEventHandleService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start service : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
