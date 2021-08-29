.class public Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;
.super Ljava/lang/Object;
.source "SAFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$BackgroundExceptionHandler;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;
    }
.end annotation


# static fields
.field public static final ACTION_SAP_FILE_TRANSFER_REQUESTED:Ljava/lang/String; = "com.samsung.accessory.ftconnection"

.field public static final ERROR_CHANNEL_IO:I = 0x1

.field public static final ERROR_COMMAND_DROPPED:I = 0x3

.field public static final ERROR_CONNECTION_LOST:I = 0x5

.field public static final ERROR_FATAL:I = 0x800

.field public static final ERROR_FILE_IO:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_SUPPORTED:I = 0xc

.field public static final ERROR_PEER_AGENT_BUSY:I = 0x8

.field public static final ERROR_PEER_AGENT_NO_RESPONSE:I = 0x4

.field public static final ERROR_PEER_AGENT_REJECTED:I = 0x9

.field public static final ERROR_REQUEST_NOT_QUEUED:I = -0x1

.field public static final ERROR_SPACE_NOT_AVAILABLE:I = 0xb

.field public static final ERROR_TRANSACTION_NOT_FOUND:I = 0xd

.field private static final FILE_PROVIDER:Ljava/lang/String; = "androidx.core.content.FileProvider"

.field private static final INTERNAL_FTREQUEST_ACTION:Ljava/lang/String; = "com.samsung.accessory.ftconnection.internal"

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAFileTransfer"

.field private static mCurrentTransaction:I

.field private static mRng:Ljava/util/Random;


# instance fields
.field private final FT_CANCEL_TRANS_ID:I

.field private final FT_DEFAULT_TRANS_ID:I

.field private isTransferRequested:Z

.field private mAgentName:Ljava/lang/String;

.field private mCallingAgent:Ljava/lang/Object;

.field private mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

.field private mContext:Landroid/content/Context;

.field private mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

.field private mFTReceiver:Landroid/content/BroadcastReceiver;

.field private mFileTransferHandlerThread:Landroid/os/HandlerThread;

.field private mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

.field private mLastGeneratedSeed:J

.field mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

.field private mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

.field private mTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mRng:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLastGeneratedSeed:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    .line 4
    iput v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->FT_DEFAULT_TRANS_ID:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->FT_CANCEL_TRANS_ID:I

    .line 6
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFTReceiver:Landroid/content/BroadcastReceiver;

    .line 7
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 8
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    .line 12
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    if-nez p1, :cond_0

    .line 13
    new-instance p1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    .line 14
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->register()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "[SA_SDK]SAFileTransfer"

    const-string p2, "Agent already registered"

    .line 17
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getCallingAgentInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    .line 20
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getHandler()Landroid/os/Handler;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    .line 21
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getTransactionsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->setEventListener(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V

    .line 23
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->setLocalCallback(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;)V

    :cond_1
    return-void

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FileEventCallback parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLastGeneratedSeed:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    .line 28
    iput v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->FT_DEFAULT_TRANS_ID:I

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->FT_CANCEL_TRANS_ID:I

    .line 30
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFTReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 32
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    .line 36
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    .line 38
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->register()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "[SA_SDK]SAFileTransfer"

    const-string p2, "Agent already registered"

    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getCallingAgentInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    .line 44
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getHandler()Landroid/os/Handler;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    .line 45
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getTransactionsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->setEventListener(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V

    .line 47
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->setLocalCallback(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;)V

    :cond_1
    return-void

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FileEventCallback parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->changeFileName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->handleOnTransferCompletedErrorCode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    return p0
.end method

.method static synthetic access$502(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->handleOnCancelAllCompletedErrorCode(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->informIncomingFTRequest(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900()I
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0

    .line 1
    sput p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    return p0
.end method

.method private changeFileName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const-string v2, "File rename failed"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "[SA_SDK]SAFileTransfer"

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    const-string v6, "."

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "File successfully renamed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 11
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "File successfully renamed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    .line 13
    :cond_2
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private checkReceiveParams(Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x1

    const-string v1, "[SA_SDK]SAFileTransfer"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->checkPathPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p1, "checkReceiveParams return false, internal path"

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p1, "given path is a directory"

    .line 6
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v4, "/"

    .line 7
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v4, "."

    .line 8
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string p1, "No extension provided"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 10
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_5

    const-string p1, "extension length is 0"

    .line 11
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 12
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    const-string p1, "Directory does not exist!"

    .line 14
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string p1, "getParentFile() is null "

    .line 15
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 16
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "transactionId already exist"

    .line 17
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    move v2, v0

    :goto_2
    return v2
.end method

.method private checkSource(Ljava/lang/String;)V
    .locals 8

    const-string v0, "[SA_SDK]SAFileTransfer"

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->checkPathPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_0
    const-string v1, "."

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File has a valid extentsion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI scheme is SCHEME_FILE  File Path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "_data"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 11
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x0

    .line 13
    :try_start_1
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI ContentResolver is SCHEME_CONTENT File Path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 16
    throw p1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 17
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_3
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_5

    .line 21
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_4

    const-string p1, "File is valid !!"

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "File length is 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "File is a directory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "File doesnot exist"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong file..does not have extension"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong file path"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getContentURIAuthority()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;

    .line 6
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    const-string v4, "androidx.core.content.FileProvider"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAFileTransfer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    :cond_1
    return-object v0
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

.method private getUniqueId()I
    .locals 4

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLastGeneratedSeed:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 3
    iput-wide v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLastGeneratedSeed:J

    .line 4
    sget-object v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mRng:Ljava/util/Random;

    invoke-virtual {v2, v0, v1}, Ljava/util/Random;->setSeed(J)V

    .line 5
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mRng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method private handleOnCancelAllCompletedErrorCode(I)V
    .locals 3

    const/16 v0, 0xc

    const-string v1, "[SA_SDK]SAFileTransfer"

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelAllCompleted() error_code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "onCancelAllCompleted() -> ERROR_TRANSACTION_NOT_FOUND"

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "onCancelAllCompleted() -> ERROR_NOT_SUPPORTED"

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleOnTransferCompletedErrorCode(I)V
    .locals 3

    const/16 v0, 0x8

    const-string v1, "[SA_SDK]SAFileTransfer"

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x800

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransferCompleted() error_code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-string p1, "onTransferCompleted() -> ERROR_CONNECTION_LOST"

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string p1, "onTransferCompleted() -> ERROR_PEER_AGENT_NO_RESPONSE"

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string p1, "onTransferCompleted() -> ERROR_COMMAND_DROPPED"

    .line 4
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string p1, "onTransferCompleted() -> ERROR_FILE_IO"

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const-string p1, "onTransferCompleted() -> ERROR_CHANNEL_IO"

    .line 6
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    const-string p1, "onTransferCompleted() -> ERROR_NONE"

    .line 7
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_6
    const-string p1, "onTransferCompleted() -> ERROR_REQUEST_NOT_QUEUED"

    .line 8
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "onTransferCompleted() -> ERROR_FATAL"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "onTransferCompleted() -> ERROR_SPACE_NOT_AVAILABLE"

    .line 10
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "onTransferCompleted() -> ERROR_PEER_AGENT_REJECTED"

    .line 11
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "onTransferCompleted() -> ERROR_PEER_AGENT_BUSY"

    .line 12
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private informIncomingFTRequest(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "transId"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    const-string v0, "agentClass"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->getDefaultStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AccessoryPreferences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "peerId"

    .line 4
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class now:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[SA_SDK]SAFileTransfer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-string p2, "Target agent was cleared. Re-registering"

    .line 6
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.accessory.action.REGISTER_AGENT"

    .line 8
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    if-nez v1, :cond_2

    const-string p1, "Calling agent was cleared"

    .line 12
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Class name not matched with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getCallingAgentInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v0, "AgentInfo is NULL! Re-Registering"

    .line 16
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->register()Z

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->informIncomingFTRequest(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 19
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getEventListener()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object p1

    if-nez p1, :cond_5

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "callback is not registered for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string p1, "filePath"

    .line 21
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Informing app of incoming file transfer request on registered callback-tid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private register()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->register(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FileTransferHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    .line 3
    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$BackgroundExceptionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$BackgroundExceptionHandler;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "FileTransferHandlerThread started"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    if-eqz v0, :cond_1

    .line 9
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;Landroid/os/HandlerThread;Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    .line 11
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lb/l/a/a;->b(Landroid/content/Context;)Lb/l/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFTReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.accessory.ftconnection.internal"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb/l/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->register(Ljava/lang/String;Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;)V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$6;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cancel(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong transaction id used for cancel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const-string p1, "[SA_SDK]SAFileTransfer"

    const-string v0, "Using invalid instance of SAFileTransfer(). Please re-register."

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancelAll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    const-string v1, "[SA_SDK]SAFileTransfer"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->getDefaultStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "AccessoryPreferences"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Your service was not found. Please re-register"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    const-string v0, "Using invalid instance of SAFileTransfer. Please re-register."

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method checkPathPermission(Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPathPermission calling pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file Path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAFileTransfer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "/data/data"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    return v2
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot close as File Transfer is in progress!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    const-string v1, "[SA_SDK]SAFileTransfer"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-eqz v0, :cond_4

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopFileTransferService() called by : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v0}, Lb/l/a/a;->b(Landroid/content/Context;)Lb/l/a/a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v0}, Lb/l/a/a;->b(Landroid/content/Context;)Lb/l/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lb/l/a/a;->e(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :cond_2
    const-string v0, "Could not unregister receiver. Calling context is null"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->unregister(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_3
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    goto :goto_2

    :cond_4
    const-string v0, "Using invalid instance of SAFileTransfer(). Please re-register."

    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method isInternalPath(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/data/data"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public receive(ILjava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "[SA_SDK]SAFileTransfer"

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->checkReceiveParams(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    if-ne p1, v0, :cond_b

    .line 3
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;-><init>()V

    .line 4
    iput p1, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 5
    iput-object p2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mFilePath:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    if-nez v1, :cond_1

    .line 8
    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->getContentURIAuthority()Ljava/lang/String;

    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getcontentURISupport()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    const-string v4, "temp file deleted successfully "

    const-string v6, "temp file could not be deleted "

    const-string v7, "Cannot create the content URI !"

    if-nez p2, :cond_2

    :try_start_1
    const-string v0, "File path is wrong!!"

    .line 14
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_temp_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 17
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Temporary File Created for content URI : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v9, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v9, v3, v8}, Landroidx/core/content/FileProvider;->e(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_4

    .line 19
    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 22
    :cond_3
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 23
    :cond_4
    iput-object p2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mSource:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-virtual {v0, v1, v3, v9}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v8, v5

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v8, v5

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v8, v5

    goto :goto_3

    .line 25
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "Cannot create the File !"

    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 27
    :goto_2
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v0, "Cannot create the content URI !!"

    .line 28
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 29
    :goto_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 30
    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object v3, v5

    :goto_5
    if-nez v3, :cond_6

    if-eqz v8, :cond_6

    .line 31
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 34
    :cond_5
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_6
    if-nez v3, :cond_9

    .line 35
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isInternalPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_7

    .line 36
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Content URI needs to be implemented for receiving to internal folders. Please refer to sdk documentation for more details"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    const-string v0, "Accessory Framework doesn\'t support content URI !!"

    .line 37
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    :cond_9
    :goto_7
    if-eqz v3, :cond_a

    .line 38
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 39
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$2;

    invoke-direct {v1, p0, p1, p2, v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$2;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 40
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TransactionId: Given["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Current ["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-boolean v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    .line 42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong filepath or transaction id used"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_8
    const-string p1, "Using invalid instance of SAFileTransfer(). Please re-register."

    .line 43
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-boolean v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    return-void
.end method

.method public reject(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->checkReceiveParams(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    if-ne v1, p1, :cond_1

    .line 3
    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    invoke-direct {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;-><init>()V

    .line 4
    iput p1, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 5
    iput-object v0, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mFilePath:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$3;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong transaction id used in reject()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const-string p1, "[SA_SDK]SAFileTransfer"

    const-string v0, "Using invalid instance of SAFileTransfer(). Please re-register."

    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public send(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)I
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    const/4 v1, -0x1

    const-string v2, "[SA_SDK]SAFileTransfer"

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    if-eqz p1, :cond_9

    .line 2
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->checkSource(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->getUniqueId()I

    move-result v0

    .line 4
    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    if-nez v3, :cond_1

    .line 5
    new-instance v3, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    .line 6
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->getContentURIAuthority()Ljava/lang/String;

    move-result-object v4

    .line 10
    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getcontentURISupport()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    const-string v5, "Cannot create the content URI !"

    if-nez p2, :cond_2

    :try_start_1
    const-string v3, "File path is wrong!!"

    .line 11
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 12
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v8, v4, v7}, Landroidx/core/content/FileProvider;->e(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_3

    .line 15
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 16
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {v7, v3, v4, v8}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    .line 17
    :goto_1
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v3, "Cannot create the content URI !! "

    .line 18
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 19
    :goto_2
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 20
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v4, v6

    :goto_4
    if-nez v4, :cond_6

    .line 21
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isInternalPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_5

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "content uri needs to be implemented for sending from internal folders.Please check file-transfer sdk documentation for more details"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string v3, "FTCore version doesnot support content uri"

    .line 23
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 24
    :cond_6
    :goto_5
    new-instance v3, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    invoke-direct {v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;-><init>()V

    if-eqz v4, :cond_7

    .line 25
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_6

    :cond_7
    move-object v10, v6

    .line 26
    :goto_6
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->isFTBound()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 27
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    move-object v9, p1

    move-object v11, p2

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->sendFile(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_4
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 30
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received tx from FTCore"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput v1, v3, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 32
    iput-object p2, v3, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mFilePath:Ljava/lang/String;

    .line 33
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    .line 34
    iput v1, v3, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 35
    iput-object p2, v3, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mFilePath:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returning temporary transaction id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, v10

    move-object v7, p2

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_8
    return v0

    .line 39
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PeerAgent cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_9
    const-string p1, "Using invalid instance of SAFileTransfer(). Please re-register."

    .line 40
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
