.class public final Lcom/samsung/android/sdk/accessory/SASdkConfig;
.super Ljava/lang/Object;
.source "SASdkConfig.java"


# static fields
.field public static ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String; = "com.samsung.accessory"

.field static final ACCESSORY_FRAMEWORK_VERSION_1:I = 0x1

.field public static final ACCESSORY_FRAMEWORK_VERSION_2:I = 0x2

.field public static final ACCESSORY_FRAMEWORK_VERSION_MESSAGE_SERVICE_SUPPORT:I = 0x197

.field public static final ACCESSORY_FRAMEWORK_VERSION_MXDU_SUPPORT:I = 0xcd

.field public static final ACCESSORY_FRAMEWORK_VERSION_PRELOADED:I = 0x141

.field public static final ACCESSORY_FRAMEWORK_VERSION_RECEIVER_RECYCLING_SUPPORT:I = 0x4f

.field public static final ACCESSORY_FRAMEWORK_VERSION_SCS_PEER_ID:I = 0x47

.field public static final ACCESSORY_FRAMEWORK_VERSION_SDK_UPDATE_SUPPORT:I = 0x12a

.field public static final ACCESSORY_FRAMEWORK_VERSION_SENDER_RECYCLING_SUPPORT:I = 0x4b

.field public static final OLD_VERSION_CODE:I = 0x6

.field static final PEER_AGENT_FEATURE_NOT_AVAILABLE:I = 0x0

.field static final PEER_FEATURE_AVAILABLE:I = 0x1

.field static final PEER_FWK_FEATURE_NOT_AVAILABLE:I = 0x2

.field public static final REVISION:Ljava/lang/String; = "4"

.field public static final SDK_VERSION_CODE_1:I = 0x1

.field public static final SDK_VERSION_CODE_2:I = 0x2

.field public static final SDK_VERSION_CODE_3:I = 0x3

.field public static final SDK_VERSION_CODE_4:I = 0x4

.field public static final SDK_VERSION_CODE_5:I = 0x5

.field public static final SDK_VERSION_CODE_6:I = 0x6

.field public static final SDK_VERSION_CODE_7:I = 0x7

.field public static final SDK_VERSION_CODE_8:I = 0x8

.field public static final SDK_VERSION_CODE_9:I = 0x9

.field static final STRING_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SASdkConfig"

.field public static final VERSION_CODE:I = 0x9

.field public static final VERSION_NAME:Ljava/lang/String; = "2.6.3"

.field private static sActiveFrameworkVersion:I = 0x1

.field private static sFrameworkMaxFooterLen:I = 0x0

.field private static sFrameworkMaxHeaderLen:I = 0x0

.field private static sFrameworkMaxMsgHeaderLen:I = 0x0

.field private static sFrameworkProcessId:I = 0x0

.field private static sFrameworkSupported:Z = false

.field private static sFrameworkVersion:I = 0x1

.field private static sFrameworkVersionName:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "[SA_SDK]SASdkConfig"

    const-string v1, "Accessory Framework Not installed"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x2

    .line 3
    :try_start_0
    sget-object v3, Lcom/samsung/android/sdk/accessory/SASdkConfig;->ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v4, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersion:I

    .line 5
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v4, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersionName:Ljava/lang/String;

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Accessory Framework:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Accessory SDK:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "2.6.3"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " r"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "4"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->checkIfThinSdkSupported(Landroid/content/pm/PackageManager;)V

    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    invoke-direct {p1, v2, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    :catch_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    invoke-direct {p1, v2, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static checkAccessoryPermission(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "[SA_SDK]SASdkConfig"

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Package Manager is null"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v3, 0x1000

    .line 4
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "PackageInfo is null"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6
    :cond_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p0, :cond_2

    return v2

    :cond_2
    move v3, v2

    .line 7
    :goto_0
    array-length v4, p0

    const/4 v5, -0x1

    if-ge v3, v4, :cond_4

    const-string v4, "com.samsung.accessory.permission.ACCESSORY_FRAMEWORK"

    .line 8
    aget-object v6, p0, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v5

    :goto_1
    if-ne v3, v5, :cond_5

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accessory service permission not granted for Package"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 10
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accessory service permission available for Package"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 11
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin Permission check failed for Package"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private checkIfThinSdkSupported(Landroid/content/pm/PackageManager;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASdkConfig;->ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    sput-boolean p1, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkSupported:Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "[SA_SDK]SASdkConfig"

    const-string v0, "Accessory framework does not support thin-sdk"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static getActiveFrameworkVersion()I
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sActiveFrameworkVersion:I

    return v0
.end method

.method static getFrameworkMaxFooterLength()I
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxFooterLen:I

    return v0
.end method

.method static getFrameworkMaxHeaderLength()I
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxHeaderLen:I

    return v0
.end method

.method static getFrameworkMaxMsgHeaderLength()I
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxMsgHeaderLen:I

    return v0
.end method

.method static getFrameworkProcessid()I
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkProcessId:I

    return v0
.end method

.method public static getFrameworkVersion()I
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersion:I

    return v0
.end method

.method static getStringEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public static getsFrameworkVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static isActiveFrameworkMexSupported()Z
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sActiveFrameworkVersion:I

    const/16 v1, 0x197

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isFileTransferSupported()Z
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersion:I

    const/16 v1, 0xda

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isMexSupported()Z
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersion:I

    const/16 v1, 0x197

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isMxduSupported()Z
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersion:I

    const/16 v1, 0xcd

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNewFTVersionSupported()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Active F/W version is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sActiveFrameworkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SASdkConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sActiveFrameworkVersion:I

    const/16 v1, 0x1a2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isThinSdkSupported()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkSupported:Z

    return v0
.end method

.method public static setActiveFrameworkVersion(I)V
    .locals 0

    .line 1
    sput p0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sActiveFrameworkVersion:I

    return-void
.end method

.method static setFrameworkMaxFooterLength(I)V
    .locals 0

    .line 1
    sput p0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxFooterLen:I

    return-void
.end method

.method static setFrameworkMaxHeaderLength(I)V
    .locals 0

    .line 1
    sput p0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxHeaderLen:I

    return-void
.end method

.method static setFrameworkMaxMsgHeaderLength(I)V
    .locals 0

    .line 1
    sput p0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxMsgHeaderLen:I

    return-void
.end method

.method static setFrameworkProcessId(I)V
    .locals 0

    .line 1
    sput p0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkProcessId:I

    return-void
.end method
