.class public final Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;
.super Landroidx/lifecycle/a;
.source "PrimaryDeviceDetailViewModel.kt"


# instance fields
.field private final deviceIcon:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceNumber:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final headerString:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isMultiSimSlotDevice:Z

.field private isRemoveMode:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final isSelectableBackground:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isSimPresent:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isVisibletoPD:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isVisibletoSD:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mdecSettingsDatabase:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

.field private final primaryDeviceMsisdn:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final primaryDeviceName:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private simIconVisible:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    const-string v0, "application"

    invoke-static {p1, v0}, Le/c/a/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/a;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object v0

    const-string v1, "MdecSettingsDatabase.get\u2026se(this.getApplication())"

    invoke-static {v0, v1}, Le/c/a/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mdecSettingsDatabase:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    .line 3
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isVisibletoPD:Landroidx/lifecycle/o;

    .line 4
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isVisibletoSD:Landroidx/lifecycle/o;

    .line 5
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->headerString:Landroidx/lifecycle/o;

    .line 6
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isSimPresent:Landroidx/lifecycle/o;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isMultiSimSlotDevice:Z

    .line 8
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->simIconVisible:Landroidx/lifecycle/o;

    .line 9
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "application.applicationContext"

    invoke-static {p1, v0}, Le/c/a/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mContext:Landroid/content/Context;

    .line 10
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->primaryDeviceName:Landroidx/lifecycle/o;

    .line 11
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->primaryDeviceMsisdn:Landroidx/lifecycle/o;

    .line 12
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isRemoveMode:Landroidx/lifecycle/o;

    .line 13
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->deviceNumber:Landroidx/lifecycle/o;

    .line 14
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->deviceIcon:Landroidx/lifecycle/o;

    .line 15
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isSelectableBackground:Landroidx/lifecycle/o;

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->getMyDevice()Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->updateUI(Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;)V

    return-void
.end method

.method private final appendWifiOnlySummary()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDataEnabledSIM(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private final getHeaderString()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isVisibletoPD:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Le/c/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mContext.resources.getString(R.string.this_phone)"

    invoke-static {v0, v1}, Le/c/a/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isVisibletoSD:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Le/c/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mContext.resources.getString(R.string.phone)"

    invoke-static {v0, v1}, Le/c/a/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mContext.resources.getString(R.string.empty)"

    invoke-static {v0, v1}, Le/c/a/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getMsisdnForDID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Empty"

    .line 1
    invoke-static {v0, p1}, Le/c/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mContext:Landroid/content/Context;

    const v0, 0x7f0f00a4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "Unknown"

    .line 3
    invoke-static {v0, p1}, Le/c/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mContext:Landroid/content/Context;

    const v0, 0x7f0f0123

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private final getMyDevice()Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mdecSettingsDatabase:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->primaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;

    move-result-object v0

    const-string v1, "mdecSettingsDatabase.primaryDeviceDao()"

    invoke-static {v0, v1}, Le/c/a/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;->getPrimaryDevice()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final getDeviceIcon()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->deviceIcon:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public final getDeviceNumber()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->deviceNumber:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public final getHeaderString()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->headerString:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public final getMyDeviceData()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mdecSettingsDatabase:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->primaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;

    move-result-object v0

    const-string v1, "mdecSettingsDatabase.primaryDeviceDao()"

    invoke-static {v0, v1}, Le/c/a/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;->getPrimaryDevices()Landroidx/lifecycle/LiveData;

    move-result-object v0

    const-string v1, "mdecSettingsDatabase.pri\u2026eviceDao().primaryDevices"

    invoke-static {v0, v1}, Le/c/a/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPrimaryDeviceMsisdn()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->primaryDeviceMsisdn:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public final getPrimaryDeviceName()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->primaryDeviceName:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public final getSimIconVisible()Landroidx/lifecycle/o;
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
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->simIconVisible:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public final isMultiSimSlotDevice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isMultiSimSlotDevice:Z

    return v0
.end method

.method public final isRemoveMode()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isRemoveMode:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public final isSelectableBackground()Landroidx/lifecycle/o;
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
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isSelectableBackground:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public final isSimPresent()Landroidx/lifecycle/o;
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
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isSimPresent:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public final isVisibletoPD()Landroidx/lifecycle/o;
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
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isVisibletoPD:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public final isVisibletoSD()Landroidx/lifecycle/o;
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
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isVisibletoSD:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public final setMultiSimSlotDevice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isMultiSimSlotDevice:Z

    return-void
.end method

.method public final setRemoveMode(Landroidx/lifecycle/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Le/c/a/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isRemoveMode:Landroidx/lifecycle/o;

    return-void
.end method

.method public final setSimIconVisible(Landroidx/lifecycle/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Le/c/a/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->simIconVisible:Landroidx/lifecycle/o;

    return-void
.end method

.method public final setSimPresent(Landroidx/lifecycle/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Le/c/a/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isSimPresent:Landroidx/lifecycle/o;

    return-void
.end method

.method public final updateUI(Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz p1, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    .line 3
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isVisibletoPD:Landroidx/lifecycle/o;

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isVisibletoSD:Landroidx/lifecycle/o;

    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, v1

    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isVisibletoSD:Landroidx/lifecycle/o;

    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->getActive_services()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-static {v3, v5, v2}, Le/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->primaryDeviceName:Landroidx/lifecycle/o;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->getDevice_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->headerString:Landroidx/lifecycle/o;

    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->getHeaderString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result v0

    .line 9
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->deviceIcon:Landroidx/lifecycle/o;

    iget-object v5, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimIcon(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v5, v6}, Landroidx/core/content/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 10
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->deviceNumber:Landroidx/lifecycle/o;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->appendWifiOnlySummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 11
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isSimPresent:Landroidx/lifecycle/o;

    iget-object v5, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSimPresent(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getPhoneSimSlotCount(Landroid/content/Context;)I

    move-result v0

    if-lt v0, v4, :cond_6

    move v1, v2

    :cond_6
    iput-boolean v1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isMultiSimSlotDevice:Z

    .line 13
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->simIconVisible:Landroidx/lifecycle/o;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isSimPresent:Landroidx/lifecycle/o;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->isMultiSimSlotDevice:Z

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->primaryDeviceMsisdn:Landroidx/lifecycle/o;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->getMsisdn()Ljava/lang/String;

    move-result-object p1

    const-string v1, "myDevice.msisdn"

    invoke-static {p1, v1}, Le/c/a/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;->getMsisdnForDID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method
