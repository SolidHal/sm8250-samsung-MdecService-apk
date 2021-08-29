.class Lcom/samsung/android/sdk/accessory/SAFragment;
.super Ljava/lang/Object;
.source "SAFragment.java"


# static fields
.field private static final DATA_INDEX_INTERMEDIATE_FRAGMENT:I = 0x1

.field private static final DATA_INDEX_NOT_FRAGMENT:I = 0x0

.field private static final DATA_LAST_FRAGMENT:I = 0x2

.field static final DATA_MODE:I = 0x1

.field private static final MSG_INDEX_FIRST_FRAGMENT:I = 0x1

.field private static final MSG_INDEX_INTERMEDIATE_FRAGMENT:I = 0x2

.field private static final MSG_INDEX_NOT_FRAGMENT:I = 0x0

.field private static final MSG_LAST_FRAGMENT:I = 0x3

.field static final MSG_MODE:I = 0x2


# instance fields
.field private mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

.field private mIndex:I

.field private mIndexFirstFragment:I

.field private mIndexIntermediateFragment:I

.field private mIndexLastFragment:I

.field private mIndexNotFragmemt:I


# direct methods
.method constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    const-string p1, "[SA_SDK]"

    const-string v0, "invalid fragment mode!"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexNotFragmemt:I

    .line 4
    iput v2, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexFirstFragment:I

    .line 5
    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexIntermediateFragment:I

    const/4 p1, 0x3

    .line 6
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexLastFragment:I

    goto :goto_0

    .line 7
    :cond_1
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexNotFragmemt:I

    .line 8
    iput v2, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexFirstFragment:I

    .line 9
    iput v2, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexIntermediateFragment:I

    .line 10
    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexLastFragment:I

    :goto_0
    return-void
.end method


# virtual methods
.method getBuffer()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndex:I

    return v0
.end method

.method getIndexFirstFragment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexFirstFragment:I

    return v0
.end method

.method getIndexIntermediateFragment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexIntermediateFragment:I

    return v0
.end method

.method getIndexLastFragment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexLastFragment:I

    return v0
.end method

.method getIndexNotFragment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndexNotFragmemt:I

    return v0
.end method

.method getOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getOffset()I

    move-result v0

    return v0
.end method

.method getPayloadLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getPayloadLength()I

    move-result v0

    return v0
.end method

.method recycleBuffer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    :cond_0
    return-void
.end method

.method setBuffer(Lcom/samsung/accessory/utils/buffer/SABuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mBuffer:Lcom/samsung/accessory/utils/buffer/SABuffer;

    return-void
.end method

.method setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAFragment;->mIndex:I

    return-void
.end method
