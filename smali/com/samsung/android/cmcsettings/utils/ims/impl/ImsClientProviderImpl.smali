.class public Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;
.super Lcom/samsung/android/cmcsettings/utils/ims/ImsClientProvider;
.source "ImsClientProviderImpl.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field static imsManager0:Lcom/sec/ims/ImsManager;

.field static imsManager1:Lcom/sec/ims/ImsManager;

.field static mOnServiceEventListener:Lcom/samsung/android/cmcsettings/utils/ims/ImsClientProvider$OnServiceEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/utils/ims/ImsClientProvider;-><init>()V

    return-void
.end method

.method public static declared-synchronized connect(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->connectImsService(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static connectImsService(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "connectImsService: phoneId=0"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/sec/ims/ImsManager;

    new-instance v1, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl$1;

    invoke-direct {v1}, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl$1;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->imsManager0:Lcom/sec/ims/ImsManager;

    .line 3
    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    .line 4
    new-instance v0, Lcom/sec/ims/ImsManager;

    new-instance v1, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl$2;

    invoke-direct {v1}, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl$2;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->imsManager1:Lcom/sec/ims/ImsManager;

    .line 5
    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    return-void
.end method

.method public static declared-synchronized disconnect(Landroid/content/Context;)V
    .locals 1

    const-class p0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->imsManager0:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->disconnectService()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->imsManager1:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->disconnectService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setOnServiceEventListener(Lcom/samsung/android/cmcsettings/utils/ims/ImsClientProvider$OnServiceEventListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->mOnServiceEventListener:Lcom/samsung/android/cmcsettings/utils/ims/ImsClientProvider$OnServiceEventListener;

    return-void
.end method
