.class Lcom/samsung/accessory/utils/buffer/SaBufferPool;
.super Ljava/lang/Object;
.source "SaBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    }
.end annotation


# static fields
.field private static final BUFFER_ACCESS_LOCK:Ljava/lang/Object;

.field private static final BUFFER_CACHE_SIZE_DEFUALT:I = 0x400000

.field private static final CHUNK_LIMIT_DEFAULT:I = 0x1

.field private static final MAX_CHUNK_SIZE:I = 0x10400

.field private static final MAX_NUM_OF_BUFFER_AVAILABILITY_RETRY:I = 0x3

.field private static final MIN_CHUNK_DEMAND_FACTOR:F = 0.9f

.field private static final MIN_CHUNK_SIZE:I = 0x18

.field private static sBufferCacheSize:I

.field private static final sBufferRangeMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sCacheThresholdHigh:I

.field private static sCacheThresholdMed:I

.field private static final sChunkList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;",
            ">;"
        }
    .end annotation
.end field

.field private static sCurrentCacheSize:I

.field private static sIsInitialised:Z

.field private static sLogTag:Ljava/lang/String;

.field private static sMaxChunkSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 1
    sget v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    return v0
.end method

.method private static addCustomKeys(I)V
    .locals 4

    const/4 p0, 0x4

    new-array v0, p0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 3
    :try_start_0
    aget v3, v0, v2

    invoke-static {v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addKey(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :array_0
    .array-data 4
        0x780b
        0x800b
        0xf00b
        0x10005
    .end array-data
.end method

.method private static addKey(I)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-gt p0, v1, :cond_0

    .line 3
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 4
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    invoke-direct {v2, p0, v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;-><init>(ILcom/samsung/accessory/utils/buffer/SaBufferPool$1;)V

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    .line 6
    monitor-exit v0

    return p0

    .line 7
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static clearCache(I)Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Failed to clear cache - Bufferpool not initialised!"

    .line 2
    invoke-static {v1, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    return v2

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eq p0, v1, :cond_3

    const/16 v3, 0xa

    if-eq p0, v3, :cond_2

    const/16 v3, 0xf

    if-eq p0, v3, :cond_1

    const/16 v3, 0x28

    if-eq p0, v3, :cond_3

    const/16 v3, 0x3c

    if-eq p0, v3, :cond_2

    const/16 v3, 0x50

    if-eq p0, v3, :cond_1

    .line 4
    :try_start_0
    monitor-exit v0

    return v2

    :cond_1
    move v3, v2

    goto :goto_0

    .line 5
    :cond_2
    sget v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCacheThresholdMed:I

    goto :goto_0

    .line 6
    :cond_3
    sget v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCacheThresholdHigh:I

    :goto_0
    const/4 v4, 0x2

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClearCache["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] : Cache Size BEFORE = "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 8
    sget p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    if-gt p0, v3, :cond_4

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClearCache : Current cache size is lesser than the threshold of "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 10
    monitor-exit v0

    return v2

    .line 11
    :cond_4
    sget-object p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    :goto_1
    if-ge v2, p0, :cond_7

    .line 12
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    .line 13
    invoke-virtual {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getBufferList()Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 14
    :goto_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    sget v4, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    if-le v4, v3, :cond_5

    .line 15
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 16
    sget v5, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    array-length v4, v4

    sub-int/2addr v5, v4

    sput v5, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    goto :goto_2

    .line 17
    :cond_5
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    if-gt v1, v3, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    const/4 p0, 0x3

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClearCache : Cache Size AFTER = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 19
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static dump()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const-string v1, "Failed to dump - Bufferpool not initialised!"

    .line 2
    invoke-static {v0, v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    const-string v0, " - Bufferpool not initialised! "

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 4
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    sget-object v2, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 6
    sget-object v4, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getBufferList()Ljava/util/LinkedList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Buffer \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\' x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " = \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getSize()I

    move-result v7

    mul-int/2addr v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\" bytes [ Obtained "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getObtainHits()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " & Recycled "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getRecycleHits()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " times ]"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 11
    invoke-static {v5, v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ===> \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\" bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 14
    invoke-static {v3, v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getCeilingSize(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected static getChunk(I)Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getCurrentCacheSize()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bufferpool not initialised!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getFloorSize(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getNextBigSize(I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getNextSmallSize(I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/high16 p0, -0x80000000

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static initialise(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->createDefault(Landroid/content/Context;)Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->initialise(Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;)V

    return-void
.end method

.method public static initialise(Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;)V
    .locals 6

    .line 2
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x5

    const-string v0, "BufferPool already initialised!"

    .line 3
    invoke-static {p0, v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_9

    .line 4
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    .line 6
    iget-boolean v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mIsDefault:Z

    const/16 v2, 0x18

    const v3, 0x10400

    if-eqz v1, :cond_2

    .line 7
    const-class v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    .line 8
    iget-object p0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isLowMemoryDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x200000

    .line 9
    sput p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    goto :goto_0

    :cond_1
    const/high16 p0, 0x400000

    .line 10
    sput p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    .line 11
    :goto_0
    sput v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    goto :goto_1

    .line 12
    :cond_2
    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mMaxChunkSize:I

    if-lt v1, v2, :cond_8

    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mCacheSize:I

    iget v4, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mMaxChunkSize:I

    if-lt v1, v4, :cond_8

    .line 13
    iget-object v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mLogTag:Ljava/lang/String;

    sput-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    .line 14
    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mCacheSize:I

    sput v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    .line 15
    iget p0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mMaxChunkSize:I

    sput p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-gt p0, v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move p0, v3

    .line 16
    :goto_2
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    const/4 v4, 0x4

    div-int/2addr v1, v4

    sput v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCacheThresholdHigh:I

    .line 17
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCacheThresholdMed:I

    const/16 v1, 0x24

    move v5, v2

    :goto_3
    if-gt v5, p0, :cond_6

    if-gt v5, p0, :cond_4

    .line 18
    invoke-static {v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addKey(I)Z

    :cond_4
    if-eq v5, v2, :cond_5

    if-gt v1, p0, :cond_5

    .line 19
    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addKey(I)Z

    :cond_5
    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 20
    :cond_6
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addCustomKeys(I)V

    .line 21
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-le v1, v3, :cond_7

    .line 22
    sget p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addKey(I)Z

    goto :goto_4

    .line 23
    :cond_7
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addKey(I)Z

    :goto_4
    const/4 p0, 0x1

    .line 24
    sput-boolean p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sIsInitialised:Z

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BufferPool[v1.0.2] initialised with capacity "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    const/high16 v2, 0x100000

    div-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MB"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 26
    monitor-exit v0

    return-void

    .line 27
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialise the Bufferpool! [Cache size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mCacheSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; Max chunk size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mMaxChunkSize:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 29
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to initialise the Bufferpool!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isInitialised()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sIsInitialised:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isLowMemoryDevice(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const/4 p0, 0x5

    const-string v1, "isLowMemoryDevice(): ActivityManager is null!"

    .line 2
    invoke-static {p0, v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    return v0

    .line 3
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    const/16 v1, 0x80

    if-ge p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static log(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2
    :cond_1
    sget-object p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_2
    sget-object p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_3
    sget-object p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_4
    sget-object p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(IZ)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Bufferpool not initialised!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static obtain(IZ)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 6

    .line 4
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-le p0, v1, :cond_0

    const/4 p1, 0x5

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' is not matching with the pool sizes! creating new..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 7
    new-instance p1, Lcom/samsung/accessory/utils/buffer/SABuffer;

    new-array v1, p0, [B

    invoke-direct {p1, v1, p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;-><init>([BI)V

    monitor-exit v0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    move v1, p0

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getCeilingSize(I)I

    move-result v1

    .line 9
    :goto_0
    invoke-static {v1, p0, p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtainChunk(IIZ)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v3, 0x1

    move v4, v1

    :goto_1
    if-nez v2, :cond_4

    const/4 v5, 0x3

    if-gt v3, v5, :cond_4

    if-eqz p1, :cond_2

    .line 10
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getCeilingSize(I)I

    move-result v5

    if-eq p0, v5, :cond_2

    .line 11
    invoke-static {v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getNextSmallSize(I)I

    move-result v4

    goto :goto_2

    .line 12
    :cond_2
    invoke-static {v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getNextBigSize(I)I

    move-result v4

    :goto_2
    const/16 v5, 0x18

    if-lt v4, v5, :cond_4

    const v5, 0x10400

    if-gt v4, v5, :cond_4

    .line 13
    sget v5, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-le v4, v5, :cond_3

    goto :goto_3

    .line 14
    :cond_3
    invoke-static {v4, p0, p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtainChunk(IIZ)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-nez v2, :cond_5

    .line 15
    new-instance v2, Lcom/samsung/accessory/utils/buffer/SABuffer;

    new-array p1, v1, [B

    invoke-direct {v2, p1, p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;-><init>([BI)V

    .line 16
    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getChunk(I)Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 17
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->onObtained(Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;)V

    .line 18
    :cond_5
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static obtainChunk(IIZ)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getChunk(I)Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v2

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getBufferList()Ljava/util/LinkedList;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 5
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_4

    if-ne p0, p1, :cond_2

    .line 6
    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    array-length p0, p0

    if-ne p0, p1, :cond_3

    .line 7
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    array-length p0, p0

    if-ne p0, p1, :cond_3

    .line 9
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_0

    :cond_3
    move-object p0, v2

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :goto_0
    if-eqz p0, :cond_5

    .line 11
    sget p2, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    array-length v2, p0

    sub-int/2addr p2, v2

    sput p2, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    .line 12
    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->onObtained(Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;)V

    .line 13
    new-instance v2, Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-direct {v2, p0, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;-><init>([BI)V

    .line 14
    :cond_5
    monitor-exit v0

    return-object v2

    .line 15
    :cond_6
    :goto_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static obtainExact(I)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(IZ)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Bufferpool not initialised!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static recycle([B)Z
    .locals 9

    .line 1
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Failed to recycle buffer - Bufferpool not initialised!"

    .line 2
    invoke-static {v1, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "Cannot recycle null buffer!"

    .line 3
    invoke-static {v1, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    return v2

    .line 4
    :cond_1
    array-length v0, p0

    .line 5
    sget-object v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v3

    const/16 v4, 0x18

    if-lt v0, v4, :cond_8

    .line 6
    :try_start_0
    sget v4, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-le v0, v4, :cond_2

    goto/16 :goto_1

    .line 7
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getFloorSize(I)I

    move-result v3

    .line 9
    sget-object v4, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 10
    :try_start_1
    invoke-static {v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getChunk(I)Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 11
    invoke-virtual {v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getOrCreateBufferList()Ljava/util/LinkedList;

    move-result-object v6

    .line 12
    invoke-virtual {v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->onRecycled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 13
    monitor-exit v4

    return v2

    .line 14
    :cond_3
    sget v7, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    add-int/2addr v7, v0

    sget v8, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    if-le v7, v8, :cond_5

    .line 15
    invoke-virtual {v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getSizeLimit()F

    move-result v5

    float-to-int v5, v5

    div-int/2addr v5, v3

    .line 16
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-lt v7, v5, :cond_4

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot recycle buffer \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\', Buffer chunk count("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") exceeded the limit"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {v1, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 20
    monitor-exit v4

    return v2

    .line 21
    :cond_4
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->stabilizePool()I

    .line 22
    sget v5, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    add-int/2addr v5, v0

    sget v7, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    if-le v5, v7, :cond_5

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot recycle buffer \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\', Buffer cache limit exceeded!!!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 24
    monitor-exit v4

    return v2

    :cond_5
    if-ne v3, v0, :cond_6

    .line 25
    invoke-virtual {v6, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 26
    :cond_6
    invoke-virtual {v6, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 27
    :goto_0
    sget p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    add-int/2addr p0, v0

    sput p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    const/4 p0, 0x1

    .line 28
    monitor-exit v4

    return p0

    .line 29
    :cond_7
    monitor-exit v4

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 30
    :cond_8
    :goto_1
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot recycle buffer \'"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\', Non-matcing size!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 31
    monitor-exit v3

    return v2

    :catchall_1
    move-exception p0

    .line 32
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static stabilizePool()I
    .locals 10

    .line 1
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    .line 3
    sget-object v2, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 4
    sget-object v5, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    if-eqz v5, :cond_2

    .line 5
    invoke-virtual {v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getSizeLimit()F

    move-result v6

    invoke-virtual {v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getSize()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    .line 6
    invoke-virtual {v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getBufferList()Ljava/util/LinkedList;

    move-result-object v5

    if-nez v5, :cond_0

    move v7, v3

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v7

    :cond_1
    :goto_1
    if-le v7, v6, :cond_2

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 9
    sget v9, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    array-length v8, v8

    sub-int/2addr v9, v8

    sput v9, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pool Stabilized; Cache size reduced from  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 11
    sget v2, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static testClearCache(I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->clearCache(I)Z

    move-result p0

    return p0
.end method

.method public static wrapPayload(II[BI)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 2

    .line 7
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int v0, p1, p3

    .line 8
    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p3}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 11
    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v1

    invoke-static {p2, p0, v1, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bufferpool not initialised!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static wrapPayload(Lcom/samsung/accessory/utils/buffer/SABuffer;I)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 5

    .line 25
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 28
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 29
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v4

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    return-object v0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bufferpool not initialised!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static wrapPayload(Lcom/samsung/accessory/utils/buffer/SABuffer;II)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 4

    .line 32
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object p2

    .line 34
    invoke-virtual {p2, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 36
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v3

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    return-object p2

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bufferpool not initialised!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static wrapPayload([BI)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    array-length v0, p0

    add-int/2addr v0, p1

    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 4
    array-length v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v2

    array-length v3, p0

    invoke-static {p0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bufferpool not initialised!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static wrapPayload([BII)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 3

    .line 13
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    array-length v0, p0

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 16
    array-length v0, p0

    invoke-virtual {p2, v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p2}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v1

    array-length v2, p0

    invoke-static {p0, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bufferpool not initialised!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static wrapPayload([BIIII)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 1

    .line 19
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int v0, p2, p3

    add-int/2addr v0, p4

    .line 20
    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object p4

    .line 21
    invoke-virtual {p4, p3}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 22
    invoke-virtual {p4, p2}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 23
    invoke-virtual {p4}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v0

    invoke-static {p0, p1, v0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p4

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bufferpool not initialised!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static wrapPayloadInPlace([BIIII)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ge p1, p3, :cond_1

    add-int v0, p1, p2

    sub-int v1, p3, p1

    .line 2
    array-length v2, p0

    add-int v3, v0, v1

    if-lt v2, v3, :cond_3

    const/4 v2, 0x2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shifting data \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\' positions to wrap in place..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    :goto_0
    if-lt v0, p1, :cond_0

    add-int v2, v0, v1

    .line 4
    aget-byte v3, p0, v0

    aput-byte v3, p0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move p1, p3

    goto :goto_2

    .line 5
    :cond_1
    array-length v0, p0

    add-int v1, p1, p2

    add-int/2addr v1, p4

    if-ge v0, v1, :cond_3

    .line 6
    array-length v0, p0

    sub-int/2addr v1, v0

    sub-int v0, p1, v1

    if-ltz v0, :cond_3

    if-lt v0, p3, :cond_3

    move p1, v0

    :goto_1
    add-int v2, v0, p2

    if-ge p1, v2, :cond_2

    add-int v2, p1, v1

    .line 7
    aget-byte v2, p0, v2

    aput-byte v2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v0

    .line 8
    :cond_3
    :goto_2
    new-instance v0, Lcom/samsung/accessory/utils/buffer/SABuffer;

    add-int/2addr p3, p2

    add-int/2addr p3, p4

    invoke-direct {v0, p0, p3}, Lcom/samsung/accessory/utils/buffer/SABuffer;-><init>([BI)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 10
    invoke-virtual {v0, p2}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    return-object v0

    .line 11
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bufferpool not initialised!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
