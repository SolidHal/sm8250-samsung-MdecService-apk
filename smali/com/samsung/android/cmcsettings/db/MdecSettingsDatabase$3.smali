.class final Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$3;
.super Landroidx/room/j$b;
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
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/j$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen(Lb/p/a/b;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/room/j$b;->onOpen(Lb/p/a/b;)V

    .line 2
    new-instance p1, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$PopulateDbAsync;

    invoke-static {}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->access$300()Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$PopulateDbAsync;-><init>(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
