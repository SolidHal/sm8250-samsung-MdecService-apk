.class final Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl$1;
.super Ljava/lang/Object;
.source "EsClientServiceProviderImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 2
    sput-boolean p1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->isConnected:Z

    .line 3
    invoke-static {p2}, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mIEsService:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;

    .line 4
    sget-object p1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mServiceInterfaceImpl:Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;

    sget-object p2, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mIEsService:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;

    invoke-direct {p1, p2}, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;-><init>(Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;)V

    sput-object p1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mServiceInterfaceImpl:Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;

    .line 6
    :cond_0
    :try_start_0
    sget-object p1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mIEsService:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;

    sget-object p2, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mServiceInterfaceImpl:Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;

    invoke-virtual {p2}, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;->getServiceCallback()Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;->registerCallback(Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 8
    :goto_0
    sget-object p1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mOnServiceEventListener:Lcom/samsung/android/cmcopenapi/esclient/EsClientServiceProvider$OnServiceEventListener;

    if-eqz p1, :cond_1

    .line 9
    sget-object p2, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->mServiceInterfaceImpl:Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;

    invoke-interface {p1, p2}, Lcom/samsung/android/cmcopenapi/esclient/EsClientServiceProvider$OnServiceEventListener;->onConnected(Lcom/samsung/android/cmcopenapi/esclient/EsClientInterface;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
