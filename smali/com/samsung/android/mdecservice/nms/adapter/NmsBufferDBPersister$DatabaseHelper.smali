.class Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NmsBufferDBPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "MDMNbuffertable.db"

    const/4 v1, 0x0

    const/16 v2, 0x1e

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->dropAllAndReCreateTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Column Exist"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ADD COLUMN "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private dropAllAndReCreateTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dropAllAndReCreateTables"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS sms"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS mms"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS rcs"

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS rcsgroups"

    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS im"

    .line 6
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS ft"

    .line 7
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS calllog"

    .line 8
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS wpm"

    .line 9
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE  IF EXISTS part"

    .line 10
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE  IF EXISTS contact"

    .line 11
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pragma table_info("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const-string v0, "name"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 7
    throw p2

    :cond_2
    :goto_1
    return p2
.end method

.method private findExistTableinDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pragma table_info("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_4

    .line 3
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 4
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 p1, 0x0

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQL Exception while updating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1

    :goto_3
    if-eqz v0, :cond_5

    .line 8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_5
    throw p1
.end method

.method private upgradeDatabaseToVersion(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upgradeDatabaseToVersion"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wpm"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->findExistTableinDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "TEXT"

    if-eqz v1, :cond_0

    const-string v1, "sync_status"

    .line 3
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "sms"

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->findExistTableinDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    const-string v3, "INTEGER"

    const-string v4, "relay_id"

    const-string v5, "cmc_prop"

    if-eqz v1, :cond_1

    const-string v1, "creator"

    .line 5
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, v0, v5, v2}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, v0, v4, v3}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "rcs"

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->findExistTableinDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    const-string v6, "CREATE TABLE IF NOT EXISTS rcsgroups(_id INTEGER PRIMARY KEY AUTOINCREMENT,group_chat_id TEXT, chat_id TEXT, participants LONGTEXT, timestamp TEXT, st_timestamp TEXT, res_url TEXT, result_code INTEGER, sync_status INTEGER, lastmodseq INTEGER DEFAULT 0);"

    const-string v7, "CREATE TABLE IF NOT EXISTS rcs(_id INTEGER PRIMARY KEY AUTOINCREMENT,msg_context TEXT,file_path TEXT,date TEXT,thumbnail_url TEXT,payload_url TEXT,upload_status TEXT,correlation_id TEXT,correlation_tag TEXT,res_url TEXT,result_code INTEGER,sync_status INTEGER,lastmodseq INTEGER DEFAULT 0);"

    if-eqz v1, :cond_2

    const-string v1, "DROP TABLE IF EXISTS rcs"

    .line 9
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS rcsgroups"

    .line 10
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const-string v1, "mms"

    .line 13
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->findExistTableinDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "ct_l"

    .line 14
    invoke-direct {p0, p1, v1, v8, v2}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "exp"

    .line 15
    invoke-direct {p0, p1, v1, v8, v2}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, v1, v5, v2}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, v1, v4, v3}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "ft"

    .line 18
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->findExistTableinDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "participants"

    .line 19
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "calllog"

    .line 20
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->findExistTableinDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "retry_count"

    const-string v3, "INTEGER  DEFAULT 0"

    .line 21
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v1, "contact"

    .line 22
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->findExistTableinDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "CREATE TABLE IF NOT EXISTS contact(_id INTEGER PRIMARY KEY AUTOINCREMENT,is_pd_contact TEXT,normalized_number TEXT,is_available TEXT,features LONG,expiry INTEGER,status TEXT,number TEXT,last_update_time LONG,device_list TEXT);"

    if-eqz v2, :cond_6

    .line 23
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DROP RCS_CONTACT_TABLE"

    invoke-static {v2, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DROP TABLE IF EXISTS contact"

    .line 24
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->findExistTableinDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 27
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    const-string v0, "rcsgroups"

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->findExistTableinDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 29
    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    :cond_8
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->findExistTableinDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 31
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    :cond_9
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "upgradeDatabaseToVersion end"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private upgradeDatabaseToVersion28(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upgradeDatabaseToVersion28"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rcs"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->findExistTableinDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "upload_status"

    const-string v2, "TEXT"

    .line 3
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "upgradeDatabaseToVersion28 end"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private upgradeDatabaseToVersion29(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upgradeDatabaseToVersion29"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cif"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->findExistTableinDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CREATE TABLE IF NOT EXISTS cif(_id INTEGER PRIMARY KEY AUTOINCREMENT,service_id TEXT, cif_content TEXT, date INTEGER, date_formated TEXT, object_id TEXT, res_url TEXT, result_code INTEGER, sync_status INTEGER, lastmodseq INTEGER DEFAULT 0);"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "upgradeDatabaseToVersion28 end"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private upgradeDatabaseToVersion30(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upgradeDatabaseToVersion30"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sms"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->findExistTableinDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sync_way"

    const-string v2, "TEXT"

    .line 3
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "mms"

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->findExistTableinDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "sync_data"

    const-string v2, "BLOB"

    .line 5
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "upgradeDatabaseToVersion30 end"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseHelper onCreate() dbVersion = 30"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS sms(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,thread_id INTEGER, address TEXT, read INTEGER, seen INTEGER, date INTEGER, body TEXT, type TEXT, group_id TEXT, sim_slot INTEGER DEFAULT 0,expires INTEGER, protocol INTEGER, service_category INTEGER, delivery_date INTEGER, group_date INTEGER, date_formated TEXT, _from TEXT, _to TEXT, res_url TEXT, object_id TEXT, parentfolder TEXT, correlation_tag TEXT, correlation_id TEXT, parentfolderpath TEXT, sync_status TEXT, lastmodseq INTEGER DEFAULT 0,creator TEXT, cmc_prop TEXT, relay_id INTEGER, sync_way TEXT, sync_data BLOB);"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS mms(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,thread_id INTEGER, read INTEGER, date INTEGER, sub TEXT, m_id TEXT, m_type TEXT, m_size TEXT, text TEXT, sim_slot INTEGER DEFAULT 0,cc TEXT, bcc TEXT, date_formated TEXT, _from TEXT, _to TEXT, res_url TEXT, object_id TEXT, parentfolder TEXT, correlation_tag TEXT, correlation_id TEXT, parentfolderpath TEXT, sync_status TEXT, lastmodseq INTEGER DEFAULT 0,ct_l TEXT, exp TEXT, cmc_prop TEXT, relay_id INTEGER, sync_way TEXT, sync_data BLOB);"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS calllog(_id INTEGER, date INTEGER, new INTEGER, date_formated TEXT, res_url TEXT, correlation_tag TEXT, retry_count INTEGER DEFAULT 0, lastmodseq INTEGER DEFAULT 0);"

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS wpm(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,thread_id INTEGER, read INTEGER, seen INTEGER, date INTEGER, body TEXT, type TEXT, date_formated TEXT, _from TEXT, _to TEXT, res_url TEXT, object_id TEXT, parentfolder TEXT, correlation_tag TEXT, correlation_id TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0,sync_status TEXT,sync_way TEXT, sync_data BLOB);"

    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER IF NOT EXISTS five_hundred_rows_only_for_calllog AFTER INSERT ON calllog FOR EACH ROW BEGIN DELETE FROM calllog WHERE _id <= (SELECT DISTINCT _id FROM calllog ORDER BY _id DESC LIMIT 1000, 1); END;"

    .line 6
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS part(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER, message_id INTEGER, size INTEGER, content_type TEXT, name TEXT, chset INTEGER, cid TEXT, cl TEXT, _data TEXT, text TEXT, payloadurl TEXT);"

    .line 7
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS rcs(_id INTEGER PRIMARY KEY AUTOINCREMENT,msg_context TEXT,file_path TEXT,date TEXT,thumbnail_url TEXT,payload_url TEXT,upload_status TEXT,correlation_id TEXT,correlation_tag TEXT,res_url TEXT,result_code INTEGER,sync_status INTEGER,lastmodseq INTEGER DEFAULT 0);"

    .line 8
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS contact(_id INTEGER PRIMARY KEY AUTOINCREMENT,is_pd_contact TEXT,normalized_number TEXT,is_available TEXT,features LONG,expiry INTEGER,status TEXT,number TEXT,last_update_time LONG,device_list TEXT);"

    .line 9
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS rcsgroups(_id INTEGER PRIMARY KEY AUTOINCREMENT,group_chat_id TEXT, chat_id TEXT, participants LONGTEXT, timestamp TEXT, st_timestamp TEXT, res_url TEXT, result_code INTEGER, sync_status INTEGER, lastmodseq INTEGER DEFAULT 0);"

    .line 10
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS cif(_id INTEGER PRIMARY KEY AUTOINCREMENT,service_id TEXT, cif_content TEXT, date INTEGER, date_formated TEXT, object_id TEXT, res_url TEXT, result_code INTEGER, sync_status INTEGER, lastmodseq INTEGER DEFAULT 0);"

    .line 11
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dbUpgrade oldversion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    if-lt p2, p3, :cond_0

    const/16 p3, 0x8

    if-gt p2, p3, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Destroying all old data."

    invoke-static {p2, p3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->dropAllAndReCreateTables(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x9

    if-lt p2, p3, :cond_4

    const/16 p3, 0x1a

    if-gt p2, p3, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->upgradeDatabaseToVersion(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    const/16 p3, 0x1b

    if-gt p2, p3, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->upgradeDatabaseToVersion28(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    const/16 p3, 0x1c

    if-gt p2, p3, :cond_3

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->upgradeDatabaseToVersion29(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    const/16 p3, 0x1d

    if-gt p2, p3, :cond_4

    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;->upgradeDatabaseToVersion30(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_4
    :goto_0
    return-void
.end method
