.class public Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;
.super Ljava/lang/Object;
.source "GlobalSettingsDataDao.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->mContext:Landroid/content/Context;

    .line 3
    sput-object v0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->sInstance:Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->sInstance:Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->LOG_TAG:Ljava/lang/String;

    const-string v1, "create GlobalSettingsInternalProviderDao"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;

    invoke-direct {v0}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;-><init>()V

    sput-object v0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->sInstance:Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;

    .line 4
    sput-object p0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->mContext:Landroid/content/Context;

    .line 5
    :cond_0
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->sInstance:Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;

    return-object p0
.end method


# virtual methods
.method public getCmcDeviceId()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getGlobalSettingsDataInfo()Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->LOG_TAG:Ljava/lang/String;

    const-string v1, "globalSettingsDataInfo is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCmcDevices()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getGlobalSettingsDataInfo()Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->LOG_TAG:Ljava/lang/String;

    const-string v1, "globalSettingsDataInfo is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->getCmcDevices()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCmcLines()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getGlobalSettingsDataInfo()Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->LOG_TAG:Ljava/lang/String;

    const-string v1, "globalSettingsDataInfo is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->getCmcLines()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCmcOobeHistory()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getGlobalSettingsDataInfo()Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->LOG_TAG:Ljava/lang/String;

    const-string v1, "globalSettingsDataInfo is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->getCmcOobeHistory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalSettingsDataInfo()Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->LOG_TAG:Ljava/lang/String;

    const-string v2, "context is null"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$GlobalSettingsData;->TABLE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->LOG_TAG:Ljava/lang/String;

    const-string v2, "cursor is null"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 5
    :cond_1
    new-instance v1, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;

    invoke-direct {v1}, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;-><init>()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "CMC_DEVICE_ID"

    .line 7
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->setCmcDeviceId(Ljava/lang/String;)V

    const-string v2, "CMC_LINES"

    .line 8
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->setCmcLines(Ljava/lang/String;)V

    const-string v2, "CMC_DEVICES"

    .line 9
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->setCmcDevices(Ljava/lang/String;)V

    const-string v2, "CMC_OOBE_HISTORY"

    .line 10
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->setCmcOobeHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 12
    :try_start_1
    sget-object v3, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->LOG_TAG:Ljava/lang/String;

    const-string v4, "error is occurred"

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v1

    .line 14
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 15
    throw v1
.end method

.method public setCmcDeviceId(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cmcDeviceId is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->setGlobalSettingsDataInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCmcDevices(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cmcDevices is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, p1, v0}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->setGlobalSettingsDataInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCmcLines(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cmcLines is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->setGlobalSettingsDataInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCmcOobeHistory(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cmcOobeHistory is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->setGlobalSettingsDataInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGlobalSettingsDataInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->LOG_TAG:Ljava/lang/String;

    const-string p2, "context is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_1

    const-string v1, "CMC_DEVICE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "CMC_LINES"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_3

    const-string p1, "CMC_DEVICES"

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p4, :cond_4

    const-string p1, "CMC_OOBE_HISTORY"

    .line 7
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_4
    sget-object p1, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$GlobalSettingsData;->TABLE_URI:Landroid/net/Uri;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_5

    .line 9
    sget-object p1, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$GlobalSettingsData;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_5
    return-void
.end method
