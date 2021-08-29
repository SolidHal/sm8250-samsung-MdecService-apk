.class public abstract Lcom/samsung/android/sdk/accessory/SAMessage;
.super Ljava/lang/Object;
.source "SAMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;,
        Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSORY_MESSAGE_DISABLED:Ljava/lang/String; = "com.samsung.accessory.action.MESSAGE_DISABLED"

.field public static final ACTION_ACCESSORY_MESSAGE_ENABLED:Ljava/lang/String; = "com.samsung.accessory.action.MESSAGE_ENABLED"

.field public static final ACTION_ACCESSORY_MESSAGE_RECEIVED:Ljava/lang/String; = "com.samsung.accessory.action.MESSAGE_RECEIVED"

.field static final ERROR_LOCAL_PEER_AGENT_NOT_SUPPORTED:I = -0x705

.field private static final ERROR_NONE:I = 0x700

.field private static final ERROR_PEER_AGENT_INVALID:I = -0x708

.field public static final ERROR_PEER_AGENT_NOT_SUPPORTED:I = 0x703

.field public static final ERROR_PEER_AGENT_NO_RESPONSE:I = 0x702

.field public static final ERROR_PEER_AGENT_UNREACHABLE:I = 0x701

.field public static final ERROR_PEER_SERVICE_NOT_SUPPORTED:I = 0x704

.field private static final ERROR_REMOTE_PEER_AGENT_NOT_SUPPORTED:I = -0x706

.field public static final ERROR_SERVICE_NOT_SUPPORTED:I = 0x705

.field private static final ERROR_TIMED_OUT:I = -0x707

.field private static final ERROR_TRANSACTION_FAILED:I = -0x709

.field public static final ERROR_UNKNOWN:I = 0x706

.field public static final EXTRA_PEER_ACCESSORY:Ljava/lang/String; = "com.samsung.accessory.device.extra.SAPeerAccessory"

.field private static final INVALID_ID:I = -0x1

.field private static final MESSAGE_KEY:Ljava/lang/String; = "_"

.field public static final MESSAGE_PRIORITY_HIGH:I = 0x3

.field public static final MESSAGE_PRIORITY_LOW:I = 0x1

.field public static final MESSAGE_PRIORITY_MEDIUM:I = 0x2

.field private static final PROVIDER_ID_ALARM:I = 0xd

.field private static final PROVIDER_ID_FMD_SERVICE:I = 0x2

.field private static final PROVIDER_ID_SA_CALL:I = 0x3

.field private static final PROVIDER_ID_WATCH_FACE:I = 0x6

.field private static final PROVIDER_ID_WIDGETS_SERVICE:I = 0xf

.field private static final TAG:Ljava/lang/String;

.field private static final WHITE_LIST_FOR_PRIORITY_HIGH:[I


# instance fields
.field private mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private mAgentId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mMexCallback:Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SA_SDK]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/sdk/accessory/SAMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->WHITE_LIST_FOR_PRIORITY_HIGH:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x6
        0xd
        0xf
    .end array-data
.end method

.method protected constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 3
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAMessage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mMexCallback:Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->getAgentHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mHandler:Landroid/os/Handler;

    .line 5
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->registerMessageInstance(Lcom/samsung/android/sdk/accessory/SAMessage;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->registerAgentAsync(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string v0, "SAMessage() - empty agent instance!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message creation failed! - invalid agent instance supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 11
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAMessage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mMexCallback:Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getAgentHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mHandler:Landroid/os/Handler;

    .line 13
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->registerMessageInstance(Lcom/samsung/android/sdk/accessory/SAMessage;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->registerAgentAsync(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 15
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string v0, "SAMessage() - empty agent instance!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message creation failed! - invalid agent instance supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/accessory/SAMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->onMessageReceived(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->onStatusReceived(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->postStatusAsynch(Landroid/os/Bundle;)V

    return-void
.end method

.method private static getMessageKey(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isPriorityHigh(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->WHITE_LIST_FOR_PRIORITY_HIGH:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private onMessageReceived(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Failed to send message status! "

    .line 1
    iget-object v3, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string v2, "onMessageReceived(): Agent info empty!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    const-class v3, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v3, "com.samsung.accessory.adapter.extra.READ_BYTES"

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "com.samsung.accessory.adapter.extra.READ_LENGHT"

    .line 5
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v4, "com.samsung.accessory.adapter.extra.READ_OFFSET"

    .line 6
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v4, "fragmentIndex"

    .line 7
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v4, "peerAgent"

    .line 8
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string v4, "transactionId"

    .line 9
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v11, :cond_a

    .line 10
    invoke-virtual {v11}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_b

    .line 11
    :cond_1
    invoke-virtual {v11}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v13

    .line 12
    invoke-virtual {v11}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    invoke-static {v0, v13, v14, v4}, Lcom/samsung/android/sdk/accessory/SAMessage;->getMessageKey(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, -0x1

    const/16 v8, 0x706

    const/4 v6, 0x2

    .line 13
    :try_start_0
    invoke-virtual {v11}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getApduSize()I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v4, v15

    move v6, v12

    move-object v8, v3

    :try_start_1
    invoke-static/range {v4 .. v10}, Lcom/samsung/android/sdk/accessory/SAReassembler;->assembleMessage(Ljava/lang/Object;III[BII)I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v0, 0x1

    if-ne v4, v0, :cond_3

    .line 14
    :try_start_2
    invoke-static {v15}, Lcom/samsung/android/sdk/accessory/SAReassembler;->getAppData(Ljava/lang/Object;)[B

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v16, 0x706

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v1, v11, v0}, Lcom/samsung/android/sdk/accessory/SAMessage;->onReceive(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v0, 0x700

    move/from16 v16, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v5, 0x2

    goto/16 :goto_a

    :catch_0
    move-exception v0

    const/4 v5, 0x2

    goto :goto_7

    :cond_3
    const/4 v0, 0x3

    if-ne v4, v0, :cond_4

    const/16 v0, 0x706

    goto :goto_1

    :cond_4
    :goto_0
    move/from16 v0, v16

    .line 16
    :goto_1
    iget-object v5, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v5, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->recycle([B)V

    if-lez v0, :cond_6

    .line 17
    :try_start_3
    invoke-direct {v1, v13, v14, v12, v0}, Lcom/samsung/android/sdk/accessory/SAMessage;->sendMessageDeliveryStatus(JII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v5, 0x2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 18
    :try_start_4
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    goto :goto_4

    :goto_2
    if-eq v4, v5, :cond_5

    .line 19
    invoke-static {v15}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    :goto_3
    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    :goto_4
    invoke-static {v15}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    goto :goto_8

    :catchall_2
    move-exception v0

    const/4 v5, 0x2

    goto :goto_5

    :catch_2
    move-exception v0

    const/4 v5, 0x2

    goto :goto_6

    :catchall_3
    move-exception v0

    move v5, v6

    :goto_5
    move/from16 v4, v16

    goto :goto_a

    :catch_3
    move-exception v0

    move v5, v6

    :goto_6
    move/from16 v4, v16

    .line 20
    :goto_7
    :try_start_5
    sget-object v6, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in onRead! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 21
    iget-object v0, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->recycle([B)V

    const/16 v3, 0x706

    .line 22
    :try_start_6
    invoke-direct {v1, v13, v14, v12, v3}, Lcom/samsung/android/sdk/accessory/SAMessage;->sendMessageDeliveryStatus(JII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eq v4, v5, :cond_7

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 23
    :try_start_7
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eq v4, v5, :cond_7

    goto :goto_4

    :cond_7
    :goto_8
    return-void

    :goto_9
    if-eq v4, v5, :cond_8

    .line 24
    invoke-static {v15}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    :cond_8
    throw v0

    :catchall_5
    move-exception v0

    .line 25
    :goto_a
    iget-object v2, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->recycle([B)V

    if-eq v4, v5, :cond_9

    .line 26
    invoke-static {v15}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    :cond_9
    throw v0

    .line 27
    :cond_a
    :goto_b
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string v2, "onMessageReceived(): PeerAgent is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onStatusReceived(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-class v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "peerAgent"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string v1, "transactionId"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "errorcode"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x700

    if-ne p1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->onSent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;II)V

    :goto_0
    return-void
.end method

.method private postStatusAsynch(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;-><init>(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private sendMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BZI)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move/from16 v2, p4

    if-eqz v0, :cond_d

    if-eqz v7, :cond_c

    .line 1
    array-length v3, v7

    if-eqz v3, :cond_b

    .line 2
    array-length v3, v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result v4

    if-gt v3, v4, :cond_a

    .line 3
    iget-object v3, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->checkMexFeature(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)I

    move-result v3

    const/16 v4, 0x700

    if-eq v3, v4, :cond_0

    const/4 v2, -0x1

    .line 5
    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/sdk/accessory/SAMessage;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;II)V

    return v2

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-lt v2, v4, :cond_1

    if-le v2, v3, :cond_2

    :cond_1
    move v2, v4

    .line 6
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->isPriorityHigh(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MEX Priority : High ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v3

    goto :goto_0

    :cond_3
    move/from16 v16, v2

    :goto_0
    const/16 v8, -0x709

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v2

    .line 9
    iget-object v4, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v3, v5}, Lcom/samsung/android/sdk/accessory/SAMessage;->getMessageKey(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz p3, :cond_4

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getEncryptionPaddingLength()I

    move-result v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    move v6, v2

    .line 11
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v14, Lcom/samsung/android/sdk/accessory/SAFragmenter;

    const/4 v2, 0x2

    invoke-direct {v14, v2, v15}, Lcom/samsung/android/sdk/accessory/SAFragmenter;-><init>(ILjava/lang/Object;)V

    .line 13
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxMsgHeaderLength()I

    move-result v3

    .line 14
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxFooterLength()I

    move-result v4

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getMxduSize()I

    move-result v5

    move-object v2, v14

    move-object/from16 v7, p2

    .line 16
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->configure(IIII[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v2, v8

    .line 17
    :goto_2
    :try_start_1
    invoke-virtual {v14}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->nextFragment()Lcom/samsung/android/sdk/accessory/SAFragment;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_8

    .line 18
    :try_start_2
    iget-object v5, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v6, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAFragment;->getBuffer()[B

    move-result-object v10

    .line 20
    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndex()I

    move-result v13

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAFragment;->getPayloadLength()I

    move-result v4

    .line 21
    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAFragment;->getOffset()I

    move-result v17
    :try_end_2
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v11, p3

    move/from16 v12, v16

    move-object/from16 v18, v14

    move v14, v4

    move-object v4, v15

    move/from16 v15, v17

    .line 22
    :try_start_3
    invoke-virtual/range {v5 .. v15}, Lcom/samsung/android/sdk/accessory/SAAdapter;->sendMessage(Ljava/lang/String;Ljava/lang/String;J[BZIIII)I

    move-result v2

    if-lez v2, :cond_5

    .line 23
    sget-object v5, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-> msg<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ">["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->getFragment()Lcom/samsung/android/sdk/accessory/SAFragment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] sent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->getTotalSent()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    :try_start_4
    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v15, v4

    move-object/from16 v14, v18

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_5
    const/16 v0, -0x708

    if-eq v2, v0, :cond_7

    const/16 v0, -0x707

    if-eq v2, v0, :cond_6

    :try_start_5
    const-string v0, "Send Message Failed - internal error!"

    goto :goto_3

    :cond_6
    const-string v0, "Send Message Failed - Message timed out!"

    goto :goto_3

    :cond_7
    const-string v0, "Send Message Failed - Peer Agent is invalid!"

    .line 27
    :goto_3
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v18, v14

    :goto_4
    move v8, v2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v18, v14

    .line 28
    :goto_5
    :try_start_6
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Send Message Failed"

    invoke-direct {v4, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 29
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catch_3
    move-exception v0

    goto :goto_8

    :cond_8
    move-object/from16 v18, v14

    .line 30
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V

    return v2

    :catch_4
    move-exception v0

    move-object/from16 v18, v14

    :goto_7
    move v8, v2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v18, v14

    goto :goto_9

    :catch_5
    move-exception v0

    move-object/from16 v18, v14

    .line 31
    :goto_8
    :try_start_8
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send Message Failed! <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    .line 33
    :goto_9
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V

    throw v0

    .line 34
    :cond_9
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string v2, "Send: agentId not retrieved!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Failed to send message - Agent info empty!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_a
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send: Data too big:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Too long..! Data size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Max allowed Size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " .Please check SAPeerAgent.getMaxAllowedDataSize()"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_b
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string v2, "Send: invalid data length 0"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid data length 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_c
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string v2, "Send: data null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid data to send!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_d
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string v2, "Send: peerAgent null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Send Message Failed! - Peer Agent is invalid!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendMessageDeliveryStatus(JII)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/SAAdapter;->sendMessageDeliveryStatus(JII)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Ack failed! "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Send Failed"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method checkMexFeature(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isActiveFrameworkMexSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x705

    return p1

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->checkFeatureEnabled(I)I

    move-result p1

    return p1
.end method

.method protected abstract onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;II)V
.end method

.method protected abstract onReceive(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)V
.end method

.method protected abstract onSent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
.end method

.method postAsynch(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;-><init>(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method registerAgent(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->unregisterMexCallback(Ljava/lang/String;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mMexCallback:Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->registerMexCallback(Ljava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V

    return-void
.end method

.method registerAgentAsync(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/accessory/SAMessage$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage$1;-><init>(Lcom/samsung/android/sdk/accessory/SAMessage;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public secureSend(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/sdk/accessory/SAMessage;->sendMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BZI)I

    move-result p1

    return p1
.end method

.method public secureSend(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BI)I
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/sdk/accessory/SAMessage;->sendMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BZI)I

    move-result p1

    return p1
.end method

.method public send(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->sendMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BZI)I

    move-result p1

    return p1
.end method

.method public send(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BI)I
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/sdk/accessory/SAMessage;->sendMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BZI)I

    move-result p1

    return p1
.end method

.method unregisterAgent()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->unregisterMexCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to un-register Mex callback! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
