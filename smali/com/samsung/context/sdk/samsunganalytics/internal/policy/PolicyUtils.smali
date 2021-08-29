.class public Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;
.super Ljava/lang/Object;
.source "PolicyUtils.java"


# static fields
.field private static final ALL_NEW_DMA_VERSION:I = 0x23c34600

.field public static final DLC:I = 0x1

.field public static final DLS:I = 0x0

.field public static final DMA_B:I = 0x2

.field public static final DMA_P:I = 0x3

.field private static final DMA_SUPPORT_VERSION:I = 0x202fbf00

.field public static final NONE:I = -0x1

.field private static senderType:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCSC()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "ro.csc.sales_code"

    aput-object v3, v2, v6

    .line 3
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    return-object v0
.end method

.method public static getPolicy(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p3, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->makeGetPolicyClient(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)Lcom/samsung/context/sdk/samsunganalytics/internal/policy/GetPolicyClient;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->execute(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    return-void
.end method

.method public static getPolicy(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p3, p4}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->makeGetPolicyClient(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)Lcom/samsung/context/sdk/samsunganalytics/internal/policy/GetPolicyClient;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->execute(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    return-void
.end method

.method public static getRemainingQuota(Landroid/content/Context;I)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "dq-w"

    .line 2
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "wifi_used"

    .line 3
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    move p0, v0

    move v0, p1

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "dq-3g"

    .line 4
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "data_used"

    .line 5
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_1
    sub-int/2addr v0, p0

    return v0
.end method

.method public static getSenderType()I
    .locals 1

    .line 1
    sget v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    return v0
.end method

.method public static hasQuota(Landroid/content/Context;II)I
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "dq-w"

    .line 2
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "wifi_used"

    .line 3
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "oq-w"

    .line 4
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "dq-3g"

    .line 5
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "data_used"

    .line 6
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "oq-3g"

    .line 7
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v0

    move p1, p0

    move v1, p1

    .line 8
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Quota : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/ Uploaded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/ limit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/ size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    add-int/2addr v1, p2

    const-string v2, "DLS Sender"

    if-ge p1, v1, :cond_2

    const-string p0, "send result fail : Over daily quota"

    .line 9
    invoke-static {v2, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_2
    if-ge p0, p2, :cond_3

    const-string p0, "send result fail : Over once quota"

    .line 10
    invoke-static {v2, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0xb

    return p0

    :cond_3
    return v0
.end method

.method public static isPolicyExpired(Landroid/content/Context;)Z
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "quota_reset_date"

    const-wide/16 v1, 0x0

    .line 2
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->compareDays(ILjava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->resetQuota(Landroid/content/SharedPreferences;)V

    :cond_0
    const-string v0, "rint"

    .line 4
    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "policy_received_date"

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->compareDays(ILjava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static makeGetPolicyClient(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)Lcom/samsung/context/sdk/samsunganalytics/internal/policy/GetPolicyClient;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/GetPolicyClient;

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->GET_POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    invoke-static {p0, p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->makePolicyParam(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0, p3}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/GetPolicyClient;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;Ljava/util/Map;Landroid/content/SharedPreferences;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "trid: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x7

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", uv: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    return-object v1
.end method

.method public static makePolicyParam(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;",
            "Lcom/samsung/context/sdk/samsunganalytics/Configuration;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "pkn"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object p0

    const-string v1, "dm"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getMcc()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getMcc()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mcc"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getMnc()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getMnc()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mnc"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getVersion()Ljava/lang/String;

    move-result-object p0

    const-string p1, "uv"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "sv"

    const-string p1, "6.05.031"

    .line 9
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "did"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "tid"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    .line 12
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/text/SimpleDateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ts"

    .line 13
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->SALT:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "hc"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getCSC()Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "csc"

    .line 17
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static resetQuota(Landroid/content/SharedPreferences;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "quota_reset_date"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "data_used"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "wifi_used"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSenderType(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)I
    .locals 3

    .line 1
    sget v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->getDMAversion(Landroid/content/Context;)I

    move-result p0

    const v2, 0x202fbf00

    if-lt p0, v2, :cond_1

    const v2, 0x23c34600

    if-lt p0, v2, :cond_0

    const/4 p0, 0x3

    .line 3
    sput p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    goto :goto_1

    :cond_0
    const/4 p0, 0x2

    .line 4
    sput p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    sput p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v0

    :cond_3
    sput v1, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DMA not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 8
    :cond_4
    :goto_1
    sget p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    return p0
.end method

.method public static useQuota(Landroid/content/Context;II)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string p0, "wifi_used"

    .line 2
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/2addr p1, p2

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 4
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "data_used"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/2addr p0, p2

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method
