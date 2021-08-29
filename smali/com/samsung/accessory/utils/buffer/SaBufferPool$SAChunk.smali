.class Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
.super Ljava/lang/Object;
.source "SaBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/utils/buffer/SaBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SAChunk"
.end annotation


# static fields
.field private static sTotalObtainHits:I


# instance fields
.field private bufferList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field

.field private limit:I

.field private obtainHits:I

.field private recycleHits:I

.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->size:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->obtainHits:I

    .line 5
    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->recycleHits:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->bufferList:Ljava/util/LinkedList;

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->limit:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/samsung/accessory/utils/buffer/SaBufferPool$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;-><init>(I)V

    return-void
.end method

.method private getDemandFactor()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->recycleHits:I

    int-to-float v1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->obtainHits:I

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->obtainHits:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_0
    return v0
.end method

.method private getObtainRatio()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->obtainHits:I

    int-to-float v0, v0

    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->sTotalObtainHits:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static onObtained(Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->onObtained()V

    .line 2
    sget p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->sTotalObtainHits:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->sTotalObtainHits:I

    return-void
.end method


# virtual methods
.method declared-synchronized getBufferList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->bufferList:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getObtainHits()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->obtainHits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getOrCreateBufferList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->bufferList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->bufferList:Ljava/util/LinkedList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->bufferList:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getRecycleHits()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->recycleHits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSize()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getSizeLimit()F
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->access$200()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getObtainRatio()F

    move-result v2

    mul-float/2addr v1, v2

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

.method declared-synchronized onObtained()V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->obtainHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->obtainHits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onRecycled()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->recycleHits:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->recycleHits:I

    .line 2
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->bufferList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->limit:I

    if-ne v0, v2, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getDemandFactor()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v2, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    monitor-exit p0

    return v0

    .line 5
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->limit:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->limit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
