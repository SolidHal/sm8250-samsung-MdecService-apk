.class Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;
.super Ljava/lang/Object;
.source "SaBufferPoolConfig.java"


# static fields
.field static final VERSION:Ljava/lang/String; = "1.0.2"


# instance fields
.field mCacheSize:I

.field mContext:Landroid/content/Context;

.field mIsDefault:Z

.field mLogTag:Ljava/lang/String;

.field mMaxChunkSize:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mIsDefault:Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to configure the Pool!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mContext:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mLogTag:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mCacheSize:I

    .line 9
    iput p4, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mMaxChunkSize:I

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to configure the Pool!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static createDefault(Landroid/content/Context;)Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
