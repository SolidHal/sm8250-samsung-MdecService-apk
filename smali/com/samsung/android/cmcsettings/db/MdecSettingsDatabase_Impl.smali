.class public final Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;
.super Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;
.source "MdecSettingsDatabase_Impl.java"


# instance fields
.field private volatile _mdecUIStateDao:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;

.field private volatile _primaryDeviceDao:Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;

.field private volatile _secondaryDeviceDao:Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;Lb/p/a/b;)Lb/p/a/b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/j;->mDatabase:Lb/p/a/b;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;Lb/p/a/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/j;->internalInitInvalidationTracker(Lb/p/a/b;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 1
    invoke-super {p0}, Landroidx/room/j;->assertNotMainThread()V

    .line 2
    invoke-super {p0}, Landroidx/room/j;->getOpenHelper()Lb/p/a/c;

    move-result-object v2

    invoke-interface {v2}, Lb/p/a/c;->getWritableDatabase()Lb/p/a/b;

    move-result-object v2

    .line 3
    :try_start_0
    invoke-super {p0}, Landroidx/room/j;->beginTransaction()V

    const-string v3, "DELETE FROM `SecondaryDevice`"

    .line 4
    invoke-interface {v2, v3}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `PrimaryDevice`"

    .line 5
    invoke-interface {v2, v3}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `mdec_Ui_States`"

    .line 6
    invoke-interface {v2, v3}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    .line 7
    invoke-super {p0}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-super {p0}, Landroidx/room/j;->endTransaction()V

    .line 9
    invoke-interface {v2, v1}, Lb/p/a/b;->D(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-interface {v2}, Lb/p/a/b;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-interface {v2, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 12
    invoke-super {p0}, Landroidx/room/j;->endTransaction()V

    .line 13
    invoke-interface {v2, v1}, Lb/p/a/b;->D(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 14
    invoke-interface {v2}, Lb/p/a/b;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    invoke-interface {v2, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    .line 16
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/g;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Landroidx/room/g;

    const-string v3, "SecondaryDevice"

    const-string v4, "PrimaryDevice"

    const-string v5, "mdec_Ui_States"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/g;-><init>(Landroidx/room/j;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenHelper(Landroidx/room/a;)Lb/p/a/c;
    .locals 4

    .line 1
    new-instance v0, Landroidx/room/l;

    new-instance v1, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl$1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl$1;-><init>(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;I)V

    const-string v2, "4f6daf341981c84f0acb1b21800cf540"

    const-string v3, "5dd5a9996a097d707a114dbf9b769429"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/l;-><init>(Landroidx/room/a;Landroidx/room/l$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Landroidx/room/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lb/p/a/c$b;->a(Landroid/content/Context;)Lb/p/a/c$b$a;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/a;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Lb/p/a/c$b$a;->c(Ljava/lang/String;)Lb/p/a/c$b$a;

    .line 4
    invoke-virtual {v1, v0}, Lb/p/a/c$b$a;->b(Lb/p/a/c$a;)Lb/p/a/c$b$a;

    .line 5
    invoke-virtual {v1}, Lb/p/a/c$b$a;->a()Lb/p/a/c$b;

    move-result-object v0

    .line 6
    iget-object p1, p1, Landroidx/room/a;->a:Lb/p/a/c$c;

    invoke-interface {p1, v0}, Lb/p/a/c$c;->a(Lb/p/a/c$b;)Lb/p/a/c;

    move-result-object p1

    return-object p1
.end method

.method public mdecUIStateDao()Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->_mdecUIStateDao:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->_mdecUIStateDao:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->_mdecUIStateDao:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->_mdecUIStateDao:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->_mdecUIStateDao:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public primaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->_primaryDeviceDao:Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->_primaryDeviceDao:Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->_primaryDeviceDao:Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->_primaryDeviceDao:Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->_primaryDeviceDao:Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->_secondaryDeviceDao:Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->_secondaryDeviceDao:Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->_secondaryDeviceDao:Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;-><init>(Landroidx/room/j;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->_secondaryDeviceDao:Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->_secondaryDeviceDao:Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
