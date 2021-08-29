.class public abstract Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;
.super Landroidx/room/j;
.source "MdecSettingsDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$PopulateDbAsync;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "mdec-ui-settings.db"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MIGRATION_2_3:Landroidx/room/s/a;

.field private static final MIGRATION_3_4:Landroidx/room/s/a;

.field private static sInstance:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

.field private static sRoomDatabaseCallback:Landroidx/room/j$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->LOG_TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$1;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$1;-><init>(II)V

    sput-object v0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->MIGRATION_2_3:Landroidx/room/s/a;

    .line 3
    new-instance v0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$2;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$2;-><init>(II)V

    sput-object v0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->MIGRATION_3_4:Landroidx/room/s/a;

    .line 4
    new-instance v0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$3;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$3;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->sRoomDatabaseCallback:Landroidx/room/j$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/j;-><init>()V

    return-void
.end method

.method private static UpdateTable(Lb/p/a/b;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `mdec_Ui_States`"

    .line 1
    invoke-interface {p0, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `mdec_Ui_States` (`_id` INTEGER NOT NULL, `value` TEXT, PRIMARY KEY(`_id`))"

    .line 2
    invoke-interface {p0, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_mdec_Ui_States__id` ON `mdec_Ui_States` (`_id`)"

    .line 3
    invoke-interface {p0, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lb/p/a/b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->UpdateTable(Lb/p/a/b;)V

    return-void
.end method

.method static synthetic access$100(Lb/p/a/b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->initOldSettingsValue(Lb/p/a/b;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->sInstance:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    return-object v0
.end method

.method public static getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->sInstance:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    const-string v1, "mdec-ui-settings.db"

    invoke-static {p0, v0, v1}, Landroidx/room/i;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/j$a;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroidx/room/j$a;->c()Landroidx/room/j$a;

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/room/s/a;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->MIGRATION_2_3:Landroidx/room/s/a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->MIGRATION_3_4:Landroidx/room/s/a;

    aput-object v2, v0, v1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/room/j$a;->b([Landroidx/room/s/a;)Landroidx/room/j$a;

    sget-object v0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->sRoomDatabaseCallback:Landroidx/room/j$b;

    .line 5
    invoke-virtual {p0, v0}, Landroidx/room/j$a;->a(Landroidx/room/j$b;)Landroidx/room/j$a;

    .line 6
    invoke-virtual {p0}, Landroidx/room/j$a;->d()Landroidx/room/j;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    sput-object p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->sInstance:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    .line 7
    :cond_0
    sget-object p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->sInstance:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    return-object p0
.end method

.method private static initOldSettingsValue(Lb/p/a/b;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x69

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cmc_country_code"

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getStringFromGlobal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "value"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mdec_Ui_States"

    const/4 v5, 0x4

    .line 5
    invoke-interface {p0, v2, v5, v0}, Lb/p/a/b;->I(Ljava/lang/String;ILandroid/content/ContentValues;)J

    const/16 v6, 0x6a

    .line 6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "0"

    .line 7
    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {p0, v2, v5, v0}, Lb/p/a/b;->I(Ljava/lang/String;ILandroid/content/ContentValues;)J

    const/16 v6, 0x6b

    .line 9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "network_type_slot_id_0"

    const/4 v7, 0x1

    .line 10
    invoke-static {v1, v6, v7}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getIntFromSecure(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    invoke-interface {p0, v2, v5, v0}, Lb/p/a/b;->I(Ljava/lang/String;ILandroid/content/ContentValues;)J

    const/16 v6, 0x6c

    .line 12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "network_type_slot_id_1"

    .line 13
    invoke-static {v1, v3, v7}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getIntFromSecure(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    invoke-interface {p0, v2, v5, v0}, Lb/p/a/b;->I(Ljava/lang/String;ILandroid/content/ContentValues;)J

    return-void
.end method


# virtual methods
.method public abstract mdecUIStateDao()Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;
.end method

.method public abstract primaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;
.end method

.method public abstract secondaryDeviceDao()Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;
.end method
