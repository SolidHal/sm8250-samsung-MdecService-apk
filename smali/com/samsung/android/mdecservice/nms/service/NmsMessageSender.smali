.class public Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;
.super Ljava/lang/Object;
.source "NmsMessageSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;
    }
.end annotation


# static fields
.field private static BACK_GROUND_MSG_SENDING:Ljava/lang/String; = "com.android.mms.transaction.Send.BACKGROUND_MSG"

.field private static final LOG_TAG:Ljava/lang/String; = "NmsMessageSender"

.field private static final RECEIVE_MESSAGE:I = 0x64

.field private static final RESULT_SENDING_FAIL:I = 0x0

.field private static final RESULT_SENDING_SUCCESS:I = 0x1

.field private static sInstance:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;


# instance fields
.field private mCallbackBinder:Lc/a/a/a/b;

.field public mCallbackConn:Landroid/content/ServiceConnection;

.field private mCallbackConnected:Z

.field private mContext:Landroid/content/Context;

.field private mGearSimIndex:Ljava/lang/String;

.field private mIsServiceConnected:Z

.field protected mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRunningCounter:I

.field private mSenderHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected mServiceBinder:Lc/a/a/a/a;

.field mServiceConn:Landroid/content/ServiceConnection;

.field private mServiceLooper:Landroid/os/Looper;

.field protected mSnsCallback:Lc/a/a/a/c;

.field private mThreadHandler:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mResolver:Landroid/content/ContentResolver;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mServiceBinder:Lc/a/a/a/a;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mIsServiceConnected:Z

    .line 5
    iput v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mRunningCounter:I

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mSenderHandlerMap:Ljava/util/Map;

    .line 7
    new-instance v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$1;-><init>(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mServiceConn:Landroid/content/ServiceConnection;

    .line 8
    new-instance v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$2;-><init>(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mCallbackConn:Landroid/content/ServiceConnection;

    .line 9
    new-instance v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$3;-><init>(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mSnsCallback:Lc/a/a/a/c;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Lc/a/a/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mCallbackBinder:Lc/a/a/a/b;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;Lc/a/a/a/b;)Lc/a/a/a/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mCallbackBinder:Lc/a/a/a/b;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mIsServiceConnected:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mCallbackConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mSenderHandlerMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mRunningCounter:I

    return p0
.end method

.method static synthetic access$1608(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mRunningCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mRunningCounter:I

    return v0
.end method

.method static synthetic access$1610(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mRunningCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mRunningCounter:I

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Landroid/content/ContentResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->BACK_GROUND_MSG_SENDING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mGearSimIndex:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->onConnected()V

    return-void
.end method

.method private bindSenderService()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "bindSenderService()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->getExplicitIntentMsgSender(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->getExplicitIntentCallBack(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mCallbackConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSenderService fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getExplicitIntentCallBack(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .line 1
    const-class v0, Lc/a/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.mms.transaction.ISnsRemoteService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v4, 0x0

    .line 5
    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p0

    move-object v0, v3

    :cond_1
    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 9
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 10
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 11
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 12
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 14
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    .line 16
    :cond_2
    sget-object p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getExplicitIntentCallBack fail. requery "

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getExplicitIntentMsgSender(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .line 1
    const-class v0, Lc/a/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.mms.transaction.IMessageBackgroundSender"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v4, 0x0

    .line 5
    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p0

    move-object v0, v3

    :cond_1
    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 9
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 10
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 11
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 12
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 14
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    .line 16
    :cond_2
    sget-object p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getExplicitIntentMsgSender fail. requery "

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;
    .locals 2

    const-class v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->sInstance:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-direct {v1}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;-><init>()V

    sput-object v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->sInstance:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->sInstance:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private onConnected()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onConnected()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->sendRelayMesage()V

    return-void
.end method


# virtual methods
.method public checkIfMessageExists(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const-string v0, "relay_id"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "object_id=?"

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v6, p1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 5
    throw p1
.end method

.method public doUnbindService()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unbind called"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mIsServiceConnected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mIsServiceConnected:Z

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->LOG_TAG:Ljava/lang/String;

    const-string v2, "do unbind mServiceConn"

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    sget-object v2, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mCallbackConnected:Z

    if-eqz v0, :cond_1

    .line 9
    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mCallbackConnected:Z

    .line 10
    sget-object v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "do unbind mCallbackConn"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mCallbackConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 12
    sget-object v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized initData(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mContext:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mResolver:Landroid/content/ContentResolver;

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->getPhoneCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getPresentSimCount(Landroid/content/Context;)I

    move-result p2

    if-le p2, v0, :cond_0

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getActiveSimSlot()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mGearSimIndex:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mThreadHandler:Landroid/os/HandlerThread;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mThreadHandler:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p2

    if-nez p2, :cond_2

    .line 8
    :cond_1
    new-instance p2, Landroid/os/HandlerThread;

    const-string v1, "NmsSender"

    const/16 v2, 0xa

    invoke-direct {p2, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mThreadHandler:Landroid/os/HandlerThread;

    .line 9
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mThreadHandler:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mServiceLooper:Landroid/os/Looper;

    .line 11
    new-instance p2, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {p2, p0, p1, v1}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;-><init>(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;Landroid/content/Context;Landroid/os/Looper;)V

    .line 12
    invoke-static {p2, p3}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->access$302(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    invoke-static {p2, p4}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->access$402(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    invoke-static {p2, p5}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->access$502(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    invoke-static {p2, p6}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->access$602(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    .line 16
    invoke-static {p2, p7}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->access$702(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;Ljava/util/List;)Ljava/util/List;

    .line 17
    invoke-static {p2, p8}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->access$802(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    invoke-virtual {p0, p8, p5}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->checkIfMessageExists(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    long-to-int p1, p3

    .line 20
    :cond_3
    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->access$902(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;I)I

    .line 21
    sget-object p3, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "messageId = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mSenderHandlerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mRunningCounter:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mRunningCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public quitThreadHanderLooper()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mThreadHandler:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mThreadHandler:Landroid/os/HandlerThread;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mSenderHandlerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeRelayHandler(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mSenderHandlerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeRelayHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mSenderHandlerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected sendRelayMesage()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "MdecService"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mSenderHandlerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->access$1300(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;

    invoke-static {v4, v1}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->access$1302(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;Z)Z

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->access$800(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sms"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x2710

    .line 7
    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->access$1400(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->access$800(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mms"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x4e20

    .line 10
    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->access$1500(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public startSenderBindService()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mIsServiceConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mCallbackConnected:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->bindSenderService()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->sendRelayMesage()V

    :goto_0
    return-void
.end method
