.class public Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;
.super Ljava/lang/Object;
.source "SettingsInternalCmcDataProcess.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static mEntitlementDataLock:Ljava/lang/Object;


# instance fields
.field private mCmcDeviceId:Ljava/lang/String;

.field private mCmcDeviceInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcLineInfo:Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

.field private mCmcOobeHistory:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mSaAccessToken:Ljava/lang/String;

.field private mSaUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mEntitlementDataLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mContext:Landroid/content/Context;

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mEntitlementDataLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->makeCmcLineInfo()Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcLineInfo:Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->makeCmcDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcDeviceInfoList:Ljava/util/ArrayList;

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->makeSamsungAccountInfo()V

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->makeGlobalDbInfo()V

    .line 8
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isMatchedDeviceInfo(Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string p2, "storedDeviceId is empty"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string p2, "newDeviceId is empty"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 7
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 8
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getWatchActiveServiceType()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getActivation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getMessageActivation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getCallActivation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getWatchActiveServiceType()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getDeviceVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getActivation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getMessageActivation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->getCallActivation()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isNeedUpdateDeviceInfo(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcDeviceInfoList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mCmcDeviceInfoList and newDeviceInfoList is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcDeviceInfoList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mCmcDeviceInfoList size is not same with newDeviceInfoList"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcDeviceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    .line 9
    invoke-direct {p0, v5, v7}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->isMatchedDeviceInfo(Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eq v4, v0, :cond_6

    move v1, v2

    :cond_6
    return v1

    .line 10
    :cond_7
    :goto_1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mCmcDeviceInfoList or newDeviceInfoList is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private isNeedUpdateLineInfo(Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcLineInfo:Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mCmcLineInfo and newLineInfo are null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcLineInfo:Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->isSameLineInfo(Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 5
    :cond_2
    :goto_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mCmcLineInfo or newLineInfo is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private isSameLineInfo(Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcLineInfo:Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getLineId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getLineId()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcLineInfo:Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getLineSlotIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcLineInfo:Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getLineName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcLineInfo:Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcLineInfo:Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getImpu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcLineInfo:Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getNmsAddrList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getLineSlotIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getLineName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getImpu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getNmsAddrList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcLineInfo:Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getPcscfAddrList()Ljava/util/ArrayList;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->getPcscfAddrList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz v0, :cond_7

    if-nez p1, :cond_2

    goto :goto_3

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 11
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v0, "pcscfAddrLists are not same"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 12
    :cond_3
    new-array v3, v2, [Ljava/lang/String;

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_4

    .line 13
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_4
    new-array v0, v2, [Ljava/lang/String;

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_5

    .line 15
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 16
    :cond_5
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 18
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 19
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    if-ge v1, v2, :cond_6

    .line 20
    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 22
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 23
    :cond_7
    :goto_3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v0, "storedPcscfAddrList or newPcscfAddrList are null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 24
    :cond_8
    :goto_4
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error case : storedLineId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), newLineId("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private makeCmcDeviceList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mContext is null"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->selectMyLineId(Z)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v2, "lineId is null"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    aput-object v2, v8, v0

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Devices;->TABLE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-string v7, "LINE_ID = ?"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v2, "deviceCursor is null"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 8
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "CMC_VERSION"

    .line 10
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "DEVICE_TYPE"

    .line 11
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Watch"

    .line 12
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "2"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    new-instance v5, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    invoke-direct {v5}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;-><init>()V

    const-string v6, "DEVICE_ID"

    .line 14
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setDeviceId(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5, v4}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setDeviceCategory(Ljava/lang/String;)V

    const-string v4, "DEVICE_NAME"

    .line 16
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    const-string v4, "IS_LINE_OWNER"

    .line 17
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v3, :cond_4

    const-string v4, "pd"

    goto :goto_1

    :cond_4
    const-string v4, "sd"

    .line 18
    :goto_1
    invoke-virtual {v5, v4}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setDeviceType(Ljava/lang/String;)V

    const-string v4, "ACTIVE_SERVICES"

    .line 19
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-static {v4}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getLocalActiveServices(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->makeLocalActiveServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setActiveServices(Ljava/util/ArrayList;)V

    const-string v4, "DEVICE_APPLICATION_DATA"

    .line 21
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-static {v4}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getLocalWatchActiveServiceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-direct {p0, v4}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->makeLocalWatchActiveServiceType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setWatchActiveServiceType(Ljava/util/ArrayList;)V

    const-string v4, "LINE_ID"

    .line 24
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setLineId(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v5, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setDeviceVersion(Ljava/lang/String;)V

    const-string v2, "DEVICE_DEVICE_DATA"

    .line 26
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 28
    invoke-static {v2}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getDeviceData(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 29
    invoke-virtual {v2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isActivation()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "1"

    const-string v7, "0"

    if-eqz v4, :cond_5

    move-object v4, v6

    goto :goto_2

    :cond_5
    move-object v4, v7

    :goto_2
    :try_start_1
    invoke-virtual {v5, v4}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setActivation(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isMessageActivation()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v6

    goto :goto_3

    :cond_6
    move-object v4, v7

    :goto_3
    invoke-virtual {v5, v4}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setMessageActivation(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isCallActivation()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    move-object v6, v7

    :goto_4
    invoke-virtual {v5, v6}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setCallActivation(Ljava/lang/String;)V

    .line 32
    :cond_8
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 33
    :cond_9
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception v1

    goto :goto_7

    :catch_0
    move-exception v2

    .line 34
    :try_start_2
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v4, "error is occurred"

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_6
    return-object v1

    .line 36
    :goto_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 37
    throw v1
.end method

.method private makeCmcLineInfo()Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;
    .locals 15

    const-string v0, " "

    const-string v1, "error is occurred"

    .line 1
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mContext is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    const/4 v2, 0x1

    .line 3
    invoke-direct {p0, v2}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->selectMyLineId(Z)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v1, "lineId is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    const-string v5, "_"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 7
    array-length v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    goto/16 :goto_a

    .line 8
    :cond_2
    aget-object v6, v5, v2

    const-string v7, "0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    aget-object v6, v5, v2

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 9
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v1, "sim slot is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_3
    const-string v12, "LINE_ID = ?"

    new-array v13, v2, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    .line 10
    iget-object v4, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Lines;->TABLE_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v9, v12

    move-object v10, v13

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_4

    .line 11
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v1, "lineCursor is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 12
    :cond_4
    new-instance v10, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    invoke-direct {v10}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;-><init>()V

    .line 13
    :try_start_0
    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->setLineSlotIndex(I)V

    .line 14
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "IMPU"

    .line 15
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->setImpu(Ljava/lang/String;)V

    const-string v2, "LINE_ID"

    .line 16
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->setLineId(Ljava/lang/String;)V

    const-string v2, "LINE_NAME"

    .line 17
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->setLineName(Ljava/lang/String;)V

    const-string v2, "MSISDN"

    .line 18
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->setMsisdn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_5
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v2

    .line 20
    :try_start_1
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$MultiServers;->TABLE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v7, v12

    move-object v8, v13

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_6

    .line 23
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v1, "multiServerCursor is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 24
    :cond_6
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "NMS_URI"

    .line 25
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PCSCF_URI"

    .line 26
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    .line 28
    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v7, v14

    .line 30
    :goto_2
    array-length v8, v4

    if-ge v7, v8, :cond_8

    .line 31
    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 32
    :cond_8
    invoke-virtual {v10, v6}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->setNmsAddrList(Ljava/util/ArrayList;)V

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_3
    array-length v5, v0

    if-ge v14, v5, :cond_9

    .line 36
    aget-object v5, v0, v14

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 37
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    .line 38
    :cond_a
    invoke-virtual {v10, v6}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->setNmsAddrList(Ljava/util/ArrayList;)V

    .line 39
    invoke-virtual {v10, v4}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->setPcscfAddrList(Ljava/util/ArrayList;)V

    goto :goto_6

    .line 40
    :cond_b
    :goto_4
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v4, "nmsStr or pcscfStr is empty(size)"

    invoke-static {v0, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 42
    :cond_c
    :goto_5
    :try_start_3
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v4, "nmsStr or pcscfStr is empty"

    invoke-static {v0, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    :cond_d
    :goto_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    .line 44
    :try_start_4
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :goto_7
    return-object v10

    .line 46
    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 47
    throw v0

    .line 48
    :goto_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 49
    throw v0

    .line 50
    :cond_e
    :goto_a
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v1, "lineId is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private makeGlobalDbInfo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mContext is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getGlobalSettingsDataInfo()Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v1, "globalDataInfo is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcDeviceId:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->getCmcOobeHistory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcOobeHistory:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcDeviceId:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_2

    .line 8
    iput-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcDeviceId:Ljava/lang/String;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcOobeHistory:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 10
    iput-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcOobeHistory:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private makeLocalActiveServices(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 5
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private makeLocalWatchActiveServiceType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v1, "activeServiceTypeStr is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, " "

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 5
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private makeSamsungAccountInfo()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mContext is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "USER_ID"

    .line 5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaUserId:Ljava/lang/String;

    const-string v1, "ACCESS_TOKEN"

    .line 6
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaAccessToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 8
    :try_start_1
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error is occurred"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaUserId:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_3

    .line 11
    iput-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaUserId:Ljava/lang/String;

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaAccessToken:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 13
    iput-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaAccessToken:Ljava/lang/String;

    :cond_4
    return-void

    :goto_2
    if-eqz v0, :cond_5

    .line 14
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 15
    :cond_5
    throw v1
.end method

.method private selectMyLineId(Z)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v0, "myDeviceId is empty"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Devices;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, ""

    .line 5
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "DEVICE_ID"

    .line 6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CMC_VERSION"

    .line 7
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_2

    const-string v3, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    const-string p1, "LINE_ID"

    .line 9
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    .line 10
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    :try_start_1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error is occurred"

    invoke-static {v0, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    :goto_1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lineId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :goto_2
    if-eqz v1, :cond_5

    .line 14
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 15
    :cond_5
    throw p1
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCmcDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getCmcDeviceInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcDeviceInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCmcLineInfo()Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcLineInfo:Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    return-object v0
.end method

.method public getCmcOobeHistory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcOobeHistory:Ljava/lang/String;

    return-object v0
.end method

.method public getSamsungUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaUserId:Ljava/lang/String;

    return-object v0
.end method

.method public updateLocalDevicesInfo()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mEntitlementDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->makeCmcDeviceList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-direct {p0, v1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->isNeedUpdateDeviceInfo(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateLocalDevicesInfo isNeedUpdate true"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcDeviceInfoList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateLocalGlobalDataInfo()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->makeGlobalDbInfo()V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLocalGlobalDataInfo : mCmcDeviceId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), mCmcOobeHistory("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcOobeHistory:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateLocalLineInfo()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mEntitlementDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->makeCmcLineInfo()Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    move-result-object v1

    .line 3
    invoke-direct {p0, v1}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->isNeedUpdateLineInfo(Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateLocalLineInfo isNeedUpdate true"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mCmcLineInfo:Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateLocalSaInfo()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mContext is null"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$SaInfo;->TABLE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v2, "saCursor is null"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const-string v3, ")"

    const-string v4, "), mSaAccessToken("

    const/4 v5, 0x1

    const-string v6, ""

    if-ge v2, v5, :cond_4

    .line 6
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaUserId:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    iput-object v6, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaUserId:Ljava/lang/String;

    move v1, v5

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaAccessToken:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    iput-object v6, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaAccessToken:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v5, v1

    .line 10
    :goto_0
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saCursor is empty : mSaUserId("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaUserId:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaAccessToken:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v5

    .line 12
    :cond_4
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "USER_ID"

    .line 13
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "ACCESS_TOKEN"

    .line 14
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v2, :cond_5

    move-object v2, v6

    :cond_5
    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    move-object v6, v7

    .line 15
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaUserId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 16
    iput-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaUserId:Ljava/lang/String;

    move v1, v5

    .line 17
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaAccessToken:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 18
    iput-object v6, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaAccessToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v5

    .line 19
    :cond_8
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v2

    .line 20
    :try_start_1
    sget-object v5, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    const-string v6, "error is occurred"

    invoke-static {v5, v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 22
    :goto_3
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saCursor is not empty : mSaUserId("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaUserId:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalCmcDataProcess;->mSaAccessToken:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 23
    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 24
    throw v1
.end method
