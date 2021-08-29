.class public Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;
.super Landroid/service/quicksettings/TileService;
.source "MdecServiceTiles.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCMCActivationObserver:Landroid/database/ContentObserver;

.field private mCMCForegroundServiceRunningObserver:Landroid/database/ContentObserver;

.field private mCMCTileRefreshObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mIsDeviceTypePrimary:Z

.field private mIsNeedToBlock:Z

.field private mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    .line 3
    new-instance v0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles$1;-><init>(Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mCMCActivationObserver:Landroid/database/ContentObserver;

    .line 4
    new-instance v0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles$2;-><init>(Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mCMCForegroundServiceRunningObserver:Landroid/database/ContentObserver;

    .line 5
    new-instance v0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles$3;-><init>(Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mCMCTileRefreshObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->isCMCSettingsOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->updateState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getDeviceInfoSummary(Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getMsisdn()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Empty"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f00a4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "Unknown"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0123

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getDeviceList(Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getSecondaryDeviceList()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    .line 3
    invoke-interface {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getPrimaryDeviceList()Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_2
    sget-object p1, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceInfo size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTileName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsDeviceTypePrimary:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->getDeviceList(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsDeviceTypePrimary:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCMCSettingsOn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private setDeviceView(Landroid/widget/RemoteViews;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsDeviceTypePrimary:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->getDeviceList(Z)Ljava/util/ArrayList;

    move-result-object v0

    const v1, 0x7f09010a

    const v2, 0x7f090092

    const v3, 0x7f0c0053

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 4
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6
    iget-boolean v6, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsDeviceTypePrimary:Z

    const v7, 0x7f090090

    if-nez v6, :cond_0

    .line 7
    invoke-direct {p0, v4}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->getDeviceInfoSummary(Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060095

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 9
    invoke-virtual {v5, v7, v4}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_1

    :cond_0
    const/16 v4, 0x8

    .line 10
    invoke-virtual {v5, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11
    :goto_1
    invoke-virtual {p1, v1, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 13
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :cond_2
    return-void
.end method

.method private setHeaderTextView(Landroid/widget/RemoteViews;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsDeviceTypePrimary:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v1, 0x7f0900d4

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsDeviceTypePrimary:Z

    if-nez v0, :cond_1

    const v0, 0x7f090097

    const/16 v1, 0x8

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_1
    return-void
.end method

.method private turnOnOffCMCQuickSettingsTile(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSamsungAccountLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setOOBE(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result v0

    .line 4
    iget-boolean v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsDeviceTypePrimary:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v1, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSimPresent(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->isCMCSettingsOn()Z

    move-result p1

    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/service/quicksettings/TileService;->semFireToggleStateChanged(ZZ)V

    .line 10
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->showNoSimToast()V

    return-void

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/ConnectivityUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    sget-object p1, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->TAG:Ljava/lang/String;

    const-string v0, "no network connection"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-boolean v3, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    .line 14
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Landroid/service/quicksettings/TileService;->sendBroadcast(Landroid/content/Intent;)V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/DialogUtil;->sendBroadcastForNetworkErrorPopup(Landroid/content/Context;)V

    return-void

    :cond_4
    if-eqz p1, :cond_6

    .line 17
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    .line 18
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDefaultApplicationStatus(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    :cond_5
    iput-boolean v3, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    .line 20
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "extra_reason_cmcopen"

    const-string v1, "SETTINGS"

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, p1}, Landroid/service/quicksettings/TileService;->startActivityAndCollapse(Landroid/content/Intent;)V

    return-void

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setRemoveSD(Landroid/content/Context;Z)V

    .line 25
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    if-eqz p1, :cond_7

    .line 26
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->setCMCActivation()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->setCMCDeactivation()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 28
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    return-void
.end method

.method private updateIntermediateDetailView()Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->TAG:Ljava/lang/String;

    const-string v1, "updateOffDetailView start"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0054

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->isCMCSettingsOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const v2, 0x7f090109

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method private updateOffDetailView()Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->TAG:Ljava/lang/String;

    const-string v1, "updateOffDetailView start"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0054

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3
    iget-boolean v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsDeviceTypePrimary:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const v2, 0x7f090109

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method private updateOnDetailView()Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->TAG:Ljava/lang/String;

    const-string v1, "updateOnDetailView start"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0052

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->setHeaderTextView(Landroid/widget/RemoteViews;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->setDeviceView(Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method private updateState(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    const v2, 0x7f08006d

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->getTileName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 6
    iget-boolean v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 7
    sget-object p1, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_3
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->TAG:Ljava/lang/String;

    const-string v1, "onClick"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->TAG:Ljava/lang/String;

    const-string v1, "onClick is blocked when it is in intermediate state"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/samsung/android/cmcsettings/UI/qstiles/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/UI/qstiles/a;-><init>(Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;)V

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService;->unlockAndRun(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->isCMCSettingsOn()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->turnOnOffCMCQuickSettingsTile(Z)V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mMdecInterface:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsDeviceTypePrimary:Z

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isCMCForegroundServiceRunning(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    .line 6
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cmc_activation"

    .line 7
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mCMCActivationObserver:Landroid/database/ContentObserver;

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 9
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->getUriFor(I)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mCMCForegroundServiceRunningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 10
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x67

    .line 11
    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->getUriFor(I)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mCMCTileRefreshObserver:Landroid/database/ContentObserver;

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mCMCActivationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mCMCForegroundServiceRunningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mCMCTileRefreshObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onStartListening()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->TAG:Ljava/lang/String;

    const-string v1, "start listening"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->restoreCMCActivation(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->semUpdateDetailView()V

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->isCMCSettingsOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->updateState(Z)V

    return-void
.end method

.method public onStopListening()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    return-void
.end method

.method public onTileAdded()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isCMCForegroundServiceRunning(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    .line 3
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->semUpdateDetailView()V

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->isCMCSettingsOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->updateState(Z)V

    return-void
.end method

.method public onTileRemoved()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    return-void
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->TAG:Ljava/lang/String;

    const-string v1, "semGetDetailView"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->isCMCSettingsOn()Z

    move-result v0

    .line 3
    iget-boolean v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isCmcActivationIntermediateState(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    :cond_1
    xor-int/2addr v3, v2

    .line 5
    iget-boolean v4, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    xor-int/2addr v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/service/quicksettings/TileService;->semFireToggleStateChanged(ZZ)V

    .line 6
    iget-boolean v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    if-eqz v1, :cond_2

    if-nez v3, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->updateIntermediateDetailView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->updateOnDetailView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->updateOffDetailView()Landroid/widget/RemoteViews;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0021

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "settings.CMC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->isCMCSettingsOn()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isCMCForegroundServiceRunning(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v1, v0

    .line 3
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isCmcActivationIntermediateState(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4
    :goto_0
    sget-object v1, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isToggleButtonChecked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public semIsToggleButtonExists()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetToggleButtonChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->TAG:Ljava/lang/String;

    const-string v0, "SetToggleButton is blocked when it is in intermediate state"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance p1, Lcom/samsung/android/cmcsettings/UI/qstiles/a;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/UI/qstiles/a;-><init>(Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;)V

    invoke-virtual {p0, p1}, Landroid/service/quicksettings/TileService;->unlockAndRun(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->mIsNeedToBlock:Z

    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->turnOnOffCMCQuickSettingsTile(Z)V

    :goto_0
    return-void
.end method
