.class public Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;
.super Ljava/lang/Object;
.source "SystemConfigHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getAirplaneModeStatus(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$AIRPLANE_MODE_STATUS;
    .locals 3

    const-class v0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 2
    monitor-exit v0

    return-object p0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 4
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$AIRPLANE_MODE_STATUS;->on:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$AIRPLANE_MODE_STATUS;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$AIRPLANE_MODE_STATUS;->off:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$AIRPLANE_MODE_STATUS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDataRoamingStatus(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$DATA_ROAMING_STATUS;
    .locals 3

    const-class v0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 2
    monitor-exit v0

    return-object p0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "data_roaming"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 4
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$DATA_ROAMING_STATUS;->on:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$DATA_ROAMING_STATUS;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$DATA_ROAMING_STATUS;->off:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$DATA_ROAMING_STATUS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 2
    monitor-exit v0

    return-object p0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "device_name"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getMobileDataStatus(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$MOBILE_DATA_STATUS;
    .locals 3

    const-class v0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 2
    monitor-exit v0

    return-object p0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "mobile_data"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 4
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$MOBILE_DATA_STATUS;->on:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$MOBILE_DATA_STATUS;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$MOBILE_DATA_STATUS;->off:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$MOBILE_DATA_STATUS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getWifiStatus(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$WIFI_STATUS;
    .locals 4

    const-class v0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 2
    monitor-exit v0

    return-object p0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "wifi_on"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 4
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$WIFI_STATUS;->off_airplane_on:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$WIFI_STATUS;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_2
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$WIFI_STATUS;->on_airplane_override:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$WIFI_STATUS;

    goto :goto_0

    .line 7
    :cond_3
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$WIFI_STATUS;->on:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$WIFI_STATUS;

    goto :goto_0

    .line 8
    :cond_4
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$WIFI_STATUS;->off:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$WIFI_STATUS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "context is null"

    invoke-static {p0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return v1

    .line 3
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->getAirplaneModeStatus(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$AIRPLANE_MODE_STATUS;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$AIRPLANE_MODE_STATUS;->on:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$AIRPLANE_MODE_STATUS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isDataRoamingOn(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "context is null"

    invoke-static {p0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    const-string v2, "phone"

    .line 3
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    .line 4
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->getDataRoamingStatus(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$DATA_ROAMING_STATUS;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$DATA_ROAMING_STATUS;->on:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$DATA_ROAMING_STATUS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isMobileDataOn(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "context is null"

    invoke-static {p0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return v1

    .line 3
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->getMobileDataStatus(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$MOBILE_DATA_STATUS;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$MOBILE_DATA_STATUS;->on:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$MOBILE_DATA_STATUS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isWifiOn(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    sget-object p0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "context is null"

    invoke-static {p0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return v1

    .line 3
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->getWifiStatus(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$WIFI_STATUS;

    move-result-object p0

    .line 4
    sget-object v2, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$WIFI_STATUS;->on:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$WIFI_STATUS;

    if-eq p0, v2, :cond_1

    sget-object v2, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$WIFI_STATUS;->on_airplane_override:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$WIFI_STATUS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
