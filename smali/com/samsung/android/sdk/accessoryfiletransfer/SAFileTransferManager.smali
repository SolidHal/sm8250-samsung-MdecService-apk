.class public Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
.super Ljava/lang/Object;
.source "SAFileTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;
    }
.end annotation


# static fields
.field public static final FILE_TRANSFER_ACCEPT:I = 0x2

.field public static final FILE_TRANSFER_ACCEPT_URI:I = 0x5

.field public static final FILE_TRANSFER_START:I = 0x1

.field public static final FILE_TRANSFER_START_URI:I = 0x4

.field public static final FILE_TRANSFER_STOP:I = 0x3

.field public static final FILE_TRANSFER_STOP_ALL:I = 0x6

.field private static final FT_SERVICE_BIND_TIMEOUT:I = 0x2710

.field public static final JSON_UPDATE_MSG:Ljava/lang/String; = "CallBackJson"

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAFileTransferManager"

.field private static mCallingAgentInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mCallingAgentNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsBound:Z

.field private static mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field mFTServiceConn:Landroid/content/ServiceConnection;

.field private mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

.field private mUpdater:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentNames:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentInfos:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mIsBound:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mFTServiceConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mUpdater:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mUpdater:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    return-object p1
.end method

.method static synthetic access$300()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    return-object p0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mIsBound:Z

    return p0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentInfos:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static getCallingAgentInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    return-object p0
.end method

.method private getDefaultStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
    .locals 8

    const-class v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-nez v1, :cond_4

    .line 2
    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;-><init>()V

    sput-object v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    .line 3
    iput-object p0, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mContext:Landroid/content/Context;

    .line 4
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    new-instance p0, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->FILE_TRANSFER_SERVICE_INTENT:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    .line 7
    sget-object v3, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x800

    if-eqz v2, :cond_6

    .line 8
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    sget-object v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mFTServiceConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, p0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    :try_start_2
    const-string p0, "[SA_SDK]SAFileTransferManager"

    const-string v2, "SAFTAdapter: About start waiting"

    .line 10
    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v5, :cond_1

    .line 11
    sget-object v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 13
    :cond_1
    sget-boolean p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mIsBound:Z

    if-eqz p0, :cond_2

    const-string p0, "[SA_SDK]SAFileTransferManager"

    const-string v2, "getInstance: Woken up , FTService Connected"

    .line 14
    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 15
    :cond_2
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p1, "Timed out trying to bind to FT Service!"

    invoke-direct {p0, v3, p1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "[SA_SDK]SAFileTransferManager"

    const-string v2, "getInstance: FTService Connection Failed"

    .line 16
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    if-eqz p1, :cond_5

    :try_start_4
    const-string p0, "[SA_SDK]SAFileTransferManager"

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is using FTService"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sget-object p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-object p0

    .line 20
    :cond_5
    :try_start_5
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "Calling agent was cleared from record. Please re-register your service."

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 21
    :cond_6
    :try_start_6
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p1, "Package name is null!"

    invoke-direct {p0, v3, p1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static isFTBound()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mIsBound:Z

    return v0
.end method

.method static register(Ljava/lang/String;Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static register(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static unregister(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    const-string v1, "[SA_SDK]SAFileTransferManager"

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    sget-object p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentNames:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    sget-object p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mFTServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 5
    sget-object p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    const/4 p0, 0x0

    .line 6
    sput-boolean p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mIsBound:Z

    const-string p0, "File transfer service disconnected"

    .line 7
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Other applications are still using this FT binding"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "FT already unbound for this package. Please check whether the calling agent was registered"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method cancelAllTransactions(Ljava/lang/String;)I
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;

    invoke-direct {v0, p1}, Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x0

    .line 2
    :try_start_1
    new-instance v1, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 v2, 0x6

    invoke-virtual {v0}, Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "receiveStatus"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    const-string p1, "[SA_SDK]SAFileTransferManager"

    const-string v0, "File Transfer Daemon could not queue request"

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method cancelFile(I)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;

    invoke-direct {v0, p1}, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    new-instance p1, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method receiveFile(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "[SA_SDK]SAFileTransferManager"

    if-eqz p5, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->registerCallback(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p4, "Could not register file event callback. Declining transfer."

    .line 2
    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x3

    .line 3
    invoke-interface {p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;->onTransferCompleted(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 4
    :try_start_1
    new-instance p1, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 5
    new-instance p2, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 p3, 0x5

    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->toJSON()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;

    invoke-direct {p1, p2, p3, p5}, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;-><init>(ILjava/lang/String;Z)V

    .line 7
    new-instance p2, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 p3, 0x2

    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->toJSON()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V

    :goto_0
    const/4 p1, 0x0

    .line 8
    iget-object p3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-eqz p3, :cond_2

    .line 9
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    const-string p2, "receiveStatus"

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "receiveStatus:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string p1, "File Transfer Daemon could not queue request"

    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 13
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 14
    :goto_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method registerCallback(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mUpdater:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;-><init>(Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;)V

    invoke-interface {v1, p2, v2}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->registerCallbackFacilitator(ILandroid/os/ResultReceiver;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return v0
.end method

.method sendFile(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;Ljava/lang/String;)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 1
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getDefaultStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "AccessoryPreferences"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x0

    move-object/from16 v15, p2

    .line 2
    invoke-interface {v0, v15, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "[SA_SDK]SAFileTransferManager"

    if-nez v0, :cond_0

    const-string v0, "Agent id was not found in prefs! Fetching from framework.."

    .line 3
    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :cond_0
    move-object v9, v0

    if-eqz p5, :cond_1

    .line 4
    new-instance v0, Ljava/io/File;

    move-object/from16 v6, p6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v18, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessoryId()J

    move-result-wide v10

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const-string v7, ""

    move-object/from16 v5, v18

    move-object v3, v14

    move-object v14, v0

    move-object/from16 v15, p5

    move-object/from16 v17, p2

    invoke-direct/range {v5 .. v17}, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :try_start_0
    new-instance v0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 v5, 0x4

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object/from16 v6, p6

    move-object v3, v14

    .line 10
    new-instance v0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessoryId()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v7, ""

    move-object v5, v0

    move-object/from16 v13, p2

    invoke-direct/range {v5 .. v13}, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 12
    :try_start_1
    new-instance v5, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 14
    :goto_1
    :try_start_2
    iget-object v5, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-eqz v5, :cond_3

    .line 15
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isNewFTVersionSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "new ft version is supported"

    .line 16
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v5, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;

    iget-object v7, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mUpdater:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    invoke-direct {v6, v7, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;-><init>(Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;)V

    invoke-interface {v5, v0, v6}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommandV2(Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3

    :cond_2
    const-string v5, "new ft version is not supported"

    .line 18
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v5, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 20
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    .line 21
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    const-string v4, "STATUS"

    .line 22
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "ID"

    .line 23
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_4
    if-eqz v4, :cond_6

    .line 24
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isNewFTVersionSupported()Z

    move-result v4

    if-nez v4, :cond_5

    .line 25
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->registerCallback(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;I)Z

    :cond_5
    const-string v2, "File Pushed and Callback registered"

    .line 26
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    const/4 v0, -0x1

    return v0
.end method
