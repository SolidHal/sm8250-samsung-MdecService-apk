.class Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl$1;
.super Landroidx/room/l$a;
.source "MdecSettingsDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->createOpenHelper(Landroidx/room/a;)Lb/p/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl$1;->this$0:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/l$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Lb/p/a/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `SecondaryDevice` (`device_id` TEXT NOT NULL, `line_id` TEXT, `device_active` INTEGER NOT NULL, `call_active` INTEGER NOT NULL, `message_active` INTEGER NOT NULL, `active_services` TEXT, `device_name` TEXT, `device_category` TEXT, PRIMARY KEY(`device_id`))"

    .line 1
    invoke-interface {p1, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `PrimaryDevice` (`primary_key` TEXT NOT NULL, `device_id` TEXT, `device_name` TEXT, `msisdn` TEXT, `active_services` TEXT, PRIMARY KEY(`primary_key`))"

    .line 2
    invoke-interface {p1, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `mdec_Ui_States` (`_id` INTEGER NOT NULL, `value` TEXT, PRIMARY KEY(`_id`))"

    .line 3
    invoke-interface {p1, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_mdec_Ui_States__id` ON `mdec_Ui_States` (`_id`)"

    .line 4
    invoke-interface {p1, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 5
    invoke-interface {p1, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'4f6daf341981c84f0acb1b21800cf540\')"

    .line 6
    invoke-interface {p1, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Lb/p/a/b;)V
    .locals 3

    const-string v0, "DROP TABLE IF EXISTS `SecondaryDevice`"

    .line 1
    invoke-interface {p1, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `PrimaryDevice`"

    .line 2
    invoke-interface {p1, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `mdec_Ui_States`"

    .line 3
    invoke-interface {p1, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl$1;->this$0:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->access$000(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl$1;->this$0:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->access$100(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl$1;->this$0:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;

    invoke-static {v2}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->access$200(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/j$b;

    invoke-virtual {v2, p1}, Landroidx/room/j$b;->onDestructiveMigration(Lb/p/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCreate(Lb/p/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl$1;->this$0:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->access$300(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl$1;->this$0:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->access$400(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl$1;->this$0:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;

    invoke-static {v2}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->access$500(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/j$b;

    invoke-virtual {v2, p1}, Landroidx/room/j$b;->onCreate(Lb/p/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Lb/p/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl$1;->this$0:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;

    invoke-static {v0, p1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->access$602(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;Lb/p/a/b;)Lb/p/a/b;

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl$1;->this$0:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;

    invoke-static {v0, p1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->access$700(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;Lb/p/a/b;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl$1;->this$0:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->access$800(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl$1;->this$0:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->access$900(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl$1;->this$0:Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;

    invoke-static {v2}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;->access$1000(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/j$b;

    invoke-virtual {v2, p1}, Landroidx/room/j$b;->onOpen(Lb/p/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostMigrate(Lb/p/a/b;)V
    .locals 0

    return-void
.end method

.method public onPreMigrate(Lb/p/a/b;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/room/t/c;->a(Lb/p/a/b;)V

    return-void
.end method

.method protected onValidateSchema(Lb/p/a/b;)Landroidx/room/l$b;
    .locals 23

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Landroidx/room/t/g$a;

    const-string v4, "device_id"

    const-string v5, "TEXT"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroidx/room/t/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "device_id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Landroidx/room/t/g$a;

    const-string v5, "line_id"

    const-string v6, "TEXT"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroidx/room/t/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "line_id"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Landroidx/room/t/g$a;

    const-string v6, "device_active"

    const-string v7, "INTEGER"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/t/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "device_active"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Landroidx/room/t/g$a;

    const-string v6, "call_active"

    const-string v7, "INTEGER"

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/t/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "call_active"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Landroidx/room/t/g$a;

    const-string v6, "message_active"

    const-string v7, "INTEGER"

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/t/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "message_active"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v2, Landroidx/room/t/g$a;

    const-string v6, "active_services"

    const-string v7, "TEXT"

    const/4 v8, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/t/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "active_services"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Landroidx/room/t/g$a;

    const-string v6, "device_name"

    const-string v7, "TEXT"

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/t/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "device_name"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v2, Landroidx/room/t/g$a;

    const-string v7, "device_category"

    const-string v8, "TEXT"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/t/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "device_category"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v2, Ljava/util/HashSet;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 11
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 12
    new-instance v8, Landroidx/room/t/g;

    const-string v9, "SecondaryDevice"

    invoke-direct {v8, v9, v1, v2, v7}, Landroidx/room/t/g;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 13
    invoke-static {v0, v9}, Landroidx/room/t/g;->a(Lb/p/a/b;Ljava/lang/String;)Landroidx/room/t/g;

    move-result-object v1

    .line 14
    invoke-virtual {v8, v1}, Landroidx/room/t/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "\n Found:\n"

    if-nez v2, :cond_0

    .line 15
    new-instance v0, Landroidx/room/l$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecondaryDevice(com.samsung.android.cmcsettings.db.entity.SecondaryDeviceModel).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Landroidx/room/l$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 16
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 17
    new-instance v2, Landroidx/room/t/g$a;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v9, "primary_key"

    const-string v10, "TEXT"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/t/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "primary_key"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v2, Landroidx/room/t/g$a;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v10, "device_id"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Landroidx/room/t/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v2, Landroidx/room/t/g$a;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const-string v17, "device_name"

    const-string v18, "TEXT"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Landroidx/room/t/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v2, Landroidx/room/t/g$a;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v9, "msisdn"

    const-string v10, "TEXT"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/t/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "msisdn"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v2, Landroidx/room/t/g$a;

    const-string v9, "active_services"

    const-string v10, "TEXT"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/t/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 23
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 24
    new-instance v4, Landroidx/room/t/g;

    const-string v5, "PrimaryDevice"

    invoke-direct {v4, v5, v1, v2, v3}, Landroidx/room/t/g;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 25
    invoke-static {v0, v5}, Landroidx/room/t/g;->a(Lb/p/a/b;Ljava/lang/String;)Landroidx/room/t/g;

    move-result-object v1

    .line 26
    invoke-virtual {v4, v1}, Landroidx/room/t/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 27
    new-instance v0, Landroidx/room/l$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrimaryDevice(com.samsung.android.cmcsettings.db.entity.PrimaryDeviceModel).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Landroidx/room/l$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 28
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 29
    new-instance v2, Landroidx/room/t/g$a;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v9, "_id"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/t/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "_id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v2, Landroidx/room/t/g$a;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v9, "value"

    const-string v10, "TEXT"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/t/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "value"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 32
    new-instance v4, Ljava/util/HashSet;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 33
    new-instance v8, Landroidx/room/t/g$d;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v9, "index_mdec_Ui_States__id"

    invoke-direct {v8, v9, v6, v3}, Landroidx/room/t/g$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v3, Landroidx/room/t/g;

    const-string v8, "mdec_Ui_States"

    invoke-direct {v3, v8, v1, v2, v4}, Landroidx/room/t/g;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 35
    invoke-static {v0, v8}, Landroidx/room/t/g;->a(Lb/p/a/b;Ljava/lang/String;)Landroidx/room/t/g;

    move-result-object v0

    .line 36
    invoke-virtual {v3, v0}, Landroidx/room/t/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 37
    new-instance v1, Landroidx/room/l$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mdec_Ui_States(com.samsung.android.cmcsettings.db.entity.MdecUIState).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Landroidx/room/l$b;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 38
    :cond_2
    new-instance v0, Landroidx/room/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v1}, Landroidx/room/l$b;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
