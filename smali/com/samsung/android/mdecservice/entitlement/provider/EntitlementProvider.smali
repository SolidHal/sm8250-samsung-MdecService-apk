.class public Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;
.super Landroid/content/ContentProvider;
.source "EntitlementProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDatabaseHelper:Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->LOG_TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.mdecservice.entitlementprovider"

    const-string v2, "lines"

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "devices"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "provisioned_devices"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "singleservers"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "multiservers"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "fcm"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "sainfo"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "defaultAcs"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "rollbackActiveServices"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "deviceInformation"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "globalSettingsData"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 13

    const-string v0, "provisioned_devices"

    const-string v1, "devices"

    const-string v2, "lines"

    .line 1
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bulk insert:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->LOG_TAG:Ljava/lang/String;

    const-string p2, "values is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 3
    :cond_0
    array-length v4, p2

    .line 4
    iget-object v5, p0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->mDatabaseHelper:Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider$DatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6
    :try_start_0
    sget-object v6, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "Failed to insert row into : "

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    if-eqz v6, :cond_6

    const/4 v2, 0x1

    if-eq v6, v2, :cond_4

    const/16 v1, 0xa

    if-eq v6, v1, :cond_1

    goto/16 :goto_3

    .line 7
    :cond_1
    :try_start_1
    invoke-virtual {v5, v0, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    array-length v2, p2

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v6, p2, v3

    .line 9
    invoke-virtual {v5, v0, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    cmp-long v6, v11, v8

    if-lez v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    new-instance p2, Landroid/database/SQLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    move v3, v1

    goto :goto_3

    :catch_0
    move-exception p2

    move v3, v1

    goto :goto_5

    .line 11
    :cond_4
    :try_start_3
    invoke-virtual {v5, v1, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    array-length v2, p2

    :goto_1
    if-ge v3, v2, :cond_8

    aget-object v6, p2, v3

    .line 13
    invoke-virtual {v5, v1, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    cmp-long v6, v11, v8

    if-lez v6, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 14
    :cond_5
    new-instance p2, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :cond_6
    :try_start_5
    invoke-virtual {v5, v2, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 16
    :try_start_6
    array-length v1, p2

    :goto_2
    if-ge v3, v1, :cond_8

    aget-object v6, p2, v3

    .line 17
    invoke-virtual {v5, v2, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    cmp-long v6, v11, v8

    if-lez v6, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 18
    :cond_7
    new-instance p2, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_8
    move v3, v0

    .line 19
    :goto_3
    :try_start_7
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_9

    .line 20
    :goto_4
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_6

    :catch_1
    move-exception p2

    move v3, v0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_2
    move-exception p2

    .line 21
    :goto_5
    :try_start_8
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Could not insert table"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    :goto_6
    if-gtz v4, :cond_a

    if-lez v3, :cond_b

    .line 23
    :cond_a
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_b
    return v4

    :goto_7
    if-eqz v5, :cond_c

    .line 24
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 25
    :cond_c
    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->mDatabaseHelper:Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "provisioned_devices"

    .line 5
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_1
    const-string v2, "globalSettingsData"

    .line 6
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_2
    const-string v2, "deviceInformation"

    .line 7
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_3
    const-string v2, "rollbackActiveServices"

    .line 8
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_4
    const-string v2, "defaultAcs"

    .line 9
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_5
    const-string v2, "sainfo"

    .line 10
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_6
    const-string v2, "fcm"

    .line 11
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_7
    const-string v2, "multiservers"

    .line 12
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_8
    const-string v2, "singleservers"

    .line 13
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_9
    const-string v2, "devices"

    .line 14
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_a
    const-string v2, "lines"

    .line 15
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 16
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 17
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p2

    .line 18
    :try_start_1
    sget-object p3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Could not delete table"

    invoke-static {p3, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_2
    if-lez v1, :cond_1

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_1
    return v1

    :goto_3
    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 22
    :cond_2
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->mDatabaseHelper:Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 4
    :try_start_0
    sget-object v4, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move-wide v3, v1

    goto :goto_0

    :pswitch_0
    const-string v4, "provisioned_devices"

    .line 5
    invoke-virtual {v0, v4, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    goto :goto_0

    :pswitch_1
    const-string v4, "globalSettingsData"

    .line 6
    invoke-virtual {v0, v4, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    goto :goto_0

    :pswitch_2
    const-string v4, "deviceInformation"

    .line 7
    invoke-virtual {v0, v4, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    goto :goto_0

    :pswitch_3
    const-string v4, "rollbackActiveServices"

    .line 8
    invoke-virtual {v0, v4, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    goto :goto_0

    :pswitch_4
    const-string v4, "defaultAcs"

    .line 9
    invoke-virtual {v0, v4, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    goto :goto_0

    :pswitch_5
    const-string v4, "sainfo"

    .line 10
    invoke-virtual {v0, v4, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    goto :goto_0

    :pswitch_6
    const-string v4, "fcm"

    .line 11
    invoke-virtual {v0, v4, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    goto :goto_0

    :pswitch_7
    const-string v4, "multiservers"

    .line 12
    invoke-virtual {v0, v4, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    goto :goto_0

    :pswitch_8
    const-string v4, "singleservers"

    .line 13
    invoke-virtual {v0, v4, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    goto :goto_0

    :pswitch_9
    const-string v4, "devices"

    .line 14
    invoke-virtual {v0, v4, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    goto :goto_0

    :pswitch_a
    const-string v4, "lines"

    .line 15
    invoke-virtual {v0, v4, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    move-object p2, p1

    goto :goto_2

    :catch_0
    move-exception p2

    move-wide v4, v3

    move-object v3, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p2

    move-wide v4, v1

    .line 18
    :goto_1
    :try_start_2
    sget-object v6, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Could not insert table"

    invoke-static {v6, v7}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    move-object p2, v3

    move-wide v3, v4

    :goto_2
    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 21
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_2
    return-object p2

    :goto_3
    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 23
    :cond_3
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyChange(Landroid/net/Uri;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onCreate()Z
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->mDatabaseHelper:Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider$DatabaseHelper;

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->mDatabaseHelper:Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v9, 0x0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v2, "provisioned_devices"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 5
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_0

    :pswitch_1
    const-string v2, "globalSettingsData"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 6
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "deviceInformation"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 7
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "rollbackActiveServices"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 8
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_0

    :pswitch_4
    const-string v2, "defaultAcs"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 9
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_0

    :pswitch_5
    const-string v2, "sainfo"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 10
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_0

    :pswitch_6
    const-string v2, "fcm"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 11
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    :pswitch_7
    const-string v2, "multiservers"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 12
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    :pswitch_8
    const-string v2, "singleservers"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 13
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    :pswitch_9
    const-string v2, "devices"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 14
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    :pswitch_a
    const-string v2, "lines"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 15
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 16
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 17
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 18
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Could not update table"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_2
    return-object v9

    :goto_3
    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 21
    :cond_1
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->mDatabaseHelper:Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "provisioned_devices"

    .line 5
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_1
    const-string v2, "globalSettingsData"

    .line 6
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_2
    const-string v2, "deviceInformation"

    .line 7
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_3
    const-string v2, "rollbackActiveServices"

    .line 8
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_4
    const-string v2, "defaultAcs"

    .line 9
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_5
    const-string v2, "sainfo"

    .line 10
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_6
    const-string v2, "fcm"

    .line 11
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_7
    const-string v2, "multiservers"

    .line 12
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_8
    const-string v2, "singleservers"

    .line 13
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_9
    const-string v2, "devices"

    .line 14
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_a
    const-string v2, "lines"

    .line 15
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 16
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 17
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p2

    .line 18
    :try_start_1
    sget-object p3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->LOG_TAG:Ljava/lang/String;

    const-string p4, "Could not update table"

    invoke-static {p3, p4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_2
    if-lez v1, :cond_1

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_1
    return v1

    :goto_3
    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 22
    :cond_2
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
