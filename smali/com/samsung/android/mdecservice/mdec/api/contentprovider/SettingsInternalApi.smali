.class public Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;
.super Landroid/content/ContentProvider;
.source "SettingsInternalApi.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCmcActivationChangeObserver:Landroid/database/ContentObserver;

.field private mCmcCallActivationChangeObserver:Landroid/database/ContentObserver;

.field private mCmcMessageActivationChangeObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDevicesObserver:Landroid/database/ContentObserver;

.field private mGlobalDataInfoObserver:Landroid/database/ContentObserver;

.field private mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

.field private mLinesObserver:Landroid/database/ContentObserver;

.field private mMultiServersObserver:Landroid/database/ContentObserver;

.field private mNetworkModeChangeObserver:Landroid/database/ContentObserver;

.field private mSaInfoObserver:Landroid/database/ContentObserver;

.field private mWatchActivationChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$1;-><init>(Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mCmcActivationChangeObserver:Landroid/database/ContentObserver;

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$2;-><init>(Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mCmcMessageActivationChangeObserver:Landroid/database/ContentObserver;

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$3;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$3;-><init>(Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mCmcCallActivationChangeObserver:Landroid/database/ContentObserver;

    .line 6
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$4;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$4;-><init>(Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mWatchActivationChangeObserver:Landroid/database/ContentObserver;

    .line 7
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$5;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$5;-><init>(Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mNetworkModeChangeObserver:Landroid/database/ContentObserver;

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$6;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$6;-><init>(Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mLinesObserver:Landroid/database/ContentObserver;

    .line 9
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$7;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$7;-><init>(Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mDevicesObserver:Landroid/database/ContentObserver;

    .line 10
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$8;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$8;-><init>(Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mMultiServersObserver:Landroid/database/ContentObserver;

    .line 11
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$9;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$9;-><init>(Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mSaInfoObserver:Landroid/database/ContentObserver;

    .line 12
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$10;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi$10;-><init>(Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mGlobalDataInfoObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->updateDataInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->updateSaInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->updateGlobalDataInfo()V

    return-void
.end method

.method private executeCmcActivityInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$AppType;Z)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "executeCmcActivityInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "android.intent.action.MAIN"

    .line 4
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const p3, 0x10008000

    .line 5
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 p3, 0x10000

    .line 6
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p3, "android.intent.category.LAUNCHER"

    .line 7
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p5, :cond_3

    const/4 p3, 0x0

    .line 9
    sget-object p5, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$AppType;->CALL:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$AppType;

    if-ne p4, p5, :cond_0

    const-string p3, "CALLAPP"

    goto :goto_0

    .line 10
    :cond_0
    sget-object p5, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$AppType;->MESSAGE:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$AppType;

    if-ne p4, p5, :cond_1

    const-string p3, "MESSAGEAPP"

    goto :goto_0

    .line 11
    :cond_1
    sget-object p5, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$AppType;->OTHERS:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$AppType;

    if-ne p4, p5, :cond_2

    const-string p3, "OTHERAPP"

    :cond_2
    :goto_0
    const-string p4, "extra_reason_cmcopen"

    .line 12
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    :cond_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 14
    :catch_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string p2, "execute activity failed"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private getActivations(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getActivations"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getDeviceInfoInternal(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "result"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getActivation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "activation"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getMessageActivation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "message_activation"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getCallActivation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "call_activation"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private getCallAllowedSdByPd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getCallAllowedSdByPd"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getDeviceInfoInternal(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->SERVICE_TYPE_CALL_FORKING:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->getStrValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 6
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call_allowed_sd_by_pd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    .line 8
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "call_allowed_sd_by_pd"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method private getCmcActivation()Landroid/os/Bundle;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcActivation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "result"

    .line 4
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "cmc_activation"

    .line 5
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method private getCmcSupported()Landroid/os/Bundle;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->sd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 3
    :goto_1
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceType("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "), isCmcSupported("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "result"

    .line 5
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "cmc_supported"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private getDeviceCategory(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getDeviceInfoInternal(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceCategory()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceCategory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Watch"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BT-Watch"

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed deviceCategory to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "result"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, ""

    :cond_2
    const-string v1, "device_category"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDeviceIdList()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getCmcDeviceInfoList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceIdList("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), deviceIdListSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "result"

    .line 8
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "device_id_list"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    .line 10
    :cond_3
    :goto_1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cmcDeviceInfoList is null or data is not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v0, "requestedDeviceId is empty"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getCmcDeviceInfoList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v0, "deviceInfoList is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 5
    :cond_1
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceInfoListSize : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private getDeviceInfoInternal(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Param is not exist"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "device_id"

    const-string v2, ""

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deviceInfo is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    return-object p1
.end method

.method private getDeviceInfoWrapper(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getDeviceInfoWrapper"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getDeviceInfoInternal(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->SERVICE_TYPE_MESSAGE_SYNC:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->getStrValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    goto :goto_0

    .line 6
    :cond_2
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->SERVICE_TYPE_CALL_FORKING:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->getStrValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    .line 7
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "result"

    .line 8
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "device_name"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceCategory()Ljava/lang/String;

    move-result-object v2

    const-string v4, "device_category"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "device_type"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "message_allowed_sd_by_pd"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "call_allowed_sd_by_pd"

    .line 13
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getActivation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "activation"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getMessageActivation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "message_activation"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getCallActivation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "call_activation"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private getDeviceName(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getDeviceInfoInternal(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "result"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "device_name"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDeviceType(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getDeviceInfoInternal(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "result"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "device_type"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getFre()Landroid/os/Bundle;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mInternalDataProcess is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getCmcOobeHistory()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->isExistOobeHistory(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExistOobeHistory : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "result"

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "Fre"

    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method private getLineActiveSimSlot()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getCmcLineInfo()Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "lineInfo is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getLineSlotIndex()I

    move-result v0

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simSlotIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "result"

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "active_sim_slot"

    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method private getLineId()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getCmcLineInfo()Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "lineInfo is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getLineId()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "result"

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "line_id"

    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getLineImpu()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getCmcLineInfo()Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "lineInfo is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getImpu()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "impu : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "result"

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "impu"

    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getLineInfoWrapper()Landroid/os/Bundle;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getLineInfoWrapper"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getCmcLineInfo()Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "lineInfo is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "result"

    .line 5
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getLineId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "line_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    const-string v3, "msisdn"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getImpu()Ljava/lang/String;

    move-result-object v2

    const-string v3, "impu"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getLineSlotIndex()I

    move-result v2

    const-string v3, "active_sim_slot"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getNmsAddrList()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "nms_addr_list"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getPcscfAddrList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "pcscf_addr_list"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method private getLineMsisdn()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getCmcLineInfo()Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "lineInfo is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msisdn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "result"

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "msisdn"

    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getLineNmsAddrList()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getCmcLineInfo()Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "lineInfo is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getNmsAddrList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nmsAddrList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "result"

    .line 7
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "nms_addr_list"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private getLinePcscfAddrList()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getCmcLineInfo()Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "lineInfo is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getPcscfAddrList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pcscfAddrList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "result"

    .line 7
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pcscf_addr_list"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private getMessageAllowedSdByPd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getMessageAllowedSdByPd"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getDeviceInfoInternal(Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->SERVICE_TYPE_MESSAGE_SYNC:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->getStrValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 6
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message_allowed_sd_by_pd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    .line 8
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "message_allowed_sd_by_pd"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method private getOwnActivationTime()Landroid/os/Bundle;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 2
    :cond_0
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcActivationType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    const-string v4, "result"

    .line 4
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "own_activation_time"

    .line 5
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v2
.end method

.method private getOwnCallActivationTime()Landroid/os/Bundle;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 2
    :cond_0
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcCallActivationTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    const-string v4, "result"

    .line 4
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "own_call_activation_time"

    .line 5
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v2
.end method

.method private getOwnDeviceId()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mInternalDataProcess is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ownDeviceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "result"

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "own_device_id"

    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getOwnDeviceInfo()Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mInternalDataProcess is null"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getCmcDeviceInfoList()Ljava/util/ArrayList;

    move-result-object v2

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceListSize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    .line 10
    :cond_4
    :goto_1
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ownDeviceId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") or cmcDeviceInfoList is null"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getOwnDeviceName()Landroid/os/Bundle;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getOwnDeviceName"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getOwnDeviceInfo()Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "result"

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "own_device_name"

    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getOwnDeviceType()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->sd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getDefaultDeviceType()Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v0

    .line 4
    :cond_0
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ownDeviceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "result"

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "own_device_type"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getOwnMessageActivationTime()Landroid/os/Bundle;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 2
    :cond_0
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcMessageActivationTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    const-string v4, "result"

    .line 4
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "own_message_activation_time"

    .line 5
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v2
.end method

.method private getOwnNetworkMode()Landroid/os/Bundle;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcNetworkType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;->useMobileData:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcNetworkType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "result"

    .line 4
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "network_mode"

    .line 5
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method private getOwnServiceVersion()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcServiceVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmcServiceVersion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "own_service_version"

    .line 5
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getPdDeviceName()Landroid/os/Bundle;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getPdDeviceName"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getCmcDeviceInfoList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pd"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pdDeviceName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "result"

    .line 9
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pd_device_name"

    .line 10
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1

    .line 11
    :cond_3
    :goto_0
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v2, "cmcDeviceInfoList is null or data is not exist"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getSaInfo()Landroid/os/Bundle;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSaInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mInternalDataProcess is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "result"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getSamsungUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "samsung_user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getWatchActivation()Landroid/os/Bundle;
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getWatchActivation"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getOwnDeviceInfo()Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getWatchActiveServiceType()Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcWatchActivation(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 5
    :goto_0
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "watchActiveServiceTypeList("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "), isCmcWatchActivation("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v5, "result"

    .line 7
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    move v3, v4

    :cond_1
    const-string v0, "watch_activation"

    .line 9
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method private getWatchRegistered(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mInternalDataProcess is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "watch_register"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "result"

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Param is not exist"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_1
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "bt_mac_address"

    .line 8
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v3, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getSamsungUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->generateSHA256HashedResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    sget-object v4, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "watchBtId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), hashedBtMac("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v4, "Not found watch"

    if-nez p1, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->getCmcDeviceInfoList()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_3

    .line 13
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 14
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    if-nez v4, :cond_5

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Found watch"

    invoke-static {p1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    return-object v0

    .line 18
    :cond_7
    :goto_1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getWatchSupported()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "watch_supported"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private methodMatchInterface([Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    const-string v1, "invalid_request"

    const-string v2, "error_reason"

    const-string v3, "result"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string p2, "mInternalDataProcess is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_0
    aget-object v0, p1, v4

    const-string v5, "v1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    .line 7
    aget-object p1, p1, v0

    const-string v0, "open_cmc_setting_menu"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->openCmcSettingMenu(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    move-object v5, p1

    goto/16 :goto_1

    :cond_1
    const-string v0, "get_cmc_supported"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getCmcSupported()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v0, "get_watch_supported"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getWatchSupported()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v0, "get_fre"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getFre()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string v0, "get_cmc_activation"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getCmcActivation()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-string v0, "get_watch_activation"

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getWatchActivation()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-string v0, "get_own_device_type"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getOwnDeviceType()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_7
    const-string v0, "get_own_device_id"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getOwnDeviceId()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_8
    const-string v0, "get_own_device_name"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getOwnDeviceName()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_9
    const-string v0, "get_own_service_version"

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getOwnServiceVersion()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_a
    const-string v0, "get_own_network_mode"

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getOwnNetworkMode()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_b
    const-string v0, "get_own_activation_time"

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getOwnActivationTime()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_c
    const-string v0, "get_own_message_activation_time"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getOwnMessageActivationTime()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_d
    const-string v0, "get_own_call_activation_time"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getOwnCallActivationTime()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_e
    const-string v0, "get_line_id"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getLineId()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_f
    const-string v0, "get_line_msisdn"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getLineMsisdn()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_10
    const-string v0, "get_line_impu"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getLineImpu()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_11
    const-string v0, "get_line_nms_addr_list"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getLineNmsAddrList()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_12
    const-string v0, "get_line_pcscf_addr_list"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getLinePcscfAddrList()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_13
    const-string v0, "get_line_active_sim_slot"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getLineActiveSimSlot()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_14
    const-string v0, "get_device_id_list"

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getDeviceIdList()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_15
    const-string v0, "get_device_name"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 51
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getDeviceName(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_16
    const-string v0, "get_device_category"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 53
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getDeviceCategory(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_17
    const-string v0, "get_device_type"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 55
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getDeviceType(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_18
    const-string v0, "get_pd_device_name"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getPdDeviceName()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_19
    const-string v0, "get_line_info"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getLineInfoWrapper()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_1a
    const-string v0, "get_device_info"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 61
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getDeviceInfoWrapper(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_1b
    const-string v0, "get_message_allowed_sd_by_pd"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 63
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getMessageAllowedSdByPd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_1c
    const-string v0, "get_call_allowed_sd_by_pd"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 65
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getCallAllowedSdByPd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_1d
    const-string v0, "get_watch_registered"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 67
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getWatchRegistered(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_1e
    const-string v0, "get_activations"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 69
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getActivations(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    :cond_1f
    const-string p2, "get_sa_info"

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->getSaInfo()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_0

    .line 72
    :cond_20
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string p2, "method is invalid"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_21
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string p2, "method version is invalid"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-nez v5, :cond_22

    .line 74
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 75
    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-object v5
.end method

.method private openCmcSettingMenu(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "openCmcSettingMenu"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v0, "extra is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "auto_activation"

    .line 4
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 5
    iget-object v4, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$AppType;->OTHERS:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$AppType;

    const-string v5, "com.samsung.android.mdecservice"

    const-string v6, "com.samsung.android.cmcsettings.view.CMCMainActivity"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->executeCmcActivityInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$AppType;Z)Z

    move-result p1

    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private updateDataInfo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mInternalDataProcess is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->updateLocalLineInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "content://com.samsung.android.mdec.provider.setting/lines"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->notifyChange(Landroid/net/Uri;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->updateLocalDevicesInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "content://com.samsung.android.mdec.provider.setting/devices"

    .line 6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->notifyChange(Landroid/net/Uri;)V

    :cond_2
    return-void
.end method

.method private updateGlobalDataInfo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mInternalDataProcess is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->updateLocalGlobalDataInfo()V

    return-void
.end method

.method private updateSaInfo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mInternalDataProcess is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->updateLocalSaInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "content://com.samsung.android.mdec.provider.setting/sainfo"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->notifyChange(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), extras("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "result"

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p2

    :cond_0
    const-string v0, "/"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    array-length v0, p1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->methodMatchInterface([Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    :goto_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string p3, "method is invalid"

    invoke-static {p1, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyChange(Landroid/net/Uri;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onCreate()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mContext is null"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->initGlobalProvider(Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "cmc_activation"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mCmcActivationChangeObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "cmc_message_activation"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mCmcMessageActivationChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "cmc_call_activation"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mCmcCallActivationChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "cmc_watch_activation"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mWatchActivationChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "cmc_network_type"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mNetworkModeChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 10
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Lines;->TABLE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mLinesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Devices;->TABLE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mDevicesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$MultiServers;->TABLE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mMultiServersObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mSaInfoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 14
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$GlobalSettingsData;->TABLE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mGlobalDataInfoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 15
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->mInternalDataProcess:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/lines"

    .line 16
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->notifyChange(Landroid/net/Uri;)V

    const-string v0, "content://com.samsung.android.mdec.provider.setting/devices"

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->notifyChange(Landroid/net/Uri;)V

    const-string v0, "content://com.samsung.android.mdec.provider.setting/sainfo"

    .line 18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApi;->notifyChange(Landroid/net/Uri;)V

    return v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
