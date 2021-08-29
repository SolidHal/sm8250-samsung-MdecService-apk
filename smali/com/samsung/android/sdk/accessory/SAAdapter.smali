.class public final Lcom/samsung/android/sdk/accessory/SAAdapter;
.super Ljava/lang/Object;
.source "SAAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;,
        Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;,
        Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;,
        Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;
    }
.end annotation


# static fields
.field private static final ACCESSORY_SERVICE_BIND_TIMEOUT:I = 0x2710

.field public static final ACTION_REGISTER_AGENT:Ljava/lang/String; = "com.samsung.accessory.action.REGISTER_AGENT"

.field public static final ACTION_SERVICE_CONNECTION_REQUESTED:Ljava/lang/String; = "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

.field private static final BIND_SERVICE_MAX_ATTEMPTS:I = 0x5

.field private static final ERROR_FATAL:I = 0x800

.field public static final ERROR_PERMISSION_DENIED:I = 0x900

.field public static final ERROR_PERMISSION_FAILED:I = 0x901

.field private static final TAG:Ljava/lang/String;

.field private static sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;


# instance fields
.field private mAgentCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientId:J

.field private mConnection:Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathCallback:Lcom/samsung/accessory/api/IDeathCallback;

.field private mProxyReceiver:Landroid/os/ResultReceiver;

.field private mScIndicationCallback:Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

.field private mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SA_SDK]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mContext:Landroid/content/Context;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mState:I

    .line 5
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;-><init>(Lcom/samsung/android/sdk/accessory/SAAdapter$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mConnection:Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;

    .line 6
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mDeathCallback:Lcom/samsung/accessory/api/IDeathCallback;

    .line 7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    .line 8
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SAAdapter$1;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mScIndicationCallback:Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/RemoteException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/accessory/SAAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyConnection()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/accessory/SAAdapter;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V

    return-void
.end method

.method static synthetic access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    return-object p0
.end method

.method static synthetic access$402(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/accessory/api/ISAFrameworkManagerV2;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/IDeathCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mDeathCallback:Lcom/samsung/accessory/api/IDeathCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mScIndicationCallback:Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/accessory/SAAdapter;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/samsung/android/sdk/accessory/SAAdapter;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/os/ResultReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    return-object p0
.end method

.method static synthetic access$902(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    return-object p1
.end method

.method private declared-synchronized cleanup(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->tearFrameworkconnection()V

    .line 2
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget p1, p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mConnection:Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 6
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    .line 7
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p1, p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;

    .line 8
    invoke-interface {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;->onFrameworkDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static declared-synchronized getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/accessory/SAAdapter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized notifyConnection()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;

    .line 2
    invoke-interface {v1}, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;->onFrameworkConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyDisconnection(Landroid/os/RemoteException;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    instance-of v0, p1, Landroid/os/TransactionTooLargeException;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Remote call falied, binder transaction buffer low"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Remote call falied"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized tearFrameworkconnection()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Binding to framework does not exists"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v1, v2, v3}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->tearFrameworkConnection(J)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    :try_start_2
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 6
    :try_start_3
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to tear framework connection"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 7
    :goto_1
    monitor-exit p0

    return-void

    .line 8
    :goto_2
    :try_start_4
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method acceptServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Ljava/lang/String;
    .locals 14

    move-object v1, p0

    const-string v0, "acceptServiceConnection:Invalid response from Accessory Framework- connectionId:"

    const-string v2, "acceptServiceConnection:Invalid response from Accessory Framework:"

    const-string v3, "errorcode"

    .line 1
    sget-object v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 3
    :cond_0
    :try_start_0
    iget-object v5, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v6, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-object v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-interface/range {v5 .. v13}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->acceptServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "connectionId"

    .line 5
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 6
    :cond_1
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8
    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAException;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Failed to accept connection request!"

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 11
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to accept service connection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 13
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "acceptServiceConnection:Remote call failed"

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method authenticatePeeragent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-interface/range {v1 .. v8}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->authenticatePeerAgent(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Failed to request peer authentication"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 6
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 p2, 0x800

    const-string p3, "authenticatePeeragent:Remote call failed"

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method declared-synchronized bindToFramework()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    .line 3
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object v2, Lcom/samsung/android/sdk/accessory/SASdkConfig;->ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    move v3, v2

    .line 5
    :goto_0
    sget-object v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-wide v4, v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    const/16 v5, 0x800

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getState()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x5

    if-gt v3, v4, :cond_1

    .line 7
    sget-object v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v6, v6, Lcom/samsung/android/sdk/accessory/SAAdapter;->mConnection:Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;

    invoke-virtual {v4, v1, v6, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    .line 8
    :try_start_2
    sget-object v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v6, "getDefaultAdapter: About start waiting"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget-object v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 11
    new-instance v2, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v3, "Failed to Bind to Accessory Framework - Action interrupted!"

    invoke-direct {v2, v5, v3, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 12
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getDefaultAdapter: Binding to Accessory service failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 14
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v2, "Is the Samsung Accessory Service Framework installed?!"

    invoke-direct {v1, v5, v2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 15
    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_2

    .line 16
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Application is now connected to Accessory Framework!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 17
    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getDefaultAdapter: Service Connection proxy is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 19
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v2, "Unable to bind to Samsung Accessory Service!"

    invoke-direct {v1, v5, v2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    :catch_1
    :try_start_4
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getDefaultAdapter: Permission denied! Binding to Accessory service failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 22
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->checkAccessoryPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v1, 0x901

    const-string v2, "Permission validation failed to bind to Samsung Accessory Service! Please re-install the application and try again."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 24
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v1, 0x900

    const-string v2, "Permission denied to bind to Samsung Accessory Service! Please add permission and try again."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 25
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method cleanupAgent(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Binding to framework does not exists"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->cleanupAgent(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to cleanup agent details"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method closeServiceConnection(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->closeServiceConnection(JLjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to close service connection"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 6
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v0, 0x800

    const-string v1, "closeServiceConnection:Remote call failed"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method findPeerAgents(Ljava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    :cond_0
    const/16 v0, 0x800

    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v3, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    const-wide/16 v5, -0x1

    move-object v7, p1

    move-object v8, p2

    invoke-interface/range {v2 .. v8}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->findPeerAgents(JJLjava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result p1

    return p1

    .line 5
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p2, "findPeerAgents:mServiceProxy is null"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 6
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to initiate peer discovery"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 8
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p2, "findPeerAgents:Remote call failed"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method getAgentDetails(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getAgentDetails(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get agent details"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 6
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v0, 0x800

    const-string v1, "getAgentDetails: Remote call failed"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method getAgentId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    :cond_0
    const/16 v0, 0x800

    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getAgentId(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p2, "getAgentId:mServiceProxy is null"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 6
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to fetch agent ID"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 8
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p2, "getAgentId:Remote call failed"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method declared-synchronized getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 4
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getLocalAgentId(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    const-string p1, "errorcode"

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "agentId"

    .line 6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 7
    monitor-exit p0

    return-object p1

    .line 8
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Get Local agent ID:Invalid response - localAgentID:null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "Failed to fetch localAgent ID"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Get Local agent ID:Invalid response from accessory framework - null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception p1

    .line 11
    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to fetch localAgent ID"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 13
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v0, 0x800

    const-string v1, "getLocalAgentId:Remote call failed"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getNetworkConnectionType()I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    :cond_0
    const/16 v0, 0x800

    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    invoke-interface {v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getNetworkConnectionType()I

    move-result v0

    return v0

    .line 5
    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v2, "getNetworkConnectionType: mServiceProxy is null"

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 6
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get network connection"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 8
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v2, "getNetworkConnectionType: Remote call failed"

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isSocketConnected(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->isSocketConnected(JLjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to fetch socket connection status"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 6
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v0, 0x800

    const-string v1, "isSocketConnected:Remote call failed"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method declared-synchronized recycle([B)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.samsung.accessory.adapter.extra.READ_BYTES"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p1, p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized registerAgentCallback(Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Agent callback added. Current size - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method registerMexCallback(Ljava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->registerMexCallback(JLjava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 5
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Failed to register mex callback"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 7
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 p2, 0x800

    const-string v0, "registerMexCallback: Remote call failed"

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method declared-synchronized registerServices([B)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->registerComponent(J[B)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;

    .line 6
    invoke-interface {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;->onAgentRegistered()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :cond_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 8
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Service registration call failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 10
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v0, 0x800

    const-string v1, "registerServices:Remote call failed"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method rejectServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->rejectServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Failed to reject service connection"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 6
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 p2, 0x800

    const-string p3, "rejectServiceConnection:Remote call failed"

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method requestServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->requestServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Failed to request service connection"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 6
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 p2, 0x800

    const-string p3, "requestServiceConnection:Remote call failed"

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method send(Ljava/lang/String;I[BZIIII)I
    .locals 15

    move-object v1, p0

    move/from16 v0, p2

    move/from16 v2, p8

    .line 1
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v3, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3
    :try_start_0
    iget-object v4, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v5, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    int-to-long v8, v0

    move-object/from16 v7, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-interface/range {v4 .. v14}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendUncompressed(JLjava/lang/String;J[BZIII)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 4
    iget-object v4, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v5, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    int-to-long v8, v0

    move-object/from16 v7, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-interface/range {v4 .. v14}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendCompressed(JLjava/lang/String;J[BZIII)I

    move-result v0

    return v0

    .line 5
    :cond_2
    iget-object v2, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v3, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    int-to-long v6, v0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-interface/range {v2 .. v12}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->send(JLjava/lang/String;J[BZIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6
    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed send data for connection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 8
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "send: Remote call failed"

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method sendMessage(Ljava/lang/String;Ljava/lang/String;J[BZIIII)I
    .locals 15

    move-object v1, p0

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isMexSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v3, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p7

    invoke-interface/range {v2 .. v14}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendMessage(JLjava/lang/String;Ljava/lang/String;J[BZIIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send messages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 7
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "sendMessage: Remote call failed"

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, -0x705

    return v0
.end method

.method sendMessageDeliveryStatus(JII)V
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendMessageDeliveryStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 5
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Failed to send message delivery status"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 7
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 p2, 0x800

    const-string p3, "sendMessageDeliveryStatus: Remote call failed"

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method setNetworkConnectionType(ILcom/samsung/accessory/api/ISANetworkConnectionCallback;)I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    :cond_0
    const/16 v0, 0x800

    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->setNetworkConnectionType(JILcom/samsung/accessory/api/ISANetworkConnectionCallback;)I

    move-result p1

    return p1

    .line 5
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p2, "setNetworkConnectionType: mServiceProxy is null"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 6
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to set network connection"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 8
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p2, "setNetworkConnectionType: Remote call failed"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method declared-synchronized setState(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized unregisterAgentCallback(Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Agent callback removed. Current size - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v0, "All clients have unregistered.Disconnection from Accessory Framework."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method unregisterMexCallback(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->unregisterMexCallback(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to unregister mex callback"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 5
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v0, 0x800

    const-string v1, "unregisterMexCallback: Remote call failed"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
