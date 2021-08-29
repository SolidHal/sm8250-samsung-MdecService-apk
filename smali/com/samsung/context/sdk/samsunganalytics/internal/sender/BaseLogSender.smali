.class public abstract Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;
.super Ljava/lang/Object;
.source "BaseLogSender.java"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;


# instance fields
.field protected configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field protected context:Landroid/content/Context;

.field protected deviceInfo:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

.field protected executor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

.field protected manager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 4
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->executor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    .line 5
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->deviceInfo:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    .line 6
    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->getInstance(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->manager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    return-void
.end method


# virtual methods
.method protected getLogType(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;"
        }
    .end annotation

    const-string v0, "t"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->getTypeForServer(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object p1

    return-object p1
.end method

.method protected insert(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->manager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    new-instance v7, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    const-string v1, "t"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v1, "ts"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->setCommonParamToLog(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->makeBodyString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->getLogType(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    invoke-virtual {v0, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->insert(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    return-void
.end method

.method protected makeBodyString(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->makeDelimiterString(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected setCommonParamToLog(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->deviceInfo:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "la"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->deviceInfo:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getMcc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->deviceInfo:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getMcc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mcc"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->deviceInfo:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getMnc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->deviceInfo:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getMnc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mnc"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->deviceInfo:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dm"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->deviceInfo:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getAndroidVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "do"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->deviceInfo:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "av"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uv"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getAuidType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "at"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->deviceInfo:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fv"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->deviceInfo:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getTimeZoneOffset()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tz"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
