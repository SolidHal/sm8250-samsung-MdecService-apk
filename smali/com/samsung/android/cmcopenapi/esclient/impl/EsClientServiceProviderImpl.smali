.class public Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;
.super Lcom/samsung/android/cmcopenapi/esclient/EsClientServiceProvider;
.source "EsClientServiceProviderImpl.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field static final PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.mdecservice"

.field static final SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.mdecservice.mdec.api.service.MdecApiService"

.field static isConnected:Z

.field static mIEsService:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;

.field static mOnServiceEventListener:Lcom/samsung/android/cmcopenapi/esclient/EsClientServiceProvider$OnServiceEventListener;

.field static final mServiceConnection:Landroid/content/ServiceConnection;

.field static mServiceInterfaceImpl:Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcopenapi/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->isConnected:Z

    .line 4
    new-instance v0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/esclient/EsClientServiceProvider;-><init>()V

    return-void
.end method

.method public static declared-synchronized connect(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mServiceInterfaceImpl:Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.mdecservice"

    const-string v4, "com.samsung.android.mdecservice.mdec.api.service.MdecApiService"

    .line 3
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    sget-object v3, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->LOG_TAG:Ljava/lang/String;

    const-string v4, "try binding"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    sget-object v3, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v4, Lcom/samsung/android/cmcopenapi/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, v1, v3, v2, v4}, Lcom/samsung/android/cmcopenapi/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    .line 7
    :cond_0
    :try_start_1
    sget-object p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "already binded"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mOnServiceEventListener:Lcom/samsung/android/cmcopenapi/esclient/EsClientServiceProvider$OnServiceEventListener;

    sget-object v1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mServiceInterfaceImpl:Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;

    invoke-interface {p0, v1}, Lcom/samsung/android/cmcopenapi/esclient/EsClientServiceProvider$OnServiceEventListener;->onConnected(Lcom/samsung/android/cmcopenapi/esclient/EsClientInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized disconnect(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mServiceInterfaceImpl:Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "try unbinding"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 4
    sget-object v1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    sget-object p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mIEsService:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;

    sget-object v1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mServiceInterfaceImpl:Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;->getServiceCallback()Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;->unregisterCallback(Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    .line 7
    sput-object p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mServiceInterfaceImpl:Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;

    .line 8
    sput-object p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mIEsService:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;

    const/4 p0, 0x0

    .line 9
    sput-boolean p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->isConnected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setOnServiceEventListener(Lcom/samsung/android/cmcopenapi/esclient/EsClientServiceProvider$OnServiceEventListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mOnServiceEventListener:Lcom/samsung/android/cmcopenapi/esclient/EsClientServiceProvider$OnServiceEventListener;

    return-void
.end method
