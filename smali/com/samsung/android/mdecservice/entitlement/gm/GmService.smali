.class public Lcom/samsung/android/mdecservice/entitlement/gm/GmService;
.super Landroid/app/IntentService;
.source "GmService.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static mGmLock:Ljava/lang/Object;


# instance fields
.field private mAddDeviceNum:I

.field private mAddLineNum:I

.field private mContentValues:Landroid/content/ContentValues;

.field private mEntitlementResultReceiver:Landroid/os/ResultReceiver;

.field private mGetUserInformationNum:I

.field private mGmProcessingTimeoutFlag:Z

.field private mHasGear:Z

.field private mInitialTriggerState:Z

.field private mIsAddDeviceFinished:Z

.field private mIsAddLineFinished:Z

.field private mIsMdecSupported:Z

.field private mIsRemoveDeviceFinished:Z

.field private mIsUpdateDeviceFinished:Z

.field private mIsUpdateLineFinished:Z

.field private final mProcessingTimeout:I

.field private mRemoveDeviceNum:I

.field private mSimSlotIndex:I

.field private mUpdateDeviceNum:I

.field private mUpdateLineNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGmLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "GmService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x4e20

    .line 2
    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mProcessingTimeout:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsAddLineFinished:Z

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsAddDeviceFinished:Z

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsRemoveDeviceFinished:Z

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsUpdateLineFinished:Z

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsUpdateDeviceFinished:Z

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mAddLineNum:I

    .line 9
    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mAddDeviceNum:I

    .line 10
    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mRemoveDeviceNum:I

    .line 11
    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateLineNum:I

    .line 12
    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateDeviceNum:I

    .line 13
    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGetUserInformationNum:I

    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGmProcessingTimeoutFlag:Z

    .line 15
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsMdecSupported:Z

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mHasGear:Z

    .line 17
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mInitialTriggerState:Z

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mSimSlotIndex:I

    .line 19
    new-instance v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService$1;-><init>(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mAddLineNum:I

    return p0
.end method

.method static synthetic access$010(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mAddLineNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mAddLineNum:I

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsRemoveDeviceFinished:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsAddLineFinished:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateLineNum:I

    return p0
.end method

.method static synthetic access$1110(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateLineNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateLineNum:I

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGmProcessingTimeoutFlag:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsUpdateDeviceFinished:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGetUserInformationNum:I

    return p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->initializeFlag()V

    return-void
.end method

.method static synthetic access$1600()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGmLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->doGetUserInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->doReleaseLock()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mAddDeviceNum:I

    return p0
.end method

.method static synthetic access$410(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mAddDeviceNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mAddDeviceNum:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsAddDeviceFinished:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateDeviceNum:I

    return p0
.end method

.method static synthetic access$608(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateDeviceNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateDeviceNum:I

    return v0
.end method

.method static synthetic access$610(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateDeviceNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateDeviceNum:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsUpdateLineFinished:Z

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->updateLineInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mRemoveDeviceNum:I

    return p0
.end method

.method static synthetic access$910(Lcom/samsung/android/mdecservice/entitlement/gm/GmService;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mRemoveDeviceNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mRemoveDeviceNum:I

    return v0
.end method

.method private addDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "addDevice"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "LINE_ID"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DEVICE_ID"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DEVICE_TYPE"

    const-string p2, "Phone"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "APPLICATION_DATA"

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DEVICE_NAME"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    const/4 p3, 0x2

    invoke-static {p1, p3, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    return-void
.end method

.method private addLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "addLine"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "LINE_ID"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DEVICE_TYPE"

    const-string v1, "Phone"

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "APPLICATION_DATA"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DEVICE_NAME"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    return-void
.end method

.method private checkAddUpdateProcedure(Landroid/content/ContentValues;)V
    .locals 11

    const-string v0, "BT_ID"

    .line 1
    iget v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mSimSlotIndex:I

    invoke-static {p0, v1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->getMyLineId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "cmc_p1_running"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "myLineId is empty"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v4}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->putIntFromGlobal(Landroid/content/Context;Ljava/lang/String;I)Z

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Lines;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "lineCursor is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v4}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->putIntFromGlobal(Landroid/content/Context;Ljava/lang/String;I)Z

    return-void

    :cond_1
    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 8
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hashedGearBtId : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_0
    move-object v0, v2

    move v9, v4

    .line 11
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "LINE_ID"

    .line 12
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "OWNER_DEVICE_ID"

    .line 13
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v4, v1

    move-object v6, v0

    move-object v7, p1

    .line 14
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->checkAddUpdateProcedureForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 15
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v0

    move v4, v9

    .line 16
    :goto_2
    :try_start_2
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "exception is occurred"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v9, v4

    .line 19
    :goto_3
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsMdecSupported:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    if-nez v9, :cond_4

    .line 20
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Line is not exist"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->makeLine(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 22
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 23
    throw p1
.end method

.method private checkAddUpdateProcedureForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v5, v10

    .line 1
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Devices;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "LINE_ID = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    move v12, v10

    .line 2
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "DEVICE_ID"

    .line 3
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "DEVICE_APPLICATION_DATA"

    const-string v4, "Case of PD of other line("

    if-eqz v1, :cond_6

    .line 6
    :try_start_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    iget v1, v7, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateDeviceNum:I

    add-int/2addr v1, v9

    iput v1, v7, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateDeviceNum:I

    .line 8
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v13, p5

    invoke-direct {p0, v1, v13}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->getJsonObjectForAppData(Landroid/content/Context;Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Case of PD of my line("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") : updateDevice using latest information"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, v3}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->updateDeviceInfoForStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Json obj(appData) is null"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    move-object/from16 v14, p4

    :goto_2
    move v10, v9

    goto :goto_0

    :cond_4
    move-object/from16 v13, p5

    const-string v1, "DEVICE_TYPE"

    .line 12
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "CMC_VERSION"

    .line 13
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 14
    sget-object v6, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Case of PD of my line : deviceType("

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "), deviceVersion("

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Watch"

    .line 15
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 16
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 17
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") : removeGearDevice"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v14, p4

    .line 18
    invoke-direct {p0, v0, v3, v14, v9}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->removeGearDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_5
    move-object/from16 v14, p4

    :goto_3
    move v12, v9

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_6
    move-object/from16 v14, p4

    move-object/from16 v13, p5

    .line 19
    :try_start_2
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") : removeGearInfo"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p4

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->removeGearInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_7
    if-eqz v11, :cond_9

    .line 23
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move v9, v10

    .line 24
    :goto_4
    :try_start_3
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "exception is occurred"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v11, :cond_8

    .line 26
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    move v10, v9

    .line 27
    :cond_9
    :goto_5
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cmc_p1_running"

    invoke-static {v0, v1, v12}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->putIntFromGlobal(Landroid/content/Context;Ljava/lang/String;I)Z

    return v10

    :goto_6
    if-eqz v11, :cond_a

    .line 28
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 29
    :cond_a
    throw v0
.end method

.method private checkDeleteDeviceProcedure()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mSimSlotIndex:I

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->getMyLineId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "myLineId is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 3
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Lines;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v5, "LINE_ID=?"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LINE_ID"

    .line 6
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->checkDeleteDeviceProcedureForDevice(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 9
    :try_start_1
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "exception is occurred"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 12
    :cond_3
    throw v1
.end method

.method private checkDeleteDeviceProcedureForDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$Devices;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "DEVICE_ID"

    .line 3
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "storedDeviceId is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "storedDeviceId and myDeviceId are same : removeGearInfo"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DEVICE_APPLICATION_DATA"

    .line 8
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, ""

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 9
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->removeGearInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v1, "DEVICE_TYPE"

    .line 10
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storedDeviceId, myDeviceId and storedOwnerDeviceId are not same, deviceType("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Watch"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    const/4 v2, 0x0

    .line 13
    invoke-direct {p0, p1, v4, v1, v2}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->removeGearDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 14
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 15
    :try_start_1
    sget-object p2, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "exception is occurred"

    invoke-static {p2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_5

    .line 17
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_5
    throw p1
.end method

.method private doGetUserInfo()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->isFinishedProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->getUserInformation()V

    :cond_0
    return-void
.end method

.method private doReleaseLock()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->isFinishedProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGmLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGmProcessingTimeoutFlag:Z

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GmLock Notify"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGmLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private generateContentValues(Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 19

    const-string v0, "ENABLE"

    const-string v1, "ACTIVATE"

    const-string v2, "SERVICE_TYPE"

    const-string v3, "ONE_NUMBER"

    const-string v4, "WIFI_MAC"

    const-string v5, "BT_ID"

    const-string v6, "DEVICE_NAME"

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/mdecservice/entitlement/gm/GmContentProviderContract$Gears;->TABLE_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 5
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 6
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 7
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 8
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 9
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v8, "HAS_ES"

    .line 10
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v7

    .line 11
    :try_start_1
    sget-object v7, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v0, "Gm Db contents"

    invoke-static {v7, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v1

    const-string v1, "deviceName("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), btId("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), wifiMac("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), oneNumber("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), serviceType("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), activate("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), enable("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), hasEs("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v10, :cond_0

    .line 13
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "btid is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "guid is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {v10, v0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->generateSHA256HashedResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hashedSdBtId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    invoke-virtual {v1, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    invoke-virtual {v1, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v8, v1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_2
    move-object/from16 v16, v7

    const/4 v8, 0x0

    :goto_2
    if-eqz v16, :cond_3

    .line 27
    :goto_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v16, v7

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v16, v7

    :goto_4
    const/4 v8, 0x0

    .line 28
    :goto_5
    :try_start_3
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "error is occurred"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v16, :cond_3

    goto :goto_3

    :cond_3
    :goto_6
    return-object v8

    :catchall_1
    move-exception v0

    :goto_7
    if-eqz v16, :cond_4

    .line 30
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_4
    throw v0
.end method

.method private getJsonObjectForAppData(Landroid/content/Context;Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 8

    const-string v0, "ONE_NUMBER"

    const-string v1, "BT_ID"

    const-string v2, "SERVICE_TYPE"

    .line 1
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getJsonObjectForAppData"

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string p2, "context is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    if-nez p2, :cond_1

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string p2, "values is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 4
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "device_type"

    const-string v6, "phone"

    .line 5
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-boolean v5, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsMdecSupported:Z

    if-eqz v5, :cond_3

    .line 7
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v5, " "

    .line 9
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 10
    array-length v5, v2

    if-lez v5, :cond_3

    .line 11
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x0

    .line 12
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_2

    .line 13
    aget-object v7, v2, v6

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "active_service_type"

    .line 14
    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getHashedBluetoothMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 17
    sget-object v5, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bluetooth mac address : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-string v5, "pd_bt_id"

    .line 18
    invoke-virtual {v2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 19
    :cond_4
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v5, "pd bt address is null"

    invoke-static {p1, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :goto_1
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "sd_bt_id"

    .line 22
    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :cond_5
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 24
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "OneNumber is contain"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "sync_mode"

    const-string v0, "one_number"

    if-eqz p1, :cond_8

    .line 26
    :try_start_1
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v5, "OneNumber integer object is not null"

    invoke-static {v1, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_6

    const-string v0, "two_number"

    goto :goto_2

    :cond_6
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "bt_mode"

    .line 28
    :goto_2
    invoke-virtual {v2, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 29
    :cond_8
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "OneNumber integer object is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    :goto_3
    const-string p1, "gearinfo"

    .line 31
    invoke-virtual {v4, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string p2, "make json success"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 34
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string p2, "make json failed"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private getUserInformation()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getUserInformation"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    .line 3
    iget v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGetUserInformationNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGetUserInformationNum:I

    return-void
.end method

.method private initializeFlag()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsAddLineFinished:Z

    .line 2
    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mAddLineNum:I

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsAddDeviceFinished:Z

    .line 4
    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mAddDeviceNum:I

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsRemoveDeviceFinished:Z

    .line 6
    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mRemoveDeviceNum:I

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsUpdateLineFinished:Z

    .line 8
    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateLineNum:I

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsUpdateDeviceFinished:Z

    .line 10
    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateDeviceNum:I

    .line 11
    iget-boolean v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mInitialTriggerState:Z

    if-eqz v1, :cond_1

    .line 12
    iget-boolean v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mHasGear:Z

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->generateContentValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mContentValues:Landroid/content/ContentValues;

    .line 14
    invoke-direct {p0, v1}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->checkAddUpdateProcedure(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->checkDeleteDeviceProcedure()V

    .line 16
    :cond_1
    :goto_0
    iget v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mAddLineNum:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 17
    iput-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsAddLineFinished:Z

    .line 18
    :cond_2
    iget v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mAddDeviceNum:I

    if-nez v1, :cond_3

    .line 19
    iput-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsAddDeviceFinished:Z

    .line 20
    :cond_3
    iget v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mRemoveDeviceNum:I

    if-nez v1, :cond_4

    .line 21
    iput-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsRemoveDeviceFinished:Z

    .line 22
    :cond_4
    iget v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateLineNum:I

    if-nez v1, :cond_5

    .line 23
    iput-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsUpdateLineFinished:Z

    .line 24
    :cond_5
    iget v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateDeviceNum:I

    if-nez v1, :cond_6

    .line 25
    iput-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsUpdateDeviceFinished:Z

    .line 26
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->isFinishedProcess()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 27
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGmProcessingTimeoutFlag:Z

    .line 29
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "GmLock Notify"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGmLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 31
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 32
    :cond_7
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mInitialTriggerState:Z

    return-void
.end method

.method private isFinishedProcess()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsAddLineFinished("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsAddLineFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), mIsAddDeviceFinished("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsAddDeviceFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), mIsRemoveDeviceFinished("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsRemoveDeviceFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), mIsUpdateLineFinished("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsUpdateLineFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), mIsUpdateDeviceFinished("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsUpdateDeviceFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsAddLineFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsAddDeviceFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsRemoveDeviceFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsUpdateDeviceFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsUpdateLineFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeLine(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string p2, "context is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->getJsonObjectForAppData(Landroid/content/Context;Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string p2, "obj is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget p2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mAddLineNum:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mAddLineNum:I

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->addLine(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private removeDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "removeDevice"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "LINE_ID"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DEVICE_ID"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    return-void
.end method

.method private removeGearDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storedDeviceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hashedGearBtId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 3
    iget p3, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mRemoveDeviceNum:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mRemoveDeviceNum:I

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->removeDevice(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private removeGearInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storedLineId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), storedDeviceId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), hashedGearBtId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), storedAppData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), isNeedCheckCondition("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p4, "gearinfo"

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {v0, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 4
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gearInfoStr("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p5, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {v0, p4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget p3, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateDeviceNum:I

    add-int/2addr p3, v1

    iput p3, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mUpdateDeviceNum:I

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->updateDeviceInfoForStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private updateDeviceInfoForStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateDeviceInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "LINE_ID"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "DEVICE_ID"

    .line 4
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "APPLICATION_DATA"

    .line 5
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DEVICE_NAME"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    const/4 p3, 0x5

    invoke-static {p1, p3, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    return-void
.end method

.method private updateLineInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateLineInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "LINE_ID"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "LINE_OWNER_DEVICE_ID"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, p2}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startEntitlementService(Landroid/content/Context;ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "SIM_SLOT_INDEX"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mSimSlotIndex:I

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GmService intentservice start - sim slot index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mSimSlotIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mSimSlotIndex:I

    if-ltz v0, :cond_3

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "MDEC_ACTIVE"

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsMdecSupported:Z

    .line 5
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "cmc_p1_running"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getIntFromGlobal(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 6
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMdecSupported : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsMdecSupported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isCmcP1Running : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v2, :cond_1

    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mIsMdecSupported:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "HAS_GEAR"

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mHasGear:Z

    .line 9
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasGear : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mHasGear:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGetUserInformationNum:I

    .line 11
    iput-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mInitialTriggerState:Z

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->getUserInformation()V

    .line 13
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGmLock:Ljava/lang/Object;

    monitor-enter p1

    .line 14
    :try_start_0
    iput-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGmProcessingTimeoutFlag:Z

    .line 15
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "GmLock(Processing) wait"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGmLock:Ljava/lang/Object;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 18
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    iget-boolean p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->mGmProcessingTimeoutFlag:Z

    if-eqz p1, :cond_2

    .line 20
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "GmLock(Processing) timeout"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 21
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 22
    :cond_3
    :goto_2
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "invalid sim slot index"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
