.class Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$PopulateDbAsync;
.super Landroid/os/AsyncTask;
.source "MdecSettingsDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PopulateDbAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mMdecUIStateDao:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;

.field mdecUIState:Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->mdecUIStateDao()Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$PopulateDbAsync;->mMdecUIStateDao:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;

    .line 3
    new-instance p1, Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;

    invoke-direct {p1}, Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$PopulateDbAsync;->mdecUIState:Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$PopulateDbAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 2
    invoke-static {}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "initializing the date in db"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/samsung/android/cmcsettings/contract/MdecUIStateContract;->MDEC_KEY_VALUE_MAP:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$PopulateDbAsync;->mdecUIState:Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;->key:J

    .line 5
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$PopulateDbAsync;->mdecUIState:Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;->value:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$PopulateDbAsync;->mMdecUIStateDao:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;->selectById(J)Landroid/database/Cursor;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "value"

    .line 8
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " value "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$PopulateDbAsync;->mdecUIState:Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;

    iput-object v1, v0, Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;->value:Ljava/lang/String;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$PopulateDbAsync;->mMdecUIStateDao:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase$PopulateDbAsync;->mdecUIState:Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;

    invoke-interface {v0, v1}, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;->insert(Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;)J

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
