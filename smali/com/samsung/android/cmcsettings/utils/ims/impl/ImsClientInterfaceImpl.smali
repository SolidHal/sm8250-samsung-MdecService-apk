.class public Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;
.super Ljava/lang/Object;
.source "ImsClientInterfaceImpl.java"

# interfaces
.implements Lcom/samsung/android/cmcsettings/utils/ims/ImsClientInterface;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mImsClientListener:Lcom/samsung/android/cmcsettings/utils/ims/ImsClientInterface$ImsClientListener;

.field private mImsRegListener:Lcom/sec/ims/IImsRegistrationListener$Stub;

.field mServiceInterface:Lcom/sec/ims/ImsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/ImsManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl$1;-><init>(Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->mImsRegListener:Lcom/sec/ims/IImsRegistrationListener$Stub;

    .line 3
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create ImsClientInterfaceImpl for SIM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsManager;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->mServiceInterface:Lcom/sec/ims/ImsManager;

    return-void
.end method


# virtual methods
.method public getMSISDN()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->mServiceInterface:Lcom/sec/ims/ImsManager;

    const-string v1, "volte"

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msisdn ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->mServiceInterface:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public getServiceCallback()Lcom/sec/ims/IImsRegistrationListener$Stub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->mImsRegListener:Lcom/sec/ims/IImsRegistrationListener$Stub;

    return-object v0
.end method

.method public setImsClientListener(Lcom/samsung/android/cmcsettings/utils/ims/ImsClientInterface$ImsClientListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setImsClientListener"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->mImsClientListener:Lcom/samsung/android/cmcsettings/utils/ims/ImsClientInterface$ImsClientListener;

    .line 3
    sget-object p1, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsClientListener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->mImsClientListener:Lcom/samsung/android/cmcsettings/utils/ims/ImsClientInterface$ImsClientListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
