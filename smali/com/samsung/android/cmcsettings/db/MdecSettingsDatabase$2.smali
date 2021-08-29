.class final Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$2;
.super Landroidx/room/s/a;
.source "MdecSettingsDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/room/s/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Lb/p/a/b;)V
    .locals 7

    const-string v0, "value"

    const-string v1, "_id"

    :try_start_0
    const-string v2, "SELECT * FROM mdec_Ui_States"

    .line 1
    invoke-interface {p1, v2}, Lb/p/a/b;->D(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 5
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->access$000(Lb/p/a/b;)V

    .line 11
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "mdec_Ui_States"

    const/4 v3, 0x4

    .line 12
    invoke-interface {p1, v2, v3, v1}, Lb/p/a/b;->I(Ljava/lang/String;ILandroid/content/ContentValues;)J

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->access$100(Lb/p/a/b;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 14
    invoke-static {}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to migrate from database version 3 to 4 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->access$000(Lb/p/a/b;)V

    goto :goto_2

    .line 16
    :catch_1
    invoke-static {}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SQLiteException in migrate from database version 3 to 4"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->access$000(Lb/p/a/b;)V

    :goto_2
    return-void
.end method
