.class public Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;
.super Landroidx/lifecycle/a;
.source "CMCStateManager.java"


# instance fields
.field private isActivated:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isMyDeviceData:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isPD:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isRemoveMode:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private removeDeviceList:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isActivated:Landroidx/lifecycle/o;

    .line 3
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isRemoveMode:Landroidx/lifecycle/o;

    .line 4
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->removeDeviceList:Landroidx/lifecycle/o;

    .line 5
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isMyDeviceData:Landroidx/lifecycle/o;

    .line 6
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isPD:Landroidx/lifecycle/o;

    .line 7
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isRemoveMode:Landroidx/lifecycle/o;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isActivated:Landroidx/lifecycle/o;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isCmcActivationIntermediateState(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isPD:Landroidx/lifecycle/o;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->myDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isMyDeviceData:Landroidx/lifecycle/o;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getIsActivated()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isActivated:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public getIsMyDeviceData()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isMyDeviceData:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public getIsPD()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isPD:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public getIsRemoveMode()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isRemoveMode:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public getRemoveDeviceList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->removeDeviceList:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public getRemoveDeviceListValue()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->removeDeviceList:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->removeDeviceList:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getRemoveModeVal()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isRemoveMode:Landroidx/lifecycle/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isRemoveMode:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public postIsRemoveMode(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setRemoveSD(Landroid/content/Context;Z)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isRemoveMode:Landroidx/lifecycle/o;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public postRemoveDeviceList(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->removeDeviceList:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public setIsActivated(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isActivated:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public setIsMyDeviceData(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isMyDeviceData:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public setIsRemoveMode(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setRemoveSD(Landroid/content/Context;Z)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->isRemoveMode:Landroidx/lifecycle/o;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public setRemoveDeviceList(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;->removeDeviceList:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method
