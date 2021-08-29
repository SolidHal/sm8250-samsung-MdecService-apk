.class final Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl$2;
.super Ljava/lang/Object;
.source "ImsClientProviderImpl.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->connectImsService(Landroid/content/Context;)V
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
.method public onConnected()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->imsManager1:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->imsManager1:Lcom/sec/ims/ImsManager;

    invoke-virtual {v2}, Lcom/sec/ims/ImsManager;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;

    sget-object v1, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->imsManager1:Lcom/sec/ims/ImsManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;-><init>(Lcom/sec/ims/ImsManager;)V

    .line 4
    sget-object v1, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->imsManager1:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->getServiceCallback()Lcom/sec/ims/IImsRegistrationListener$Stub;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->imsManager1:Lcom/sec/ims/ImsManager;

    invoke-virtual {v3}, Lcom/sec/ims/ImsManager;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 5
    sget-object v1, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request msisdn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->getMSISDN()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->mOnServiceEventListener:Lcom/samsung/android/cmcsettings/utils/ims/ImsClientProvider$OnServiceEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/cmcsettings/utils/ims/ImsClientProvider$OnServiceEventListener;->onConnected(Lcom/samsung/android/cmcsettings/utils/ims/ImsClientInterface;I)V

    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDisconnected:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
