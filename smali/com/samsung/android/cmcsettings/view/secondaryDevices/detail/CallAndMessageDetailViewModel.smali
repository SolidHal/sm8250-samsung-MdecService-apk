.class public Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailViewModel;
.super Landroidx/lifecycle/a;
.source "CallAndMessageDetailViewModel.java"


# instance fields
.field private mdecSettingsDatabase:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/a;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailViewModel;->mdecSettingsDatabase:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    return-void
.end method


# virtual methods
.method getSecondaryDevice(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailViewModel;->mdecSettingsDatabase:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->getConnectedDeviceData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
