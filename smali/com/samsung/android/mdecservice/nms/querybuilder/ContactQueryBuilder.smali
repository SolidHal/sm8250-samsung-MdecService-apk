.class public Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;
.super Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;
.source "ContactQueryBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ContactQueryBuilder"


# instance fields
.field private mIgnoreNextChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->mIgnoreNextChange:Z

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onCreate v4"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addDeviceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getDeviceList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string p2, ","

    .line 5
    invoke-static {p2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "device_list"

    invoke-virtual {v5, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    const/16 v4, 0x2f

    const/4 p2, 0x1

    new-array v7, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, v7, p2

    const-string v6, "normalized_number=?"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public changeStatusBufferDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->changeStatusBufferDB(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public changeStatusBufferDB(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStatusBufferDB() size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "status"

    .line 8
    invoke-virtual {v5, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "normalized_number in("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const-string v1, "\u0000"

    const-string v2, "?,"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, [Ljava/lang/String;

    .line 11
    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    const/16 v4, 0x2f

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 12
    sget-object p2, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeStatusBufferDB() updatedRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteContactListBufferDB(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteContactBufferDB() size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "normalized_number in("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    const-string v2, "\u0000"

    const-string v3, "?,"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->deleteTable(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteContactBufferDB() deletedRow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getContactFromBufferDB(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getContactFromBufferDB() number is null or empty"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "normalized_number=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v5, v2

    const/4 v6, 0x0

    .line 4
    sget-object v7, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->queryTable([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "is_available"

    .line 6
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "1"

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setAvailable(Z)V

    const-string v3, "features"

    .line 9
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setFeatures(J)V

    const-string v3, "last_update_time"

    .line 10
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setLastUpdateTime(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 11
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, p1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 13
    :goto_2
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 14
    throw v0
.end method

.method public getContactListFromBufferDB(J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v7, 0x0

    :try_start_0
    const-string v3, "last_update_time>=? AND status!=? AND status!=?"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x1

    const-string p2, "-1"

    aput-object p2, v4, p1

    const/4 p1, 0x2

    const-string p2, "-2"

    aput-object p2, v4, p1

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    move-object v1, p0

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->queryTable([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "is_available"

    .line 5
    invoke-interface {v7, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v7, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    const-string v1, "normalized_number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;-><init>(Ljava/lang/String;)V

    const-string v1, "1"

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setAvailable(Z)V

    const-string p1, "features"

    .line 9
    invoke-interface {v7, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v7, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setFeatures(J)V

    const-string p1, "last_update_time"

    .line 10
    invoke-interface {v7, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v7, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setLastUpdateTime(J)V

    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 13
    throw p1
.end method

.method public getDeviceList(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v7, 0x0

    :try_start_0
    const-string v3, "normalized_number=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v4, v8

    const/4 v5, 0x0

    .line 2
    sget-object v6, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->queryTable([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v7

    .line 3
    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "device_list"

    .line 4
    invoke-interface {v7, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v7, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    :goto_0
    if-ge v8, v1, :cond_0

    aget-object v2, p1, v8

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 9
    throw p1
.end method

.method public getIgnoreNextChange()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->mIgnoreNextChange:Z

    return v0
.end method

.method public getRcsCapability(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getRcsCapability() number is null or empty"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "normalized_number LIKE \'%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->queryTable([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "is_available"

    .line 6
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "1"

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setAvailable(Z)V

    const-string v3, "features"

    .line 9
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setFeatures(J)V

    const-string v3, "last_update_time"

    .line 10
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setLastUpdateTime(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 11
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, p1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 13
    :goto_2
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 14
    throw v0
.end method

.method public getStatusFromBufferDB(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getStatusFromBufferDB() number is null or empty"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "normalized_number=?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v6, 0x0

    .line 3
    sget-object v7, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->queryTable([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "status"

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, p1

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 7
    throw v0
.end method

.method public insertContactBufferDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->isExistBufferDB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->insertContactListBufferDB(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized insertContactListBufferDB(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertContactListBufferDB size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string p2, "number is null or empty"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "normalized_number"

    .line 10
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "status"

    .line 11
    invoke-virtual {v3, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string v2, "device_list"

    .line 12
    invoke-virtual {v3, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "rcscontact"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isExistBufferDB(Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "normalized_number=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    aput-object p1, v5, v1

    const/4 v6, 0x0

    .line 2
    sget-object v7, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->queryTable([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 5
    throw p1
.end method

.method public isExistContactDB(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "data4=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 4
    throw p1
.end method

.method public removeDeviceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getDeviceList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string p2, ","

    .line 5
    invoke-static {p2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "device_list"

    invoke-virtual {v5, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    const/16 v4, 0x2f

    const/4 p2, 0x1

    new-array v7, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, v7, p2

    const-string v6, "normalized_number=?"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setIgnoreNextChange(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->mIgnoreNextChange:Z

    return-void
.end method

.method public updateCapabilityBufferDB(Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "normalized_number"

    .line 3
    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->isAvailable()Z

    move-result v1

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    const-string v5, "is_available"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getFeatures()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v5, "features"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getLastUpdateTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "last_update_time"

    invoke-virtual {v4, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getStatusFromBufferDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->isExistContactDB(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    const-string p1, "status"

    .line 9
    invoke-virtual {v4, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_3
    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    const/16 v3, 0x2f

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object v0, v6, p1

    const-string v5, "normalized_number=?"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateCapabilityContactDB(Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "data5"

    const-string v2, "data4"

    const-string v3, "vnd.android.cursor.item/rcs_data"

    const-string v4, "data1"

    const-string v5, "raw_contact_id"

    .line 1
    new-instance v6, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v6}, Lcom/sec/ims/options/Capabilities;-><init>()V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getFeatures()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sec/ims/options/Capabilities;->setFeatures(J)V

    .line 3
    sget v7, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {v6, v7}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v7

    if-nez v7, :cond_5

    sget v7, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 4
    invoke-virtual {v6, v7}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 6
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v8

    invoke-static {v7, v8}, Lcom/samsung/android/mdeccommon/extensions/Extensions$ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    .line 7
    :try_start_0
    iget-object v9, v1, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "data4 = ?"

    const/4 v15, 0x1

    new-array v13, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v6, v13, v16

    const/4 v14, 0x0

    move-object v10, v7

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 8
    :try_start_1
    invoke-static {v14}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v9, :cond_1

    .line 9
    :try_start_2
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v13, v9

    move-object v12, v10

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v8

    move-object v8, v14

    goto/16 :goto_3

    :cond_1
    move-object v12, v8

    move-object v13, v12

    :goto_0
    if-nez v13, :cond_2

    .line 11
    invoke-static {v14}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 12
    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-void

    .line 13
    :cond_2
    :try_start_3
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "mimetype"

    .line 14
    invoke-virtual {v11, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v11, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v11, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "data2"

    .line 17
    invoke-virtual {v11, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getLastUpdateTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getFeatures()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v4, v1, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "data2=? AND mimetype=?"

    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    aput-object v6, v8, v16

    aput-object v3, v8, v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v6, 0x0

    move v15, v10

    move-object v10, v7

    move-object v15, v11

    move-object v11, v4

    move-object v4, v12

    move-object v12, v5

    move-object v5, v13

    move-object v13, v8

    move-object v8, v14

    move-object v14, v6

    :try_start_4
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 21
    :try_start_5
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 22
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 23
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 24
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getLastUpdateTime()J

    move-result-wide v11

    cmp-long v2, v9, v11

    if-nez v2, :cond_3

    .line 25
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getFeatures()J

    move-result-wide v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    cmp-long v0, v9, v11

    if-nez v0, :cond_3

    .line 26
    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 27
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-void

    .line 28
    :cond_3
    :try_start_6
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "mimetype=? AND raw_contact_id=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object v3, v7, v16

    const/4 v3, 0x1

    aput-object v5, v7, v3

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto :goto_1

    .line 30
    :cond_4
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    :goto_1
    const/4 v2, 0x1

    .line 31
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->setIgnoreNextChange(Z)V

    move-object/from16 v2, p2

    .line 32
    invoke-virtual {v2, v0}, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->tryPut(Landroid/content/ContentProviderOperation;)V

    .line 33
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCapabilityContactDB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getLimitLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getContentValueLog(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 34
    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 35
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v8, v14

    :goto_2
    const/4 v6, 0x0

    goto :goto_3

    :catchall_4
    move-exception v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 36
    :goto_3
    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 37
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 38
    throw v0

    :cond_5
    :goto_4
    return-void
.end method
