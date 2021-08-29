.class public Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;
.super Ljava/lang/Object;
.source "SAft.java"

# interfaces
.implements Lcom/samsung/android/sdk/SsdkInterface;


# static fields
.field public static final DEVICE_ACCESSORY:I = 0x0

.field public static FILE_TRANSFER_SERVICE_INTENT:Ljava/lang/String; = "com.samsung.accessory.ISAFTManager"

.field private static GEARS_VERSION_CODE:I = 0xda

.field private static final SURVEY_PERMISSION:Ljava/lang/String; = "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAft"

.field private static final VERSION_CODE:I = 0x3

.field private static final VERSION_NAME:Ljava/lang/String; = "2.6.3"


# instance fields
.field private mFileTransferVersionCode:I

.field private mFileTransferVersionName:Ljava/lang/String;

.field private mInitialized:Z

.field private mIsCalledinsertLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->mIsCalledinsertLog:Z

    return-void
.end method

.method private getFTVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->mFileTransferVersionCode:I

    return v0
.end method

.method private getFloatingFeature()Z
    .locals 12

    const-string v0, "floating feature : "

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 1
    const-class v2, Ljava/lang/String;

    const-string v3, "getInstance"

    const-string v4, "SecFloating"

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
    const-string v8, "Floating feature is not supported (non-samsung device)"

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
    const-string v0, "Floating feature is not supported this device (non-samsung device)"

    .line 14
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private insertLog(Landroid/content/Context;)V
    .locals 5

    const-string v0, "com.samsung.android.providers.context"

    const-string v1, "SM_SDK"

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Could not find ContextProvider"

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .line 4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "versionCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    const-string v2, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY is not allowed"

    .line 6
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFloatingFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 9
    const-class v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getVersionCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id"

    .line 11
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 14
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "data"

    .line 15
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "Add com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission"

    .line 18
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->FILE_TRANSFER_SERVICE_INTENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVersionCode()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.3"

    return-object v0
.end method

.method getcontentURISupport()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Samsung Accessory File Transfer CORE version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFTVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAft"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFTVersionCode()I

    move-result v0

    sget v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->GEARS_VERSION_CODE:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 7

    const-string v0, "Samsung Accessory Framework not installed"

    if-eqz p1, :cond_6

    .line 1
    iget-boolean v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->mInitialized:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->mIsCalledinsertLog:Z

    const/4 v2, 0x1

    const-string v3, "[SA_SDK]SAft"

    if-nez v1, :cond_2

    .line 3
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->isSamsungDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->insertLog(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "SecurityException : com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission is required."

    .line 5
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->mIsCalledinsertLog:Z

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x2

    :try_start_1
    const-string v5, "com.samsung.accessory"

    const/4 v6, 0x0

    .line 8
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {v1, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->mFileTransferVersionCode:I

    .line 12
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->mFileTransferVersionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const-string p1, "Samsung Accessory File Transfer SDK version: 2.6.3"

    .line 13
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iput-boolean v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->mInitialized:Z

    return-void

    .line 15
    :cond_3
    :try_start_2
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    invoke-direct {p1, v0, v4}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 16
    :cond_4
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    invoke-direct {p1, v0, v4}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 17
    :cond_5
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v1, "Device not supported"

    invoke-direct {p1, v1, v2}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 18
    :catch_1
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    invoke-direct {p1, v0, v4}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 20
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal argument input: context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isFeatureEnabled(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
