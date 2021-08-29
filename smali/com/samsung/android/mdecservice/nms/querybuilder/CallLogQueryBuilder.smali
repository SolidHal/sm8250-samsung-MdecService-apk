.class public Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;
.super Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;
.source "CallLogQueryBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallLogQueryBuilder"

.field private static final MAX_RETRY_COUNT:I = 0x5


# instance fields
.field private final DUO_PAC_NAME:Ljava/lang/String;

.field private final HAS_DUO_COLUMN:I

.field private final HAS_SEC_CMC_DEVICE:I

.field private final NOT_HAS_DUO_COLUMN:I

.field private final NOT_HAS_SEC_CMC_DEVICE:I

.field private final SAMSUNG_DIALER_PACKAGE_NAME:Ljava/lang/String;

.field private final UNKNOWN:I

.field private mBlockedLogType:[I

.field private mHasDuoColumn:I

.field private mHasSecCmcDevice:I

.field private mIgnoreNextChange:Z

.field private mSmallestID:I

.field private final mTelephonyStorage:Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;

.field private final mUpdatefromGearEventReceiver:Landroid/content/BroadcastReceiver;

.field private suspendedDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;)V

    .line 2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->suspendedDatas:Ljava/util/HashMap;

    const/4 p2, 0x1

    .line 3
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mSmallestID:I

    const/16 p3, 0xd

    new-array p3, p3, [I

    .line 4
    fill-array-data p3, :array_0

    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mBlockedLogType:[I

    const/4 p3, 0x0

    .line 5
    iput p3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->UNKNOWN:I

    .line 6
    iput p3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mHasSecCmcDevice:I

    .line 7
    iput p3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mHasDuoColumn:I

    .line 8
    iput-boolean p3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mIgnoreNextChange:Z

    .line 9
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->HAS_SEC_CMC_DEVICE:I

    const/4 p3, 0x2

    .line 10
    iput p3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->NOT_HAS_SEC_CMC_DEVICE:I

    .line 11
    iput p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->HAS_DUO_COLUMN:I

    .line 12
    iput p3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->NOT_HAS_DUO_COLUMN:I

    const-string p2, "com.samsung.android.dialer"

    .line 13
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->SAMSUNG_DIALER_PACKAGE_NAME:Ljava/lang/String;

    const-string p2, "com.google.android.apps.tachyon/com.google.android.apps.tachyon.telecom.TachyonTelecomConnectionService"

    .line 14
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->DUO_PAC_NAME:Ljava/lang/String;

    .line 15
    new-instance p2, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder$1;-><init>(Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mUpdatefromGearEventReceiver:Landroid/content/BroadcastReceiver;

    .line 16
    sget-object p2, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string p3, "onCreate"

    invoke-static {p2, p3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p2, Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;

    invoke-direct {p2, p1}, Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mTelephonyStorage:Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;

    .line 18
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.samsung.intent.action.UPDATE_CALLLOG_FROM_GEAR"

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mUpdatefromGearEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    nop

    :array_0
    .array-data 4
        0xfa
        0x15e
        0x190
        0x258
        0x2bc
        0x384
        0x3b6
        0x44c
        0x4b0
        0x4e2
        0x514
        0x578
        0x5dc
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->makeAttributeUpdateRequest([Ljava/lang/String;)V

    return-void
.end method

.method private deleteTelephonyCallLog(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mTelephonyStorage:Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private deleteTelephonyDB(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;)I
    .locals 7

    const-string v0, "_id"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "res_url==?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 3
    invoke-virtual {p0, v2, v3, v5, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryCallLogfromBuffer([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v3, v5}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->deleteTable(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "_id==?"

    new-array v2, v4, [Ljava/lang/String;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 8
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->deleteTelephonyCallLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doTelephonyDBEvent : DELETE, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v2, "there is no record to delete."

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v6, p1

    goto :goto_1

    .line 11
    :cond_1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cursor is null. Delete action is not completed."

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_1
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return v6

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 13
    throw p1
.end method

.method private doAddedLog(Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const-string v2, "logtype"

    .line 2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 4
    iget-object v5, v0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mBlockedLogType:[I

    invoke-static {v5, v4}, Lcom/google/android/gms/common/util/ArrayUtils;->contains([II)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const-string v6, "subscription_component_name"

    .line 5
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 6
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.google.android.apps.tachyon/com.google.android.apps.tachyon.telecom.TachyonTelecomConnectionService"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    move v4, v7

    :cond_1
    if-nez v4, :cond_2

    return-object v3

    :cond_2
    const-string v4, "_id"

    .line 7
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 8
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "date"

    .line 9
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 10
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "type"

    .line 11
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 12
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x3

    .line 13
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 14
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "new"

    if-eqz v10, :cond_3

    .line 15
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 16
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_3
    const-string v10, "0"

    :goto_0
    move-object v15, v10

    const-string v10, "number"

    .line 17
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 18
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 19
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 20
    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v13, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {v9}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "date_formated"

    .line 23
    invoke-virtual {v13, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v13, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 26
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "200"

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "300"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "x-call-log"

    goto :goto_2

    :cond_5
    :goto_1
    const-string v1, "x-msg-log"

    :goto_2
    move-object v11, v1

    const-string v1, ""

    const-string v2, ""

    move-object v8, v9

    move-object v9, v1

    move-object v12, v6

    move-object v1, v13

    move-object v13, v2

    .line 28
    invoke-static/range {v8 .. v13}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->generateHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "correlation_tag"

    .line 29
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v4, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v14, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->insertTable(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    new-array v1, v5, [Ljava/lang/String;

    aput-object v6, v1, v7

    .line 31
    iget-object v4, v0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    const-string v5, "_id==?"

    .line 32
    invoke-virtual {v0, v5, v1, v3}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryCallLogfromTelephony(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 33
    invoke-static {v4, v1}, Lcom/samsung/android/mdecservice/nms/attribute/AttributeHelper;->parseCallLogAttribute(Landroid/content/Context;Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    const-string v4, "1"

    if-nez v15, :cond_6

    move-object v15, v4

    :cond_6
    if-eqz v6, :cond_8

    if-eqz v2, :cond_8

    if-eqz v15, :cond_8

    if-eqz v1, :cond_8

    .line 34
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v3

    const-string v5, "eventTypeServer"

    .line 35
    invoke-virtual {v3, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v3

    const-string v5, "PostRequest"

    .line 36
    invoke-virtual {v3, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v3

    .line 37
    invoke-virtual {v3, v6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v3

    .line 38
    invoke-virtual {v3, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setCallLogAttribute(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v1

    .line 40
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "\\Recent"

    goto :goto_3

    :cond_7
    const-string v2, "\\Seen"

    :goto_3
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    move-result-object v1

    return-object v1

    :cond_8
    return-object v3
.end method

.method private doDeleteLog(Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;
    .locals 9

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SD can\'t send delete Request"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v6, "_id==?"

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const-string v2, "_id"

    .line 3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 4
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v7, v3

    const-string v2, "retry_count"

    .line 5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 6
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v8, "res_url"

    .line 7
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 8
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isValidResourceUrl(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    if-gt v5, v4, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    add-int/2addr v4, v0

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 13
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v0

    const-string v1, "eventTypeServer"

    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v0

    const-string v1, "DeleteRequest"

    .line 15
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v0

    .line 16
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 17
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    move-result-object p1

    return-object p1

    .line 19
    :cond_2
    :goto_0
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLogDBChange : delete invalid or expired buffer DB ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v7, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object p1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v6, v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->deleteTable(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v1
.end method

.method private doRetryPost(Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;
    .locals 6

    const-string v0, "_id"

    .line 1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "correlation_tag"

    .line 3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "new"

    .line 5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 6
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 7
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    const-string v4, "_id==?"

    const/4 v5, 0x0

    .line 8
    invoke-virtual {p0, v4, v2, v5}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryCallLogfromTelephony(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 9
    invoke-static {v3, v2}, Lcom/samsung/android/mdecservice/nms/attribute/AttributeHelper;->parseCallLogAttribute(Landroid/content/Context;Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    .line 10
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v3

    const-string v4, "eventTypeServer"

    .line 11
    invoke-virtual {v3, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v3

    const-string v4, "PostRequest"

    .line 12
    invoke-virtual {v3, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v3

    .line 13
    invoke-virtual {v3, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setCallLogAttribute(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v0

    const-string v1, "1"

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\\Recent"

    goto :goto_0

    :cond_0
    const-string p1, "\\Seen"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    move-result-object p1

    return-object p1

    .line 18
    :cond_1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v0, "CallAttr is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private doUpdateLog(Landroid/database/Cursor;Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;
    .locals 9

    const-string v0, "new"

    .line 1
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v7, "_id==?"

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    .line 6
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 7
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const-string v3, "retry_count"

    .line 8
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 9
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x5

    if-gt v5, v4, :cond_0

    .line 10
    sget-object p2, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLogDBChange : locally update expired buffer DB ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {p2, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 14
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 15
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v4, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v2

    .line 17
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    add-int/2addr v4, v1

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    sget-object v4, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    const-string v0, "eventTypeServer"

    .line 21
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    const-string v0, "UpdateRequest"

    .line 22
    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    const-string v0, "res_url"

    .line 23
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 24
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    const-string p2, "\\Seen"

    .line 25
    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v2
.end method

.method private getCursorIfNotRemote(I)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "_id==?"

    .line 2
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryCallLogfromTelephony(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "type"

    .line 5
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x578

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5aa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5dc

    if-ne v1, v2, :cond_2

    .line 6
    :cond_1
    sget-object v1, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v2, "local DB is remotely type. do nothing."

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :cond_2
    return-object p1
.end method

.method private getDefaultDialerPackage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private insertTelephonyDB(Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->insertTable(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    .line 2
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->suspendedDatas:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryBufferDBwithResUrl(Ljava/lang/String;)I

    const-string p2, "new"

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "0"

    .line 5
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "type"

    .line 7
    invoke-virtual {p1, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->makeMissedCallsNotification()I

    :cond_0
    return-void
.end method

.method private isForkedCall(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;Landroid/database/Cursor;)Z
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "new"

    .line 2
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    .line 5
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getCallDisposition()Ljava/lang/String;

    move-result-object p2

    const-string v0, "INCOMING"

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getCallDisposition()Ljava/lang/String;

    move-result-object p1

    const-string p2, "REJECTED"

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private makeAttributeUpdateRequest([Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update calllog from Gear, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    const-string v1, "eventTypeServer"

    const-string v2, "eventTypeCall"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "_id=?"

    .line 4
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " OR _id=?"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v3, p1, v2}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryCallLogfromTelephony(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 7
    invoke-virtual {p0, v2, v3, p1, v2}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryCallLogfromBuffer([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 8
    sget-object v2, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "telephonyCursor"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bufferCursor"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 13
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 15
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v2

    const-string v3, "duration"

    .line 16
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 17
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setCallDuration(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v2

    const-string v3, "type"

    .line 18
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 19
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setCallDisposition(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v2

    const-string v3, "logtype"

    .line 20
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 21
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setCallType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->removeDirection()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->removeMsgContext()V

    .line 26
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v3

    .line 27
    invoke-virtual {v3, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v3

    const-string v5, "UpdateRequest"

    .line 28
    invoke-virtual {v3, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v3

    const-string v5, "res_url"

    .line 29
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 30
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v3

    const-string v5, "\\Seen"

    .line 31
    invoke-virtual {v3, v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v3

    .line 32
    invoke-virtual {v3, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setCallLogAttribute(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    move-result-object v2

    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :cond_2
    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 36
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 37
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 38
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    :cond_3
    return-void
.end method

.method private makeBufferCV(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;Landroid/database/Cursor;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "date_formated"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\Seen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "new"

    if-eqz v1, :cond_1

    const-string p2, "0"

    .line 10
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->INSERT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    if-ne p3, v1, :cond_2

    .line 12
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getCorrelationTag()Ljava/lang/String;

    move-result-object p2

    const-string p3, "correlation_tag"

    .line 16
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object p2

    const-string p3, "res_url"

    .line 19
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getLastModSeq()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getLastModSeq()Ljava/lang/Long;

    move-result-object p1

    const-string p2, "lastmodseq"

    .line 22
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    const/4 p1, 0x0

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "retry_count"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private makeMissedCallsNotification()I
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mTelephonyStorage:Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v2

    const/4 v4, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    const-string v4, "0"

    aput-object v4, v3, v1

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mTelephonyStorage:Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;

    const/4 v4, 0x0

    const-string v5, "new=? AND type=? AND is_read =?"

    const-string v6, "date DESC"

    invoke-virtual {v1, v4, v5, v3, v6}, Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;->queryCallLogfromTelephony([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "number"

    .line 7
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 8
    :goto_0
    sget-object v4, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeMissedCallNoti : send intent, count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", latestNum "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", defaultDialer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.telecom.action.SHOW_MISSED_CALLS_NOTIFICATION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    .line 10
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 13
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v2, "default dialer can receive it."

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "com.samsung.android.dialer"

    .line 15
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v2, "default dialer can\'t receive it.set samsung dialer"

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, "android.telecom.extra.NOTIFICATION_COUNT"

    .line 17
    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.telecom.extra.NOTIFICATION_PHONE_NUMBER"

    .line 19
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v3
.end method

.method private makeTelephonyCV(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const-string v2, "Galileo"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Watch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    .line 6
    :cond_1
    iget v2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mHasSecCmcDevice:I

    if-ne v2, v3, :cond_2

    const-string v2, "sec_cmc_device"

    .line 7
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 8
    :cond_2
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mHasDuoColumn:I

    if-ne v1, v3, :cond_6

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDuoData1()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "data1"

    .line 11
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDuoData2()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "data2"

    .line 14
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDuoData3()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "data3"

    .line 17
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDuoData4()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "data4"

    .line 20
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 21
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    .line 22
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getCallDuration()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    .line 24
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDirection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getFrom()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 27
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getTo()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "empty"

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v1, ""

    :cond_8
    const-string v2, "number"

    .line 29
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getCallDispositionExt()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v4, :cond_a

    .line 32
    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDecodedCallDisposition()Ljava/lang/String;

    move-result-object v1

    :cond_a
    const-string v2, "type"

    .line 33
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getCallTypeExt()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz v4, :cond_c

    .line 36
    :cond_b
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDecodedCallType()Ljava/lang/String;

    move-result-object v1

    :cond_c
    const-string v2, "logtype"

    .line 37
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getSimid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sim_id"

    .line 39
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getPresentation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "presentation"

    .line 41
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getCnapName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cnap_name"

    .line 43
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getMContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "m_content"

    .line 45
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getPACname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subscription_component_name"

    .line 47
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 48
    :cond_d
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getFlag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\Seen"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "new"

    const-string p2, "0"

    .line 49
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_read"

    const-string p2, "1"

    .line 50
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-object v0
.end method

.method private putIfDifferent(Landroid/content/ContentValues;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1

    if-eqz p4, :cond_1

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method private removeDuplicatedDB(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    const-string v4, ""

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "lastmodseq"

    .line 4
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 5
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "_id"

    .line 6
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 7
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmp-long v8, v2, v5

    if-gez v8, :cond_0

    move-wide v2, v5

    move-object v4, v7

    goto :goto_0

    .line 10
    :cond_1
    sget-object v5, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeDuplicatedDB : IdList "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", seqList "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", largestLMS "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", its rowID "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". delete other DBs"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v5, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return-object v2

    .line 14
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id in ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    new-array v5, v5, [C

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    const-string v5, "\u0000"

    const-string v7, "?,"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 18
    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->deleteTable(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 19
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mTelephonyStorage:Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;

    invoke-virtual {v3, v2, v1, v0, v2}, Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;->queryCallLogfromTelephony([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 20
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "0"

    const-string v5, "new"

    .line 21
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    const-string v5, "type"

    .line 23
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 24
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 25
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v3, "one of duplicated data is unread missed call. remove and notify."

    invoke-static {p1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 26
    :goto_1
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 27
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mTelephonyStorage:Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {p1, v2, v1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v6, :cond_5

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->makeMissedCallsNotification()I

    :cond_5
    return-object v4

    :catchall_0
    move-exception p1

    .line 29
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 30
    throw p1
.end method

.method private setHasCmcDevice()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, v0, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryCallLogfromTelephony(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    const-string v1, "sec_cmc_device"

    .line 4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mHasSecCmcDevice:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 6
    iput v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mHasSecCmcDevice:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 8
    throw v1
.end method

.method private setHasDuoColumn()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, v0, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryCallLogfromTelephony(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    const-string v1, "data1"

    .line 4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, "data2"

    .line 5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    const-string v1, "data3"

    .line 6
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    const-string v1, "data4"

    .line 7
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mHasDuoColumn:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 9
    iput v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mHasDuoColumn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 11
    throw v1
.end method

.method private updateTelephonyCallLog(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mTelephonyStorage:Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateTelephonyDB(ILandroid/content/ContentValues;Landroid/content/ContentValues;Z)V
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    const-string p1, "_id==?"

    move-object v1, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 4
    sget-object p3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    invoke-direct {p0, p3, p2, p1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->updateTelephonyCallLog(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    if-nez p4, :cond_0

    const-string p1, "new"

    .line 5
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "0"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    :cond_0
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "update missed noti. forked?"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->makeMissedCallsNotification()I

    goto :goto_0

    .line 9
    :cond_1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string p2, "update BufferDB is not completed."

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkLogDBChange()Z
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryDeltaCallLogfromTelephony()Landroid/database/Cursor;

    move-result-object v7

    const-string v0, "_id ASC"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryCallLogfromBuffer([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3
    new-instance v9, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;->INT:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    sget-object v6, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;->ASC:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    move-object v0, v9

    move-object v1, v7

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v4, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    const-string v5, "eventTypeServer"

    const-string v6, "eventTypeCall"

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v9}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v9, 0x1

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    .line 10
    sget-object v10, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder$2;->$SwitchMap$com$samsung$android$mdecservice$nms$util$CustomCursorJoiner$Result:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v10, v6

    if-eq v6, v9, :cond_5

    const/4 v9, 0x2

    if-eq v6, v9, :cond_4

    const/4 v9, 0x3

    if-eq v6, v9, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "res_url"

    .line 11
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 12
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 13
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isValidResourceUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-direct {p0, v7, v8}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->doUpdateLog(Landroid/database/Cursor;Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v9, "_id"

    .line 15
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 16
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_3
    :goto_1
    invoke-direct {p0, v8}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->doRetryPost(Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 19
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_4
    invoke-direct {p0, v8}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->doDeleteLog(Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v9, "_id"

    .line 22
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 23
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_5
    invoke-direct {p0, v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->doAddedLog(Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 26
    invoke-virtual {v6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 28
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    :cond_8
    :goto_2
    if-eqz v9, :cond_d

    .line 30
    sget-object v5, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkLogDBChange : Added ID = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v0, "none"

    goto :goto_3

    .line 32
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Deleted ID = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "none"

    goto :goto_4

    .line 34
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Updated ID = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "none"

    goto :goto_5

    .line 36
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Incompleted ID = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "none"

    goto :goto_6

    .line 38
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v5, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_d
    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 41
    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v0, v4}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return v9

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doTelephonyDBEvent(Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)I
    .locals 9

    .line 1
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    .line 2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3
    iget v2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mHasSecCmcDevice:I

    if-nez v2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->setHasCmcDevice()V

    .line 5
    :cond_0
    iget v2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mHasDuoColumn:I

    if-nez v2, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->setHasDuoColumn()V

    .line 7
    :cond_1
    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->DELETE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    if-ne p1, v2, :cond_2

    .line 8
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->deleteTelephonyDB(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;)I

    move-result p1

    goto/16 :goto_7

    .line 9
    :cond_2
    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->UPDATE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne p1, v2, :cond_3

    .line 10
    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    .line 11
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->getResourceUrl()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryBufferDBwithResUrl(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p2

    .line 13
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->getCursorIfNotRemote(I)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_4

    return v4

    :cond_3
    move-object v2, v3

    move p2, v4

    .line 14
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 15
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->makeTelephonyCV(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v1

    .line 16
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->isForkedCall(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;Landroid/database/Cursor;)Z

    move-result v5

    goto :goto_0

    :cond_5
    move v5, v4

    .line 17
    :goto_0
    sget-object v6, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->INSERT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    if-ne p1, v6, :cond_7

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-eqz v6, :cond_7

    const/4 p2, 0x1

    .line 18
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->setIgnoreNextChange(Z)V

    .line 19
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mTelephonyStorage:Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;

    sget-object v7, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    .line 20
    invoke-virtual {v6, v7, v1}, Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;->insertToAndroidDB(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 21
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_6

    const-string v7, "_id==?"

    new-array p2, p2, [Ljava/lang/String;

    .line 23
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, p2, v4

    .line 24
    invoke-virtual {p0, v7, p2, v3}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryCallLogfromTelephony(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, p2

    goto :goto_1

    :catch_0
    move-object v2, p2

    goto :goto_2

    :cond_6
    :goto_1
    move p2, v6

    goto :goto_3

    :catch_1
    :goto_2
    move p2, v4

    .line 26
    :cond_7
    :goto_3
    sget-object v3, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doTelephonyDBEvent : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->INSERT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    if-ne p1, v6, :cond_8

    const-string v6, "INSERT, "

    goto :goto_4

    :cond_8
    const-string v6, "UPDATE, "

    :goto_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", updated fileds are "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_b

    .line 29
    :try_start_2
    invoke-direct {p0, v0, v2, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->makeBufferCV(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;Landroid/database/Cursor;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;)Landroid/content/ContentValues;

    move-result-object v3

    .line 30
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "_id"

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    sget-object v4, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->INSERT:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    if-ne p1, v4, :cond_9

    .line 33
    invoke-direct {p0, v1, v3, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->insertTelephonyDB(Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;)V

    goto :goto_5

    .line 34
    :cond_9
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;->UPDATE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$opType;

    if-ne p1, v0, :cond_a

    .line 35
    invoke-direct {p0, p2, v1, v3, v5}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->updateTelephonyDB(ILandroid/content/ContentValues;Landroid/content/ContentValues;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :cond_a
    :goto_5
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_6

    :catchall_0
    move-exception p1

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 37
    throw p1

    .line 38
    :cond_b
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    :goto_6
    move p1, p2

    :goto_7
    return p1
.end method

.method public getIgnoreNextChange()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mIgnoreNextChange:Z

    return v0
.end method

.method public queryBufferDBwithResUrl(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 8

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryBufferDBwithResUrl, uri :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", resourceurl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isValidResourceUrl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    aput-object p2, v5, v1

    const/4 v3, 0x0

    const-string v4, "res_url=?"

    const-string v6, "_id ASC"

    move-object v2, p0

    move-object v7, p1

    .line 4
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->queryTable([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 6
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    const-string p1, "_id"

    .line 7
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v2, v0, :cond_2

    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->removeDuplicatedDB(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 13
    throw p1

    .line 14
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return v1
.end method

.method public queryBufferDBwithResUrl(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryBufferDBwithResUrl(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public queryCallLogfromBuffer([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 1
    sget-object v5, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->queryTable([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryCallLogfromTelephony(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mTelephonyStorage:Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;->queryCallLogfromTelephony([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryDeltaCallLogfromTelephony()Landroid/database/Cursor;
    .locals 5

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->queryBufferDBSmallestTelephonyId(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mSmallestID:I

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mTelephonyStorage:Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;

    const/4 v2, 0x0

    const-string v3, "_id>=?"

    const-string v4, "_id ASC"

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/samsung/android/mdecservice/nms/adapter/TelephonyStorageAdapter;->queryCallLogfromTelephony([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setIgnoreNextChange(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mIgnoreNextChange:Z

    return-void
.end method

.method public setSmallestID()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "_id DESC limit 500"

    .line 1
    invoke-virtual {p0, v0, v0, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryCallLogfromTelephony(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToLast(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "_id"

    .line 3
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->mSmallestID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 5
    throw v1

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    :goto_0
    return-void
.end method

.method public tryUpdateCallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;I)I
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "0"

    :cond_0
    const-string v0, "eventTypeDb"

    if-nez p6, :cond_1

    .line 1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->suspendedDatas:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->suspendedDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v0

    const-string v1, "InsertRequest"

    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p2

    .line 7
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setLastModSeq(Ljava/lang/Long;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setCallLogAttribute(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p2, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    .line 13
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string p2, "no such DB record. insert it"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p6

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->suspendedDatas:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->suspendedDatas:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 16
    sget-object p1, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->LOG_TAG:Ljava/lang/String;

    const-string p2, "(before DB update)duplicated or old data. ignore it."

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v0

    const-string v1, "UpdateRequest"

    .line 19
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p2

    .line 21
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setLastModSeq(Ljava/lang/Long;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p2

    .line 22
    invoke-virtual {p2, p3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p2

    .line 23
    invoke-virtual {p2, p4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p2

    .line 24
    invoke-virtual {p2, p5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->setCallLogAttribute(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    move-result-object p2

    .line 25
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    move-result-object p2

    .line 26
    iget-object p4, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p4, p2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    .line 27
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->suspendedDatas:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 28
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->suspendedDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return p6
.end method
