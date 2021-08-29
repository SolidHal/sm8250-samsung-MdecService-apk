.class public Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;
.super Ljava/lang/Object;
.source "MoveDeviceContactsImpl.java"


# static fields
.field private static final FALLBACK_ACCOUNT_TYPE:Ljava/lang/String; = "vnd.sec.contact.phone"

.field private static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String; = "com.osp.app.signin"

.field private static final TAG:Ljava/lang/String; = "MoveDeviceContactsImpl"

.field private static mBNRManager:Lcom/samsung/android/cmcsettings/view/contacts/BNRManager; = null

.field private static mTimeDifference:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->mBNRManager:Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addDeleteOperation(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "_id=?"

    .line 2
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addUpdateOperation(Ljava/util/ArrayList;Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v2, "account_type"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object p2, p2, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;->name:Ljava/lang/String;

    const-string v1, "account_name"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    const-string v0, "sourceid"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "_id=?"

    .line 5
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getCurrentTime(Landroid/content/Context;)J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->isEnabledScloud()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget-wide v0, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->mTimeDifference:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "TIME_DIFFERENCE"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->mTimeDifference:J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0x0

    .line 5
    sput-wide v0, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->mTimeDifference:J

    .line 6
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->mTimeDifference:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private isEnabledScloud()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->getOpStyleVariationImpl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->getProductForString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const-string v0, "com.samsung.android.scloud"

    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->isApplicationInfoExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateGroupId(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v5, p4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "data1"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=? AND raw_contact_id IN "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 4
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    .line 5
    invoke-virtual {v3, v4, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object v4, p2

    .line 7
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 9
    sget-object v7, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->mBNRManager:Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, p1

    move-object v9, p2

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->applyBatchAndWritePhotos(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    move-object v4, p2

    .line 10
    sget-object v2, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->mBNRManager:Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->applyBatchAndWritePhotos(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private updateImTypeToCustom(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimetype=\'vnd.android.cursor.item/im\' AND data5 IN (10, 9) AND raw_contact_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "_id"

    const-string v0, "data5"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 6
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    .line 8
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const/4 v6, -0x1

    .line 10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "data6"

    .line 11
    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v2

    invoke-virtual {v4, v6, v1, v7, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p2, :cond_0

    .line 14
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getOpStyleVariationImpl()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ConfigOpStyleVariation"

    .line 2
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductForString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ConfigReplaceLabelSet"

    const-string v2, "default"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isApplicationInfoExist(Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isApplicationInfoExist NameNotFound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MoveDeviceContactsImpl"

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public turnOnContactSync(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    .line 2
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 3
    array-length v1, v0

    if-nez v1, :cond_0

    const-string p1, "MoveDeviceContactsImpl"

    const-string v0, "samsungAccounts.length :0 isMoveContactsMenuAvailable: False"

    .line 4
    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const/4 p1, 0x0

    aget-object p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "com.android.contacts"

    invoke-static {p1, v1, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    return-void
.end method

.method public updateAccount(Landroid/content/Context;Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;Ljava/lang/String;)Z
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted=0 AND account_type=\'vnd.sec.contact.phone\' AND contact_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4
    new-instance v2, Ljava/util/HashSet;

    sget-object v3, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->mBNRManager:Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;

    invoke-virtual {v3, p1, p3}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->getDuplicatedRawContacts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {v2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 6
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;

    .line 7
    invoke-virtual {v4}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getRawContactId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    sget-object v3, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->mBNRManager:Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;

    invoke-virtual {v3, p3}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->buildIdsString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v9

    .line 9
    sget-object v3, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->mBNRManager:Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;

    invoke-virtual {v3, p1, v9, p2}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->getGroupIdMappingMap(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;)Ljava/util/HashMap;

    move-result-object v3

    .line 10
    invoke-direct {p0, p1, v8, v9, v3}, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->updateGroupId(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleted=0 AND account_type=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "account_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    sget-object v4, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->mBNRManager:Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;

    invoke-virtual {v4, p1, v3}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->getDuplicatedRawContacts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    .line 13
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;

    .line 14
    invoke-virtual {v2}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    invoke-virtual {v2}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->hasOnlyName()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 17
    invoke-virtual {v2}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getRawContactId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v8, v2}, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->addDeleteOperation(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;

    .line 19
    sget-object v4, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->mBNRManager:Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->checkDuplicatedContact(Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 20
    sget-object v4, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->mBNRManager:Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;

    invoke-virtual {v4, p1, v8, v3, v2}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->mergeDataWithDuplicatedContact(Landroid/content/Context;Ljava/util/ArrayList;Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;)V

    .line 21
    invoke-virtual {v2}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getRawContactId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v8, v2}, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->addDeleteOperation(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getRawContactId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v8, p2, v2}, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->addUpdateOperation(Ljava/util/ArrayList;Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;Ljava/lang/String;)V

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/cmcsettings/view/contacts/BNREntity;->getRawContactId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v8, p2, v2}, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->addUpdateOperation(Ljava/util/ArrayList;Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;Ljava/lang/String;)V

    .line 24
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_1

    .line 25
    sget-object v2, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->mBNRManager:Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, v8

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->applyBatchAndWritePhotos(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 26
    :cond_5
    sget-object v2, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->mBNRManager:Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, v8

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/cmcsettings/view/contacts/BNRManager;->applyBatchAndWritePhotos(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 27
    iget-object v2, p2, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.item/contact_event"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "mimetype=? AND data15=1"

    invoke-virtual {p2, v2, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 29
    invoke-direct {p0, p1, v9}, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->updateImTypeToCustom(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 30
    :cond_6
    iget-object v2, p2, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v4, "com.osp.app.signin"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 31
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "sync3"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account_type=? AND account_name=? AND _id IN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p2, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;->type:Ljava/lang/String;

    aput-object v9, v7, v8

    iget-object p2, p2, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;->name:Ljava/lang/String;

    aput-object p2, v7, v3

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 34
    :cond_7
    :goto_3
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 35
    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    const-string v2, "_id"

    invoke-virtual {p2, v2, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v4, "triggerAggregation"

    invoke-virtual {p1, p3, v4, v2, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 38
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account changed from phone to - complete time : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MoveDeviceContactsImpl"

    invoke-static {p2, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method
