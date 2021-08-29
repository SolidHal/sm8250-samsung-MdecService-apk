.class public Lcom/samsung/android/sdk/accessory/SAGSIMLog;
.super Ljava/lang/Object;
.source "SAGSIMLog.java"


# static fields
.field private static final ACCESSORY_PACKAGE:Ljava/lang/String; = "com.samsung.android.sdk.accessory"

.field private static final ACTION_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field private static final CONTEXT_ENABLE_SURVEY_MODE:Ljava/lang/String; = "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

.field private static final EXTRA_DATA:Ljava/lang/String; = "extra"

.field private static final FEATURE_DATA:Ljava/lang/String; = "feature"

.field private static final GET_BOOLEAN:Ljava/lang/String; = "getBoolean"

.field private static final GET_ENABLE_STATUS:Ljava/lang/String; = "getEnableStatus"

.field private static final GET_INSTANCE:Ljava/lang/String; = "getInstance"

.field private static final LOGGER_DATA:Ljava/lang/String; = "data"

.field private static final LOGGER_PACKAGE:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final SEC_FLOATING_FEATURE:Ljava/lang/String; = "com.samsung.android.feature.FloatingFeature"

.field private static final SEC_SE_FLOATING_FEATURE:Ljava/lang/String; = "com.samsung.android.feature.SemFloatingFeature"

.field private static final SURVEY_PERMISSION:Ljava/lang/String; = "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAGSIMLog"

.field private static isEnabled:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAGSIMLog;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFloatingFeature()Z
    .locals 12

    const-string v0, "[SecFloating] floating feature : "

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 1
    const-class v2, Ljava/lang/String;

    const-string v3, "getInstance"

    const-string v4, "[SA_SDK]SAGSIMLog"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    const-string v8, "com.samsung.android.feature.FloatingFeature"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v8, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "getEnableStatus"

    new-array v11, v6, [Ljava/lang/Class;

    aput-object v2, v11, v7

    .line 4
    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v1, v10, v7

    .line 5
    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v8, "[SecFloating] feature is not supported (non-samsung device)"

    .line 7
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string v8, "com.samsung.android.feature.SemFloatingFeature"

    .line 8
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v8, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v9, v7, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v3, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "getBoolean"

    new-array v9, v6, [Ljava/lang/Class;

    aput-object v2, v9, v7

    .line 11
    invoke-virtual {v8, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v7

    .line 12
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v8

    :catch_1
    const-string v0, "[SecFloating] feature is not supported this device (non-samsung device)"

    .line 14
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private static init()V
    .locals 2

    const-string v0, "[SA_SDK]SAGSIMLog"

    const-string v1, "init()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAGSIMLog;->getFloatingFeature()Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/sdk/accessory/SAGSIMLog;->isEnabled:Z

    if-nez v1, :cond_0

    const-string v1, "GSIM logging is not enabled."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static insertLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SAGSIMLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "com.samsung.android.providers.context"

    const-string v1, "[SA_SDK]SAGSIMLog"

    .line 2
    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->isSamsungDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 4
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "versionCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const-string v2, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    .line 6
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "WRITE_USE_APP_FEATURE_SURVEY is not allowed"

    .line 7
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_0
    sget-boolean v2, Lcom/samsung/android/sdk/accessory/SAGSIMLog;->isEnabled:Z

    if-eqz v2, :cond_2

    .line 9
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    const-string v4, "com.samsung.android.sdk.accessory"

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "feature"

    .line 11
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra"

    .line 12
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "data"

    .line 16
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p0, "Add WRITE_USE_APP_FEATURE_SURVEY permission"

    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SecurityException : WRITE_USE_APP_FEATURE_SURVEY permission is required."

    .line 19
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "Could not find ContextProvider"

    .line 20
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
