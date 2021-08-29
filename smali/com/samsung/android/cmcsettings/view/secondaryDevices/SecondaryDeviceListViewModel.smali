.class public Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;
.super Landroidx/lifecycle/a;
.source "SecondaryDeviceListViewModel.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private secondaryDevicesList:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/a;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->getAllConnectedDevice()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;->secondaryDevicesList:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method changeConnectedDeviceActivation(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;Z)Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->checkNetworkAndShowToast()Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;->CONNECTED:Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->setSdServiceMode(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    .line 5
    :goto_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setDeviceActivation(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-object v0
.end method

.method getSecondaryDevicesList()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;->secondaryDevicesList:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secondaryDevicesList size::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;->secondaryDevicesList:Landroidx/lifecycle/LiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;->LOG_TAG:Ljava/lang/String;

    const-string v1, "secondaryDevicesList is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/SecondaryDeviceListViewModel;->secondaryDevicesList:Landroidx/lifecycle/LiveData;

    return-object v0
.end method
