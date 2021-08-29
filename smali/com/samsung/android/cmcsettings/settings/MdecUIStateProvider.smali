.class public Lcom/samsung/android/cmcsettings/settings/MdecUIStateProvider;
.super Landroid/content/ContentProvider;
.source "MdecUIStateProvider.java"


# static fields
.field private static final MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mdecUIStateDao:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/cmcsettings/settings/MdecUIStateProvider;->MATCHER:Landroid/content/UriMatcher;

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/contract/MdecUIStateContract;->MDEC_KEY_VALUE_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    sget-object v2, Lcom/samsung/android/cmcsettings/settings/MdecUIStateProvider;->MATCHER:Landroid/content/UriMatcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mdec_Ui_States/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-string v4, "com.samsung.android.mdecservice.provider.MdecUIStateProvider"

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/settings/MdecUIStateProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p1, "vnd.android.cursor.item/com.samsung.android.mdecservice.provider.MdecUIStateProvider.mdec_Ui_States"

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->getAppDatabase(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/db/MdecSettingsDatabase;->mdecUIStateDao()Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/settings/MdecUIStateProvider;->mdecUIStateDao:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    sget-object p2, Lcom/samsung/android/cmcsettings/settings/MdecUIStateProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p3, p0, Lcom/samsung/android/cmcsettings/settings/MdecUIStateProvider;->mdecUIStateDao:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p4

    invoke-interface {p3, p4, p5}, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;->selectById(J)Landroid/database/Cursor;

    move-result-object p3

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object p3

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null Context:"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown URI: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    .line 1
    sget-object p3, Lcom/samsung/android/cmcsettings/settings/MdecUIStateProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_5

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 3
    invoke-static {p2}, Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;->fromContentValues(Landroid/content/ContentValues;)Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;->key:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 5
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/cmcsettings/settings/MdecUIStateProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8
    invoke-interface {v0, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 10
    iget-object v0, p2, Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;->value:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_0
    iget-object p4, p0, Lcom/samsung/android/cmcsettings/settings/MdecUIStateProvider;->mdecUIStateDao:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;

    invoke-interface {p4, p2}, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;->update(Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;)I

    move-result p2

    if-lez p2, :cond_1

    .line 12
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p2

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Update Error:"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Key Not Found:"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Error ContentValues:"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null Context:"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown URI: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
