.class Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;
.super Ljava/lang/Object;
.source "SAReassembler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAReassembler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reassembler"
.end annotation


# instance fields
.field mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

.field private mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

.field private mMaxAPDUSize:I

.field private mMode:I

.field mMyKey:Ljava/lang/Object;


# direct methods
.method private constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMode:I

    .line 4
    iput p2, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMaxAPDUSize:I

    .line 5
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMyKey:Ljava/lang/Object;

    .line 6
    new-instance p2, Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/accessory/SAFragment;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/Object;Lcom/samsung/android/sdk/accessory/SAReassembler$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;-><init>(IILjava/lang/Object;)V

    return-void
.end method

.method private extractBuffer(I[BII)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/accessory/utils/buffer/SABuffer;->extractFrom([BII)V

    .line 2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAReassembler;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMyKey:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " : payload received ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "] : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    .line 3
    invoke-virtual {p4}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getPayloadLength()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->getNonFragmentIndex()I

    move-result p2

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->getLastFragmentIndex()I

    move-result p2
    :try_end_0
    .catch Lcom/samsung/accessory/utils/buffer/SaBufferException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAReassembler;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "BufferException: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    return p1
.end method


# virtual methods
.method public assemble(I[BII)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->getNonFragmentIndex()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p1, v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getPayloadLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMode:I

    if-ne v0, v3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    .line 5
    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    .line 6
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAReassembler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgFragment received out of order! clearing legacy buffer and accepting new..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAReassembler;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Received a non-fragment in <"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMyKey:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "> while blob receive in progress...!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 8
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->getDefault()Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->extractBuffer(I[BII)I

    move-result p1

    return p1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->getFirstFragmentIndex()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 11
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMode:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    .line 13
    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    .line 14
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAReassembler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgFragment received out of order! Clearing legacy buffer and accepting new..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    if-nez v0, :cond_4

    .line 16
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->getDefault()Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMaxAPDUSize:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    .line 17
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->extractBuffer(I[BII)I

    move-result p1

    return p1

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->getIntermediateFragmentIndex()I

    move-result v0

    if-eq p1, v0, :cond_7

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->getLastFragmentIndex()I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_1

    .line 20
    :cond_6
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAReassembler;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid fragment index:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " received in <"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mMyKey:Ljava/lang/Object;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ">! "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 21
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getPayloadLength()I

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->extractBuffer(I[BII)I

    move-result p1

    return p1

    .line 23
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Reassembling failed, received invalid fragment!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extractPayload()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->extractPayload()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstFragmentIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexFirstFragment()I

    move-result v0

    return v0
.end method

.method public getIntermediateFragmentIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexIntermediateFragment()I

    move-result v0

    return v0
.end method

.method public getLastFragmentIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexLastFragment()I

    move-result v0

    return v0
.end method

.method public getNonFragmentIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexNotFragment()I

    move-result v0

    return v0
.end method

.method public shutDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAReassembler$Reassembler;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    :cond_0
    return-void
.end method
