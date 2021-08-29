.class Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GmContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider;Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider$DatabaseHelper;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider;

    const-string p1, "samsung_mdec_gear.db"

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DatabaseHelper constructor"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseHelper onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS gears(_ID INTEGER PRIMARY KEY AUTOINCREMENT,DEVICE_NAME TEXT,BT_ID TEXT,WIFI_MAC TEXT,ONE_NUMBER INTEGER,SERVICE_TYPE TEXT,ACTIVATE INTEGER,ENABLE INTEGER,HAS_ES INTEGER)"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider$DatabaseHelper;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider;

    new-instance v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider$DatabaseHelper;

    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider$DatabaseHelper;-><init>(Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider;->access$102(Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider;Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider$DatabaseHelper;)Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider$DatabaseHelper;

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    if-le p3, p2, :cond_0

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider;->access$000()Ljava/lang/String;

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

    const-string p2, "DROP TABLE IF EXISTS gears"

    .line 2
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
