.class Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EntitlementProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "samsung_mdec_service.db"

    const/4 v1, 0x0

    const/16 v2, 0x1f

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DatabaseHelper constructor"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS lines"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS devices"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS provisioned_devices"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS singleservers"

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS multiservers"

    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS fcm"

    .line 6
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS sainfo"

    .line 7
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS defaultAcs"

    .line 8
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS rollbackActiveServices"

    .line 9
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS deviceInformation"

    .line 10
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS globalSettingsData"

    .line 11
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private getValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    .line 6
    :try_start_1
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->access$000()Ljava/lang/String;

    move-result-object p3

    const-string v1, "error is occurred"

    invoke-static {p3, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :goto_2
    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_2
    throw p2
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseHelper onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS lines(_id INTEGER PRIMARY KEY AUTOINCREMENT,IMPU TEXT,LINE_ID TEXT,LINE_NAME TEXT,OWNER_DEVICE_ID TEXT,OWNER_USER_ID TEXT,LINE_ACTIVE INTEGER,MSISDN TEXT,MODIFIED_AT TEXT)"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS devices(_id INTEGER PRIMARY KEY AUTOINCREMENT,AUTH_UID TEXT,LINE_ID TEXT,DEVICE_ID TEXT,ACCOUNT_TYPE TEXT,MODEL_NUMBER TEXT,DEVICE_NAME TEXT,DEVICE_ACTIVE INTEGER,DEVICE_APPLICATION_DATA TEXT,DEVICE_DEVICE_DATA TEXT,DEVICE_PUSH_TYPE TEXT,DEVICE_PUSH_TOKEN TEXT,DEVICE_TYPE TEXT,ACTIVE_SERVICES TEXT,LINE_OWNER_DEVICE_ID TEXT,DEVICE_PD_MSISDN TEXT,CMC_VERSION TEXT,IS_LINE_OWNER INTEGER)"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS provisioned_devices(_id INTEGER PRIMARY KEY AUTOINCREMENT,AUTH_UID TEXT,LINE_ID TEXT,DEVICE_ID TEXT,ACCOUNT_TYPE TEXT,MODEL_NUMBER TEXT,DEVICE_NAME TEXT,DEVICE_ACTIVE INTEGER,DEVICE_APPLICATION_DATA TEXT,DEVICE_DEVICE_DATA TEXT,DEVICE_PUSH_TYPE TEXT,DEVICE_PUSH_TOKEN TEXT,DEVICE_TYPE TEXT,DEVICE_ACTIVE_SERVICES TEXT,LINE_OWNER_DEVICE_ID TEXT,DEVICE_PD_MSISDN TEXT,CMC_VERSION TEXT,IS_LINE_OWNER INTEGER)"

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS singleservers(_id INTEGER PRIMARY KEY AUTOINCREMENT,LOCAL_ACS_URI TEXT,ES_URI TEXT);"

    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS multiservers(_id INTEGER PRIMARY KEY AUTOINCREMENT,LINE_ID TEXT,NMS_URI TEXT,PCSCF_URI TEXT);"

    .line 6
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS fcm(_id INTEGER PRIMARY KEY AUTOINCREMENT,FCM_PUSH_TOKEN TEXT);"

    .line 7
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS sainfo(_id INTEGER PRIMARY KEY AUTOINCREMENT,USER_ID TEXT,ACCESS_TOKEN TEXT,API_SERVER_URL TEXT,MCC TEXT,REGION_MCC TEXT);"

    .line 8
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS defaultAcs(_id INTEGER PRIMARY KEY AUTOINCREMENT,DEFAULT_ACS TEXT);"

    .line 9
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS rollbackActiveServices(_id INTEGER PRIMARY KEY AUTOINCREMENT,DEVICE_ID TEXT,ACTIVE_SERVICES TEXT);"

    .line 10
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS deviceInformation(_id INTEGER PRIMARY KEY AUTOINCREMENT,WIFI_MAC TEXT);"

    .line 11
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS globalSettingsData(_id INTEGER PRIMARY KEY AUTOINCREMENT,CMC_DEVICE_ID TEXT,CMC_OOBE_HISTORY TEXT,CMC_LINES TEXT,CMC_DEVICES TEXT);"

    .line 12
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    if-ge p3, p2, :cond_0

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB downgrade re-create db : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    if-le p3, p2, :cond_0

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB update re-create db : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
