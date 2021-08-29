.class public Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;
.super Ljava/lang/Object;
.source "MdecDatabaseUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static addDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setLine_id(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setDevice_id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setDevice_name(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setDevice_active(I)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setCall_active(I)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setMessage_active(I)V

    const-string p1, "1,1"

    .line 8
    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setActive_services(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p4}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setDevice_category(Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDevice::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->getConnectedDevice(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_0

    .line 12
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->addConnectedDevice(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->updateDeviceName(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static addNewDevices(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceCategoryStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->addDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addThisPhoneDeviceData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance p3, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;

    invoke-direct {p3}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;-><init>()V

    .line 3
    invoke-virtual {p3, p1}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->setDevice_id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3, v4}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->setMsisdn(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p3, p2}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->setDevice_name(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3, p4}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->setActive_services(Ljava/lang/String;)V

    const-string v0, "0"

    .line 7
    invoke-virtual {p3, v0}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->setPrimaryKey(Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->primaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;

    move-result-object v1

    const-string v5, "0"

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;->getPrimaryDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->primaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;->addPrimaryDevice(Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;)V

    :cond_0
    return-void
.end method

.method public static deleteAllPDData(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->primaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;->deleteAllData()V

    return-void
.end method

.method public static deleteAllSDData(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->deleteAllData()V

    return-void
.end method

.method public static deleteOldDevices(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->getAllConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/cmcsettings/utils/d;->a:Lcom/samsung/android/cmcsettings/utils/d;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    move v4, v2

    .line 4
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 5
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    sget-object v5, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteOldDevices::keep::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8
    :cond_0
    sget-object v5, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteOldDevices::delete::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 10
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->deleteOldDevices(Ljava/util/List;)I

    return-void
.end method

.method public static getActiveServicesForPD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->primaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;->getActiveServices(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getActiveServicesForSD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->getActiveServices(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceActivation(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->getDeviceActiveStatus(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDeviceCallActivation(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->getCallActiveStatus(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDeviceMessageActivation(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->getMessageActiveStatus(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getMdecDeviceInfo(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getSecondaryDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/cmcsettings/utils/a;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/utils/a;-><init>(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static removeDevice(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->deleteDevice(Ljava/lang/String;)V

    return-void
.end method

.method public static setActiveServicesForPD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->primaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;->updateActiveServices(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setActiveServicesForSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getActiveServicesForSD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;

    invoke-direct {v1, v0}, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->setActiveServices(Ljava/lang/String;I)V

    .line 4
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object p0

    invoke-virtual {v1}, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->getActiveServiceValueInString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->updateActiveServices(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDeviceActivation(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->updateActiveStatus(Ljava/lang/String;I)V

    return-void
.end method

.method public static setDeviceCallActivation(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->updateCallActiveStatus(Ljava/lang/String;I)V

    return-void
.end method

.method public static setDeviceMessageActivation(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;->updateMessageActiveStatus(Ljava/lang/String;I)V

    return-void
.end method
