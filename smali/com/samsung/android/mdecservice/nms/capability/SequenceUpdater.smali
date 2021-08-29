.class public Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;
.super Ljava/lang/Object;
.source "SequenceUpdater.java"


# static fields
.field protected static final APPLY_BATCH_MAX_SIZE:I = 0x64

.field protected static final APPLY_BATCH_TIMEOUT:I = 0x3e8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mTimeout:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mOperationList:Ljava/util/ArrayList;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mOperationList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mTimeout:Z

    return p1
.end method


# virtual methods
.method public tryApplybatch()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mTimeout:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mOperationList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mTimeout:Z

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater$1;-><init>(Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public tryPut(Landroid/content/ContentProviderOperation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mOperationList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->tryApplybatch()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
