.class Lcom/samsung/android/sdk/accessory/SAFragmenter;
.super Ljava/lang/Object;
.source "SAFragmenter.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sFragmenters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/samsung/android/sdk/accessory/SAFragmenter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAPDU:[B

.field private mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

.field private mMaxFooterLen:I

.field private mMaxFragmentSize:I

.field private mMaxHeaderLen:I

.field private mMaxPaddingLen:I

.field mMyKey:Ljava/lang/Object;

.field private mTotSent:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SA_SDK]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/sdk/accessory/SAFragmenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->sFragmenters:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    .line 3
    new-instance p2, Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/accessory/SAFragment;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    return-void
.end method


# virtual methods
.method configure(IIII[B)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->sFragmenters:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxHeaderLen:I

    .line 3
    iput p2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFooterLen:I

    .line 4
    iput p4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxPaddingLen:I

    sub-int v0, p3, p4

    .line 5
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFragmentSize:I

    .line 6
    iput-object p5, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    .line 7
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->sFragmenters:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confiure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p5

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Concurrent write detected! Another write active: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getFragment()Lcom/samsung/android/sdk/accessory/SAFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    return-object v0
.end method

.method getTotalSent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    return v0
.end method

.method nextFragment()Lcom/samsung/android/sdk/accessory/SAFragment;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    if-eqz v0, :cond_4

    .line 2
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return-object v3

    .line 3
    :cond_0
    array-length v2, v0

    iget v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFragmentSize:I

    if-gt v2, v4, :cond_1

    .line 4
    array-length v4, v0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexNotFragment()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAFragment;->setIndex(I)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexFirstFragment()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAFragment;->setIndex(I)V

    goto :goto_0

    .line 7
    :cond_2
    array-length v2, v0

    sub-int/2addr v2, v1

    if-le v2, v4, :cond_3

    .line 8
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexIntermediateFragment()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAFragment;->setIndex(I)V

    goto :goto_0

    .line 9
    :cond_3
    array-length v0, v0

    sub-int v4, v0, v1

    .line 10
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexLastFragment()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAFragment;->setIndex(I)V

    .line 11
    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->getDefault()Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxHeaderLen:I

    add-int/2addr v1, v4

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxPaddingLen:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFooterLen:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 12
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxHeaderLen:I

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/accessory/utils/buffer/SABuffer;->extractFrom([BII)V

    .line 14
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->setBuffer(Lcom/samsung/accessory/utils/buffer/SABuffer;)V

    .line 15
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    .line 16
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;
    :try_end_0
    .catch Lcom/samsung/accessory/utils/buffer/SaBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 17
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAFragmenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BufferException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 18
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Send Failed! Fragmenter is already shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method shutdown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->sFragmenters:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->sFragmenters:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    return-void
.end method
