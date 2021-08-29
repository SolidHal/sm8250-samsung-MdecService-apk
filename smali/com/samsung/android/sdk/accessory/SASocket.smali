.class public abstract Lcom/samsung/android/sdk/accessory/SASocket;
.super Ljava/lang/Object;
.source "SASocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;,
        Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;,
        Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;,
        Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;
    }
.end annotation


# static fields
.field public static final CONNECTION_LOST_DEVICE_DETACHED:I = 0x209

.field public static final CONNECTION_LOST_PEER_DISCONNECTED:I = 0x201

.field public static final CONNECTION_LOST_RECEIVE_LIMIT_VIOLATED:I = 0x20b

.field public static final CONNECTION_LOST_RETRANSMISSION_FAILED:I = 0x20a

.field public static final CONNECTION_LOST_UNKNOWN_REASON:I = 0x200

.field private static final DATA_KEY:Ljava/lang/String; = "_"

.field private static final ERROR_CONNECTION_ALREADY_CLOSED:I = 0xa01

.field public static final ERROR_FATAL:I = 0x800

.field private static final ERROR_INVALID_CHANNEL:I = 0xa06

.field private static final ERROR_WRITE_TIMEDOUT:I = 0xa07

.field private static final SOCKET_CONNECTED:I = 0x1

.field private static final SOCKET_DISCONNECTED:I = 0x2

.field private static final SOCKET_FORCE_CLOSED:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

.field private mConnectionId:Ljava/lang/String;

.field private mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

.field private mIsConnected:I

.field private mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SA_SDK]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->cleanupSocket()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SAAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SASocket;->handleConnectionResponse(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/accessory/SASocket;IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SASocket;->handleIncomingData(IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/accessory/SASocket;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->handleConnectionLoss(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    return-object p0
.end method

.method private cleanupSocket()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->quit()V

    return-void
.end method

.method private static getDataKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleConnectionLoss(I)V
    .locals 1

    const/16 v0, 0x800

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->onServiceConnectionLost(I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->handleServiceConnectionLostErrorCode(I)V

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->cleanupSocket()V

    return-void
.end method

.method private handleConnectionResponse(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v0, "connectionId is null so cleaning up"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;->onConnectionFailure(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->cleanupSocket()V

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 7
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;->onConnectionSuccess(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "Connection status callback not found! Ignoring response"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleIncomingData(IILandroid/os/Bundle;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "Ignoring data, socket is not yet established"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "com.samsung.accessory.adapter.extra.READ_BYTES"

    .line 3
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "Failed to reassemble! - null data received!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v8, -0x1

    const-string v2, "com.samsung.accessory.adapter.extra.READ_LENGHT"

    .line 5
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v2, "com.samsung.accessory.adapter.extra.READ_OFFSET"

    .line 6
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 7
    iget-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->getDataKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 8
    sget-object v2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIncomingData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x2

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getApduSize()I

    move-result v3

    move-object v2, p3

    move v4, p2

    move-object v5, v0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/sdk/accessory/SAReassembler;->assembleData(Ljava/lang/Object;II[BII)I

    move-result v8

    if-ne v8, v1, :cond_2

    .line 10
    invoke-static {p3}, Lcom/samsung/android/sdk/accessory/SAReassembler;->getAppData(Ljava/lang/Object;)[B

    move-result-object p2

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SASocket;->onReceive(I[B)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne v8, p1, :cond_3

    .line 12
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "Failed to reassemble!: closing down the connection"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->recycle([B)V

    if-eq v8, v9, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    :try_start_1
    sget-object p2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v1, "Error in onRead!"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->recycle([B)V

    if-eq v8, v9, :cond_4

    .line 17
    :goto_1
    invoke-static {p3}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 18
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->recycle([B)V

    if-eq v8, v9, :cond_5

    .line 19
    invoke-static {p3}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    :cond_5
    throw p1
.end method

.method private handleServiceConnectionLostErrorCode(I)V
    .locals 3

    const/16 v0, 0x200

    if-eq p1, v0, :cond_4

    const/16 v0, 0x201

    if-eq p1, v0, :cond_3

    const/16 v0, 0x209

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x800

    if-eq p1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnectionLost() error_code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v0, "onServiceConnectionLost() -> ERROR_FATAL"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v0, "onServiceConnectionLost() -> CONNECTION_LOST_RETRANSMISSION_FAILED"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v0, "onServiceConnectionLost() -> CONNECTION_LOST_DEVICE_DETACHED"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v0, "onServiceConnectionLost() -> CONNECTION_LOST_PEER_DISCONNECTED"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_4
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v0, "onServiceConnectionLost() -> CONNECTION_LOST_UNKNOWN_REASON"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private requestClose()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->closeServiceConnection(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa01

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v1, "Connection is already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " close requested successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "Failed to close connection!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized sendData(I[BI)V
    .locals 9

    monitor-enter p0

    if-gez p1, :cond_0

    .line 1
    :try_start_0
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "Send Failed : there is no service channel at the index"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    if-eqz p2, :cond_4

    .line 4
    array-length v0, p2

    if-eqz v0, :cond_3

    .line 5
    array-length v0, p2

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result v2

    if-gt v0, v2, :cond_2

    .line 6
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->getDataKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v8, Lcom/samsung/android/sdk/accessory/SAFragmenter;

    invoke-direct {v8, v1, v0}, Lcom/samsung/android/sdk/accessory/SAFragmenter;-><init>(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxHeaderLength()I

    move-result v3

    .line 10
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxFooterLength()I

    move-result v4

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getSsduSize()I

    move-result v5

    const/4 v6, 0x0

    move-object v2, v8

    move-object v7, p2

    .line 12
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->configure(IIII[B)V

    .line 13
    :goto_0
    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->nextFragment()Lcom/samsung/android/sdk/accessory/SAFragment;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 14
    invoke-direct {p0, p1, v8, p2, p3}, Lcom/samsung/android/sdk/accessory/SASocket;->sendInternal(ILcom/samsung/android/sdk/accessory/SAFragmenter;ZI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 15
    :cond_1
    :try_start_3
    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    :try_start_4
    sget-object p2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p3, "Send Blob failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 19
    :goto_1
    :try_start_5
    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V

    throw p1

    .line 20
    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data too long:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data Too long! size:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Max allowed Size:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 22
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". check SAPeerAgent.getMaxAllowedDataSize()"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "sendData: data length is 0"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalaid data length 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_4
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "sendData: data is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid data to send:NULL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Send failed. Socket already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendInternal(ILcom/samsung/android/sdk/accessory/SAFragmenter;ZI)V
    .locals 14

    move-object v1, p0

    move v0, p1

    const-string v11, "Write failed. Attempt to write on invalid channel:"

    const-string v12, "Write failed: Timed out!"

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->getFragment()Lcom/samsung/android/sdk/accessory/SAFragment;

    move-result-object v13

    .line 2
    :try_start_0
    iget v2, v1, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 3
    iget-object v2, v1, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, v1, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessory/SAFragment;->getBuffer()[B

    move-result-object v5

    .line 4
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndex()I

    move-result v7

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessory/SAFragment;->getPayloadLength()I

    move-result v8

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessory/SAFragment;->getOffset()I

    move-result v9

    move v4, p1

    move/from16 v6, p3

    move/from16 v10, p4

    .line 5
    invoke-virtual/range {v2 .. v10}, Lcom/samsung/android/sdk/accessory/SAAdapter;->send(Ljava/lang/String;I[BZIIII)I

    move-result v2

    if-nez v2, :cond_0

    .line 6
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data sent ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessory/SAFragment;->getPayloadLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->getTotalSent()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V

    return-void

    :cond_0
    const/16 v3, 0xa01

    if-eq v2, v3, :cond_3

    const/16 v3, 0xa06

    if-eq v2, v3, :cond_2

    const/16 v0, 0xa07

    if-eq v2, v0, :cond_1

    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V

    return-void

    .line 10
    :cond_1
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->close()V

    .line 12
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_2
    sget-object v2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v0, 0x2

    .line 15
    iput v0, v1, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 16
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "Write failed: Connection closed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Write failed:Connection already closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "Data send failed, connection closed!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Failed to send, connection closed!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v3, "Send failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Send Failed"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :goto_0
    invoke-virtual {v13}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V

    throw v0
.end method

.method private startSocketHandler(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/samsung/android/sdk/accessory/SASocket$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessory/SASocket$3;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed get Looper for Socket: initiator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Peer Id:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method acceptServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 2
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 3
    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    .line 4
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lcom/samsung/android/sdk/accessory/SASocket;->startSocketHandler(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    iget-object p4, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    new-instance v0, Lcom/samsung/android/sdk/accessory/SASocket$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/samsung/android/sdk/accessory/SASocket$2;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SAAdapter;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 3
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application requested to close socket for Peer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->requestClose()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v1, "Connection is already closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method forceClose()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x800

    .line 4
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 5
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has been force closed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    return-object v0
.end method

.method initiateServiceconnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 2
    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    .line 3
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 4
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/accessory/SASocket;->startSocketHandler(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    iget-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    new-instance p4, Lcom/samsung/android/sdk/accessory/SASocket$1;

    invoke-direct {p4, p0, p2, p1}, Lcom/samsung/android/sdk/accessory/SASocket$1;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isConnected()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public abstract onError(ILjava/lang/String;I)V
.end method

.method public abstract onReceive(I[B)V
.end method

.method protected abstract onServiceConnectionLost(I)V
.end method

.method public declared-synchronized secureSend(I[B)V
    .locals 9

    monitor-enter p0

    if-gez p1, :cond_0

    .line 1
    :try_start_0
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "Send Failed : there is no service channel at the index"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    if-eqz p2, :cond_4

    .line 4
    array-length v0, p2

    if-eqz v0, :cond_3

    .line 5
    array-length v0, p2

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result v2

    if-gt v0, v2, :cond_2

    .line 6
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->getDataKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v8, Lcom/samsung/android/sdk/accessory/SAFragmenter;

    invoke-direct {v8, v1, v0}, Lcom/samsung/android/sdk/accessory/SAFragmenter;-><init>(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxHeaderLength()I

    move-result v3

    .line 10
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxFooterLength()I

    move-result v4

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getSsduSize()I

    move-result v5

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getEncryptionPaddingLength()I

    move-result v6

    move-object v2, v8

    move-object v7, p2

    .line 13
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->configure(IIII[B)V

    .line 14
    :goto_0
    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->nextFragment()Lcom/samsung/android/sdk/accessory/SAFragment;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    .line 15
    invoke-direct {p0, p1, v8, v1, p2}, Lcom/samsung/android/sdk/accessory/SASocket;->sendInternal(ILcom/samsung/android/sdk/accessory/SAFragmenter;ZI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 16
    :cond_1
    :try_start_3
    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    :try_start_4
    sget-object p2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v0, "Send Blob failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    :goto_1
    :try_start_5
    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V

    throw p1

    .line 21
    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureSend:Data too long:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Secure send:Data Too long! size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Max allowed Size:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 23
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". check SAPeerAgent.getMaxAllowedDataSize()"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "SecureSend: data length is 0"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalaid data length 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_4
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "secureSend: data is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid data to send:NULL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Secure Send failed. Socket already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public send(I[B)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/accessory/SASocket;->sendData(I[BI)V

    return-void
.end method

.method public sendCompressed(I[B)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/accessory/SASocket;->sendData(I[BI)V

    return-void
.end method

.method public sendUncompressed(I[B)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/accessory/SASocket;->sendData(I[BI)V

    return-void
.end method
