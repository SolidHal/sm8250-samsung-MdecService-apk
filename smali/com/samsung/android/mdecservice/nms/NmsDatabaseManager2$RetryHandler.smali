.class public Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;
.super Landroid/os/Handler;
.source "NmsDatabaseManager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RetryHandler"
.end annotation


# instance fields
.field private mDataType:Ljava/lang/String;

.field private mRequestType:Ljava/lang/String;

.field private mRetryBundleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryNumber:I

.field private mTransactionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Landroid/os/Looper;Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mTransactionId:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mRetryNumber:I

    .line 6
    iput-object p5, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mRetryBundleList:Ljava/util/ArrayList;

    .line 7
    iput-object p6, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mRequestType:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mDataType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Landroid/os/Looper;Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;-><init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Landroid/os/Looper;Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mRetryNumber:I

    return p0
.end method

.method static synthetic access$002(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mRetryNumber:I

    return p1
.end method


# virtual methods
.method public getRetryNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mRetryNumber:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->getMsgName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseMgr"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry Timer expired!! mRetryNumber = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mRetryNumber:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTransactionId = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mTransactionId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mRetryNumber:I

    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mRetryNumber:I

    if-lez v6, :cond_1

    .line 5
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mTransactionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mDataType:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mRequestType:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mRetryBundleList:Ljava/util/ArrayList;

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const-string p1, "Reach to Maximum Retry Number. Do DB Action."

    .line 7
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mDataType:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mRequestType:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$RetryHandler;->mRetryBundleList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->handleSuccessPushEventFromApp(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void
.end method
