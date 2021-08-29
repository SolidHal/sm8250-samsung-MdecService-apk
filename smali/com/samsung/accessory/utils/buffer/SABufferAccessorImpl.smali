.class Lcom/samsung/accessory/utils/buffer/SABufferAccessorImpl;
.super Lcom/samsung/android/sdk/accessory/SABufferAccessor;
.source "SABufferAccessorImpl.java"


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x100000

.field private static final DEFAULT_CACHE_SIZE_LOW_RAM:I = 0x80000

.field private static final MAX_CHUNK_SIZE:I = 0x200000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/accessory/utils/buffer/SABufferAccessorImpl;

    invoke-direct {v0}, Lcom/samsung/accessory/utils/buffer/SABufferAccessorImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->DEFAULT:Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected clearCache(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->clearCache(I)Z

    return-void
.end method

.method protected dump()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->dump()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Bufferpool not initialized!"

    return-object v0
.end method

.method protected extractFrom(Lcom/samsung/accessory/utils/buffer/SABuffer;[BII)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/accessory/utils/buffer/SABuffer;->extractFrom([BII)V

    return-void
.end method

.method protected extractPayload(Lcom/samsung/accessory/utils/buffer/SABuffer;)[B
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->extractPayload()[B

    move-result-object p1

    return-object p1
.end method

.method protected getBuffer(Lcom/samsung/accessory/utils/buffer/SABuffer;)[B
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object p1

    return-object p1
.end method

.method protected getOffset(Lcom/samsung/accessory/utils/buffer/SABuffer;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getOffset()I

    move-result p1

    return p1
.end method

.method protected getPayloadlength(Lcom/samsung/accessory/utils/buffer/SABuffer;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getPayloadLength()I

    move-result p1

    return p1
.end method

.method protected getlength(Lcom/samsung/accessory/utils/buffer/SABuffer;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result p1

    return p1
.end method

.method protected initializePool(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isLowMemoryDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x280000

    goto :goto_0

    :cond_1
    const/high16 v0, 0x700000

    .line 3
    :goto_0
    new-instance v1, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;

    const/high16 v2, 0x200000

    const-string v3, "SaBufferPool-SDK"

    invoke-direct {v1, p1, v3, v0, v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 4
    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->initialise(Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;)V

    return-void
.end method

.method protected obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object p1

    return-object p1
.end method

.method protected obtainExact(I)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtainExact(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object p1

    return-object p1
.end method

.method protected recycle(Lcom/samsung/accessory/utils/buffer/SABuffer;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    move-result p1

    return p1
.end method

.method protected setOffset(Lcom/samsung/accessory/utils/buffer/SABuffer;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    return-void
.end method

.method protected setPayloadlength(Lcom/samsung/accessory/utils/buffer/SABuffer;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    return-void
.end method
