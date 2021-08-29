.class final Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$1;
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
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `mdec_Ui_States` (`_id` INTEGER NOT NULL, `value` INTEGER, PRIMARY KEY(`_id`))"

    .line 1
    invoke-interface {p1, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_mdec_Ui_States__id` ON `mdec_Ui_States` (`_id`)"

    .line 2
    invoke-interface {p1, v0}, Lb/p/a/b;->execSQL(Ljava/lang/String;)V

    return-void
.end method
