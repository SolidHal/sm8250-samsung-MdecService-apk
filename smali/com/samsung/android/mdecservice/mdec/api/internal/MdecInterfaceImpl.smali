.class public Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;
.super Ljava/lang/Object;
.source "MdecInterfaceImpl.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->sInstance:Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;
    .locals 2

    const-class v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->sInstance:Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;

    invoke-direct {v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;-><init>()V

    sput-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->sInstance:Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->sInstance:Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isInitialized()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addPrimaryDevice(ILjava/lang/String;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;->ChangePd:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

    if-ne p3, v0, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;->NotChangePd:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

    if-ne p3, v0, :cond_2

    const/4 p3, 0x1

    .line 5
    :goto_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/PdJoinServiceHandler;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "slot_id"

    .line 7
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "display_name"

    .line 8
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "join_mode"

    .line 9
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 11
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1

    .line 12
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    const-string p2, "invalid join mode"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1
.end method

.method public addSecondaryDevice(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/SdJoinServiceHandler;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "display_name"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1
.end method

.method public deletePrimaryDevice(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/DeletePrimaryDeviceHandler;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "pd_id"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1
.end method

.method public deleteProvisionedDevice(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/DeleteProvisionedDeviceHandler;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "sd_id"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1
.end method

.method public deleteSecondaryDevice(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/DeleteSecondaryDeviceHandler;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "sd_id"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1
.end method

.method public deregisterAddDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->unregisterAddDeviceCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    :goto_0
    return-object p1
.end method

.method public deregisterDeleteDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->unregisterDeleteDeviceCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    :goto_0
    return-object p1
.end method

.method public deregisterPersonalInfoEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->unregisterPersonalInfoCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    :goto_0
    return-object p1
.end method

.method public deregisterRefreshEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->unregisterRefreshCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    :goto_0
    return-object p1
.end method

.method public deregisterSwitchChangedEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->unregisterSwitchChangedCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    :goto_0
    return-object p1
.end method

.method public deregisterUpdateInfoEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->unregisterUpdateInfoCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    :goto_0
    return-object p1
.end method

.method public getDeviceInfo(Ljava/lang/String;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;->ProvisionedDevice:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getProvisionedDeviceInfoFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getDeviceInfoFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPrimaryDeviceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getPrimaryDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryDeviceListForDelete()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getPrimaryDeviceListForDeleteFromDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getProvisionedDeviceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getProvisionedDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryDeviceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getSecondaryDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public init()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->doPreProcessing(Landroid/content/Context;)Z

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object v0
.end method

.method public refresh(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "display_name"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "is_need_callback"

    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 8
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1
.end method

.method public registerAddDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->registerAddDeviceCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    :goto_0
    return-object p1
.end method

.method public registerDeleteDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->registerDeleteDeviceCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    :goto_0
    return-object p1
.end method

.method public registerPersonalInfoEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->registerPersonalInfoCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    :goto_0
    return-object p1
.end method

.method public registerRefreshEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->registerRefreshCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    :goto_0
    return-object p1
.end method

.method public registerSwitchChangedEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->registerSwitchChangedCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    :goto_0
    return-object p1
.end method

.method public registerUpdateInfoEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->registerUpdateInfoCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    :goto_0
    return-object p1
.end method

.method public setCMCActivation()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCMCActivation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne v1, v2, :cond_1

    .line 7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/CMCActivationHandler;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->sd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne v1, v2, :cond_2

    .line 10
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const-string v3, "SWITCH_MODE"

    .line 11
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v3, "SWITCH_STATE"

    .line 12
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    .line 14
    :goto_0
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object v0

    .line 15
    :cond_2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "invalid device type"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object v0
.end method

.method public setCMCDeactivation()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCMCDeactivation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne v1, v2, :cond_1

    .line 7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/CMCDeactivationHandler;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->sd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne v1, v2, :cond_2

    .line 10
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    const-string v3, "SWITCH_MODE"

    .line 11
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "SWITCH_STATE"

    .line 12
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    .line 14
    :goto_0
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object v0

    .line 15
    :cond_2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "invalid device type"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object v0
.end method

.method public setSdCallServiceMode(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne v1, v2, :cond_1

    .line 6
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSdCallServiceMode(pd) : deviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), serviceMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const-string v3, "service_type"

    .line 8
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "service_mode"

    .line 9
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "cmc_device_id"

    .line 10
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 12
    :cond_1
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->sd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne v1, p1, :cond_2

    .line 13
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSdCallServiceMode(sd) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x3

    const-string v2, "SWITCH_MODE"

    .line 15
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SWITCH_STATE"

    .line 16
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    .line 18
    :goto_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1

    .line 19
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    const-string p2, "invalid device type"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1
.end method

.method public setSdMessageServiceMode(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne v1, v2, :cond_1

    .line 6
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSdMessageServiceMode(pd) : deviceId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), serviceMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    const-string v3, "service_type"

    .line 8
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "service_mode"

    .line 9
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "cmc_device_id"

    .line 10
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 12
    :cond_1
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->sd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne v1, p1, :cond_2

    .line 13
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSdMessageServiceMode(sd) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/SdActivationSwitchHandler;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    const-string v2, "SWITCH_MODE"

    .line 15
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SWITCH_STATE"

    .line 16
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    .line 18
    :goto_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1

    .line 19
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    const-string p2, "invalid device type"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1
.end method

.method public setSdServiceMode(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSdServiceMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-eq v1, v2, :cond_1

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    const-string p2, "invalid device type"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1

    .line 9
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/SetDeviceServiceMode;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const-string v3, "service_type"

    .line 10
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "service_mode"

    .line 11
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "cmc_device_id"

    .line 12
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    .line 14
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1
.end method

.method public updatePDPAgreement()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/RegisterPdpHandler;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object v0
.end method

.method public updatePhoneNumber(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "cur_msisdn"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1
.end method

.method public updatePrimaryDeviceForSimSlotChanged(ILjava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->FAIL:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdateJoinedService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "slot_id"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "display_name"

    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 8
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;->SUCCESS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-object p1
.end method
