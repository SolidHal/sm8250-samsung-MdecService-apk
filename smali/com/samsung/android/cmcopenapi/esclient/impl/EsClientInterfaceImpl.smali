.class public Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;
.super Ljava/lang/Object;
.source "EsClientInterfaceImpl.java"

# interfaces
.implements Lcom/samsung/android/cmcopenapi/esclient/EsClientInterface;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mEsClientListener:Lcom/samsung/android/cmcopenapi/esclient/EsClientInterface$EsClientListener;

.field mServiceCallback:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback$Stub;

.field mServiceInterface:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcopenapi/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl$1;-><init>(Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;->mServiceCallback:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback$Stub;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;->mServiceInterface:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;

    return-void
.end method


# virtual methods
.method public getServiceCallback()Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;->mServiceCallback:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback$Stub;

    return-object v0
.end method

.method public setCMCActivation()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SET_CMC_ES_ACTIVATED."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;->mServiceInterface:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;->sendMessage(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setCMCDeactivation()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SET_CMC_ES_DEACTIVATED."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;->mServiceInterface:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;->sendMessage(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setEsClientListener(Lcom/samsung/android/cmcopenapi/esclient/EsClientInterface$EsClientListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;->mEsClientListener:Lcom/samsung/android/cmcopenapi/esclient/EsClientInterface$EsClientListener;

    return-void
.end method
