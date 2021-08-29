.class public Lcom/samsung/accessory/utils/buffer/SABuffer;
.super Ljava/lang/Object;
.source "SABuffer.java"


# static fields
.field public static final ERROR_BUFFER_OVEFLOW:I = -0x2

.field public static final ERROR_BUFFER_RECYCLED:I = -0x1

.field public static final ERROR_BUFFER_UNDERFLOW:I = -0x3


# instance fields
.field private final data:[B

.field isRecycled:Z

.field private final length:I

.field private offset:I

.field private payloadLength:I


# direct methods
.method constructor <init>([BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    .line 3
    iput p2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    .line 5
    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    .line 6
    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    return-void
.end method


# virtual methods
.method public declared-synchronized extractFrom([BII)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot extract from byte[]. Buffer length exceeded! [buff offset="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; payload len="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; length to write = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; buff len = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/samsung/accessory/utils/buffer/SaBufferException;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p1}, Lcom/samsung/accessory/utils/buffer/SaBufferException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to extract from a recycled buffer!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized extractPayload()[B
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    new-array v0, v0, [B

    .line 3
    iget-object v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized extractPayloadBuffer()Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtainExact(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    iput v1, v0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object v0

    .line 6
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized extractTo(Lcom/samsung/accessory/utils/buffer/SABuffer;II)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    invoke-virtual {p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v2

    invoke-static {v0, v1, v2, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p2, p1, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    .line 5
    iget p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot extract to SABuffer. Source buffer length exceeded its length! [buff offset = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; length to extract = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; buff len = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot refer to a recycled buffer!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBuffer()[B
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBufferLength()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLength()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOffset()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPayloadLength()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRecycled()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return v0

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->recycle([B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOffset(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot refer to a recycled buffer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPayloadLength(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot refer to a recycled buffer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
