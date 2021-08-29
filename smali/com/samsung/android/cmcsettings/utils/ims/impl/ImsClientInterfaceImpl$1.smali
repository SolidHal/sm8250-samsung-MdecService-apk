.class Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl$1;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "ImsClientInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl$1;->this$0:Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl$1;->this$0:Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;

    iget-object v0, v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->mImsClientListener:Lcom/samsung/android/cmcsettings/utils/ims/ImsClientInterface$ImsClientListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl$1;->this$0:Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;

    iget-object v0, v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->mImsClientListener:Lcom/samsung/android/cmcsettings/utils/ims/ImsClientInterface$ImsClientListener;

    const-string v1, ""

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/cmcsettings/utils/ims/ImsClientInterface$ImsClientListener;->onUpdateMSISDN(Ljava/lang/String;I)V

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "msisdn =empty"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistered["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 2
    sget-object v1, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistered["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl$1;->this$0:Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;

    iget-object v1, v1, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->mImsClientListener:Lcom/samsung/android/cmcsettings/utils/ims/ImsClientInterface$ImsClientListener;

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mImsClientListener!= null"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl$1;->this$0:Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;

    iget-object v1, v1, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->mImsClientListener:Lcom/samsung/android/cmcsettings/utils/ims/ImsClientInterface$ImsClientListener;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/cmcsettings/utils/ims/ImsClientInterface$ImsClientListener;->onUpdateMSISDN(Ljava/lang/String;I)V

    .line 7
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msisdn ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
