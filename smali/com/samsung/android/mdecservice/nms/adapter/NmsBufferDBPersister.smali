.class public Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;
.super Ljava/lang/Object;
.source "NmsBufferDBPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CALLLOG_TABLE:Ljava/lang/String; = "calllog"

.field private static final CHATBOT_INFO_TABLE:Ljava/lang/String; = "cif"

.field private static final CREATE_CALLLOG_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS calllog(_id INTEGER, date INTEGER, new INTEGER, date_formated TEXT, res_url TEXT, correlation_tag TEXT, retry_count INTEGER DEFAULT 0, lastmodseq INTEGER DEFAULT 0);"

.field private static final CREATE_CHAT_BOT_INFO_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS cif(_id INTEGER PRIMARY KEY AUTOINCREMENT,service_id TEXT, cif_content TEXT, date INTEGER, date_formated TEXT, object_id TEXT, res_url TEXT, result_code INTEGER, sync_status INTEGER, lastmodseq INTEGER DEFAULT 0);"

.field private static final CREATE_DELETE_TRIGGER_CALL:Ljava/lang/String; = "CREATE TRIGGER IF NOT EXISTS five_hundred_rows_only_for_calllog AFTER INSERT ON calllog FOR EACH ROW BEGIN DELETE FROM calllog WHERE _id <= (SELECT DISTINCT _id FROM calllog ORDER BY _id DESC LIMIT 1000, 1); END;"

.field private static final CREATE_MMSPART_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS part(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER, message_id INTEGER, size INTEGER, content_type TEXT, name TEXT, chset INTEGER, cid TEXT, cl TEXT, _data TEXT, text TEXT, payloadurl TEXT);"

.field private static final CREATE_MMS_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS mms(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,thread_id INTEGER, read INTEGER, date INTEGER, sub TEXT, m_id TEXT, m_type TEXT, m_size TEXT, text TEXT, sim_slot INTEGER DEFAULT 0,cc TEXT, bcc TEXT, date_formated TEXT, _from TEXT, _to TEXT, res_url TEXT, object_id TEXT, parentfolder TEXT, correlation_tag TEXT, correlation_id TEXT, parentfolderpath TEXT, sync_status TEXT, lastmodseq INTEGER DEFAULT 0,ct_l TEXT, exp TEXT, cmc_prop TEXT, relay_id INTEGER, sync_way TEXT, sync_data BLOB);"

.field private static final CREATE_RCS_CONTACT_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS contact(_id INTEGER PRIMARY KEY AUTOINCREMENT,is_pd_contact TEXT,normalized_number TEXT,is_available TEXT,features LONG,expiry INTEGER,status TEXT,number TEXT,last_update_time LONG,device_list TEXT);"

.field private static final CREATE_RCS_GROUP_INFO_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS rcsgroups(_id INTEGER PRIMARY KEY AUTOINCREMENT,group_chat_id TEXT, chat_id TEXT, participants LONGTEXT, timestamp TEXT, st_timestamp TEXT, res_url TEXT, result_code INTEGER, sync_status INTEGER, lastmodseq INTEGER DEFAULT 0);"

.field private static final CREATE_RCS_MESSAGES_COMMON_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS rcs(_id INTEGER PRIMARY KEY AUTOINCREMENT,msg_context TEXT,file_path TEXT,date TEXT,thumbnail_url TEXT,payload_url TEXT,upload_status TEXT,correlation_id TEXT,correlation_tag TEXT,res_url TEXT,result_code INTEGER,sync_status INTEGER,lastmodseq INTEGER DEFAULT 0);"

.field private static final CREATE_SMS_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS sms(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,thread_id INTEGER, address TEXT, read INTEGER, seen INTEGER, date INTEGER, body TEXT, type TEXT, group_id TEXT, sim_slot INTEGER DEFAULT 0,expires INTEGER, protocol INTEGER, service_category INTEGER, delivery_date INTEGER, group_date INTEGER, date_formated TEXT, _from TEXT, _to TEXT, res_url TEXT, object_id TEXT, parentfolder TEXT, correlation_tag TEXT, correlation_id TEXT, parentfolderpath TEXT, sync_status TEXT, lastmodseq INTEGER DEFAULT 0,creator TEXT, cmc_prop TEXT, relay_id INTEGER, sync_way TEXT, sync_data BLOB);"

.field private static final CREATE_WAP_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS wpm(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,thread_id INTEGER, read INTEGER, seen INTEGER, date INTEGER, body TEXT, type TEXT, date_formated TEXT, _from TEXT, _to TEXT, res_url TEXT, object_id TEXT, parentfolder TEXT, correlation_tag TEXT, correlation_id TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0,sync_status TEXT,sync_way TEXT, sync_data BLOB);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "MDMNbuffertable.db"

.field private static final DATABASE_VERSION:I = 0x1e

.field private static final FT_MESSAGE_TABLE:Ljava/lang/String; = "ft"

.field private static final IM_MESSAGE_TABLE:Ljava/lang/String; = "im"

.field private static final LOG_TAG:Ljava/lang/String; = "NmsBufferDBPersister"

.field private static final MMSPART_MESSAGE_TABLE:Ljava/lang/String; = "part"

.field private static final MMS_MESSAGE_TABLE:Ljava/lang/String; = "mms"

.field private static final MMS_SMS_TABLE:Ljava/lang/String; = "( SELECT _bufferdbid, correlation_tag, correlation_id, res_url, object_id FROM sms UNION SELECT _bufferdbid, correlation_tag, correlation_id, res_url, object_id FROM mms )"

.field private static final MMS_SMS_WPM_TABLE:Ljava/lang/String; = "( SELECT _bufferdbid, correlation_tag, correlation_id, res_url, object_id FROM sms UNION SELECT _bufferdbid, correlation_tag, correlation_id, res_url, object_id FROM mms UNION SELECT _bufferdbid, correlation_tag, correlation_id, res_url, object_id FROM wpm)"

.field private static final RCS_CONTACT_TABLE:Ljava/lang/String; = "contact"

.field private static final RCS_GROUPS_TABLE:Ljava/lang/String; = "rcsgroups"

.field private static final RCS_MESSAGES_TABLE:Ljava/lang/String; = "rcs"

.field private static final SMS_MESSAGE_TABLE:Ljava/lang/String; = "sms"

.field private static final WAP_MESSAGE_TABLE:Ljava/lang/String; = "wpm"

.field private static sInstance:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public final mContext:Landroid/content/Context;

.field private final mDatabaseHelper:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;

.field private mIsLoaded:Z

.field private mMapUriTableName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mIsLoaded:Z

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mDatabaseHelper:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "( SELECT _bufferdbid, correlation_tag, correlation_id, res_url, object_id FROM sms UNION SELECT _bufferdbid, correlation_tag, correlation_id, res_url, object_id FROM mms UNION SELECT _bufferdbid, correlation_tag, correlation_id, res_url, object_id FROM wpm)"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sms"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mms"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "( SELECT _bufferdbid, correlation_tag, correlation_id, res_url, object_id FROM sms UNION SELECT _bufferdbid, correlation_tag, correlation_id, res_url, object_id FROM mms )"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "calllog"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "wpm"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "part"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string v0, " phase-2"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rcs"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "contact"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rcsgroups"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v0, 0x31

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cif"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$1;-><init>(Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;)Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mDatabaseHelper:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;
    .locals 2

    const-class v0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->sInstance:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->sInstance:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->sInstance:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isInvalidInsertion(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 7

    const-string v0, "sms"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "mms"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    const-string v1, "res_url"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "_to"

    .line 3
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    aput-object v1, v6, v3

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v4, "select count(*) from sms where res_url=?"

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v4, "select count(*) from mms where res_url=?"

    :cond_3
    :goto_0
    if-eqz v4, :cond_6

    .line 7
    invoke-virtual {p3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 8
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 9
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, ","

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    .line 11
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, p1, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There already exists same data, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    .line 13
    :cond_5
    :goto_1
    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 14
    throw p1

    :cond_6
    :goto_2
    const-string p1, "contact"

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 16
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tableName = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", isInvalidInsertion = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return v3
.end method

.method private isNotValidRcsTable(I)Z
    .locals 1

    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private isNotValidRcsUri(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "content://im/ft"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "content://im/chat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "content://rcs/messages"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "content://rcs/groups"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    nop

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public deleteConversation(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NMSDB|DELETECONV|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] selection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", selectionArgs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->isNotValidRcsUri(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string p2, "updateTable: invalid uri"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 8
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mDatabaseHelper:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 10
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string p3, "thread_id==?"

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v1

    .line 13
    :cond_2
    invoke-virtual {v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    sget-object p2, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SQL exception while querying messages "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    return v1

    .line 17
    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 18
    throw p1

    :catch_1
    move-exception p1

    .line 19
    sget-object p2, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SQLiteDiskIOException : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public deleteTable(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NMSDB|DELETE|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] selection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", selectionArgs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->isNotValidRcsUri(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string p2, "deleteTable: invalid uri"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 8
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mDatabaseHelper:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 10
    :try_start_1
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    .line 13
    :try_start_2
    sget-object p3, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQL exception while querying messages "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    return v0

    .line 14
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 15
    throw p2

    :catch_1
    move-exception p1

    .line 16
    sget-object p2, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SQLiteDiskIOException : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public insertTable(Landroid/net/Uri;ILandroid/content/ContentValues;)J
    .locals 5

    .line 1
    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NMSDB|INSERT|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getContentValueLog(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mDatabaseHelper:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->isNotValidRcsUri(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, p3, p2, v0}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->isInvalidInsertion(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 p1, 0x0

    .line 7
    :try_start_1
    invoke-virtual {v0, p2, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10
    :try_start_2
    sget-object p2, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQL exception while insertTable "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 11
    sget-object p2, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException insertTable: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-wide v1

    .line 12
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 13
    throw p1

    .line 14
    :cond_2
    :goto_3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string p2, "insertTable: invalid uri/ Invalid Insertion"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :catch_2
    move-exception p1

    .line 15
    sget-object p2, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SQLiteDiskIOException : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method public load()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string v1, "load"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mDatabaseHelper:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mIsLoaded:Z

    return-void
.end method

.method public queryMessageThreadIdList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryMessageThread: "

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mDatabaseHelper:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p1, "select distinct thread_id from ( select thread_id from sms union select thread_id from mms ) order by thread_id ASC"

    .line 4
    invoke-virtual {v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "( SELECT thread_id FROM sms UNION SELECT thread_id FROM mms )"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v9, p4

    .line 5
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_1
    move-object v0, p1

    .line 6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 8
    :try_start_2
    sget-object p2, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SQL exception while querying messages "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_3
    return-object v0

    .line 9
    :goto_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 10
    throw p1

    :catch_1
    move-exception p1

    .line 11
    sget-object p2, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SQLiteDiskIOException : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public queryRowCountForMsg([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string p2, "queryRowCountForMsg: "

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mDatabaseHelper:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string p3, "select sum(rows) AS total_rows FROM (SELECT COUNT(*) AS rows FROM sms UNION ALL SELECT COUNT(*) AS rows FROM mms UNION ALL SELECT COUNT(*) AS rows FROM wpm)"

    .line 4
    invoke-virtual {p2, p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p3

    .line 7
    :try_start_2
    sget-object p4, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQL exception while querying messages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-object p1

    .line 8
    :goto_2
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 9
    throw p1

    :catch_1
    move-exception p2

    .line 10
    sget-object p3, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SQLiteDiskIOException : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->isNotValidRcsTable(I)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget-object p2, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "queryTable: invalid uri"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    .line 4
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mDatabaseHelper:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 6
    :try_start_1
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    .line 9
    :try_start_2
    sget-object p3, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "SQL exception while querying messages "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-object v9

    .line 10
    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 11
    throw p2

    :catch_1
    move-exception p1

    .line 12
    sget-object p2, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SQLiteDiskIOException : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NMSDB|UPDATE|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] selection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", selectionArgs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getContentValueLog(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->isNotValidRcsUri(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 8
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string p2, "updateTable: invalid uri"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 9
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->mDatabaseHelper:Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 11
    :try_start_1
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    .line 14
    :try_start_2
    sget-object p3, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "SQL exception while querying messages "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    return v0

    .line 15
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 16
    throw p2

    :catch_1
    move-exception p1

    .line 17
    sget-object p2, Lcom/samsung/android/mdecservice/nms/adapter/NmsBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SQLiteDiskIOException : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
