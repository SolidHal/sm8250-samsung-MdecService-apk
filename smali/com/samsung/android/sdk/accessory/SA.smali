.class public Lcom/samsung/android/sdk/accessory/SA;
.super Ljava/lang/Object;
.source "SA.java"

# interfaces
.implements Lcom/samsung/android/sdk/SsdkInterface;


# static fields
.field public static final DEVICE_ACCESSORY:I = 0x0

.field public static final SERVICE_FILETRANSFER:I = 0x1

.field public static final SERVICE_MESSAGE:I = 0x2

.field public static final SERVICE_SOCKET:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SA"


# instance fields
.field private mIsCalledinsertLog:Z

.field private mSdkConfig:Lcom/samsung/android/sdk/accessory/SASdkConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SA;->mIsCalledinsertLog:Z

    return-void
.end method

.method private insertLog(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SACU"

    .line 2
    invoke-static {p1, v1, v0}, Lcom/samsung/android/sdk/accessory/SAGSIMLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected clearSdkConfig()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SA;->mSdkConfig:Lcom/samsung/android/sdk/accessory/SASdkConfig;

    return-void
.end method

.method public getVersionCode()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.3"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SA;->mSdkConfig:Lcom/samsung/android/sdk/accessory/SASdkConfig;

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SA;->mIsCalledinsertLog:Z

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SA;->insertLog(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SA;->mIsCalledinsertLog:Z

    .line 5
    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/SASdkConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SA;->mSdkConfig:Lcom/samsung/android/sdk/accessory/SASdkConfig;
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "[SA_SDK]SA"

    const-string v1, "Initializing SA"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->getDefault()Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->initializePool(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal argument: context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isFeatureEnabled(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 2
    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isMexSupported()Z

    move-result v0

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isFileTransferSupported()Z

    move-result v0

    :cond_3
    :goto_0
    return v0
.end method
