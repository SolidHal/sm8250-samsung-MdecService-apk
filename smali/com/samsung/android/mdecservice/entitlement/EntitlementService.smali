.class public Lcom/samsung/android/mdecservice/entitlement/EntitlementService;
.super Landroid/app/IntentService;
.source "EntitlementService.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static final TIMEOUT_VALUE_ENTITLEMENT:I = 0x7530

.field private static mEntitlementLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEntitlementResultReceiver:Landroid/os/ResultReceiver;

.field private mIsCheckedCompleted:Z

.field private mIsCheckedError:Z

.field private mNeedCheckCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mEntitlementLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "EntitlementService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/entitlement/EntitlementService$1;-><init>(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;)Landroid/os/ResultReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mNeedCheckCount:I

    return p0
.end method

.method static synthetic access$210(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mNeedCheckCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mNeedCheckCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mIsCheckedError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->releaseEntitlementLock()V

    return-void
.end method

.method private releaseEntitlementLock()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mIsCheckedCompleted:Z

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mEntitlementLock:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "entitlementLock Notify"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mEntitlementLock:Ljava/lang/Object;

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

.method private requestEsClientOperation(ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    sget-object p2, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid event type : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    const-string p2, "start getAllInformation"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->doGetAllInformation(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 4
    :pswitch_1
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    const-string p2, "finish pre processing "

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->registerPDPAgreement(Landroid/content/Context;Landroid/os/ResultReceiver;)Z

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->migrateLine(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    goto :goto_0

    .line 7
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->getProvisionedDevice(Landroid/content/Context;ZLandroid/os/ResultReceiver;)Z

    goto :goto_0

    .line 8
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->removeProvisionedDevice(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    goto :goto_0

    .line 9
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/provisioned/EntitlementProvisionedRequest;->addProvisionedDevice(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    goto :goto_0

    .line 10
    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->getUserInformation(Landroid/content/Context;ZLandroid/os/ResultReceiver;)Z

    goto :goto_0

    .line 11
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->updateDeviceInformation(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    goto :goto_0

    .line 12
    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->updateLineInformation(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    goto :goto_0

    .line 13
    :pswitch_a
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->removeDevice(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    goto :goto_0

    .line 14
    :pswitch_b
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/device/EntitlementDeviceRequest;->addDevice(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    goto :goto_0

    .line 15
    :pswitch_c
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->removeLine(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    goto :goto_0

    .line 16
    :pswitch_d
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/line/EntitlementLineRequest;->addLine(Landroid/content/Context;Landroid/content/ContentValues;Landroid/os/ResultReceiver;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
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


# virtual methods
.method public onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mNeedCheckCount:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mIsCheckedError:Z

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mIsCheckedCompleted:Z

    .line 6
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    .line 7
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckSaInfo;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    iget-object v2, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    const-string v3, "receiver"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9
    iget-object v2, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    .line 10
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckFcmInfo;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    iget-object v2, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 12
    iget-object v2, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 14
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckWifiMacInfo;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mEntitlementResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16
    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--> start service"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "context is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "intent is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "receiver"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    if-nez v0, :cond_2

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "receiver is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mEntitlementLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mIsCheckedCompleted:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mIsCheckedError:Z

    if-nez v2, :cond_3

    .line 9
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Enter entitlementLock"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mEntitlementLock:Ljava/lang/Object;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 11
    :try_start_1
    sget-object v3, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "interrupted entitlementLock"

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 13
    :cond_3
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "TYPE"

    const/4 v2, -0x1

    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 15
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandleIntent event type is ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {v1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->getRequestString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mIsCheckedCompleted:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->mIsCheckedError:Z

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "VALUE"

    .line 19
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->requestEsClientOperation(ILandroid/content/ContentValues;Landroid/os/ResultReceiver;)V

    .line 20
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "--> end service"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->sendErrorEvent(ILandroid/os/ResultReceiver;)V

    return-void

    .line 22
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public sendErrorEvent(ILandroid/os/ResultReceiver;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    const/16 v2, 0xd

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    packed-switch p1, :pswitch_data_0

    .line 3
    sget-object p2, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid event type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x7d

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x7b

    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x79

    .line 6
    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x77

    .line 7
    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x75

    .line 8
    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x73

    .line 9
    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x71

    .line 10
    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x6f

    .line 11
    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_8
    const/16 p1, 0x6d

    .line 12
    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_9
    const/16 p1, 0x6b

    .line 13
    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_a
    const/16 p1, 0x69

    .line 14
    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_b
    const/16 p1, 0x67

    .line 15
    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_c
    const/16 p1, 0x65

    .line 16
    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_0
    :pswitch_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
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
        :pswitch_d
        :pswitch_0
    .end packed-switch
.end method
