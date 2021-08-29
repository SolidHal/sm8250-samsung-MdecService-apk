.class public Lc/f/b/a/b;
.super Ljava/io/FilterInputStream;
.source "BASE64DecoderStream.java"


# static fields
.field private static final i:[C

.field private static final j:[B


# instance fields
.field private b:[B

.field private c:I

.field private d:I

.field private e:[B

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x40

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lc/f/b/a/b;->i:[C

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 2
    sput-object v0, Lc/f/b/a/b;->j:[B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    .line 3
    sget-object v2, Lc/f/b/a/b;->j:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    :goto_1
    sget-object v1, Lc/f/b/a/b;->i:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 5
    sget-object v2, Lc/f/b/a/b;->j:[B

    aget-char v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x3

    new-array p1, p1, [B

    .line 2
    iput-object p1, p0, Lc/f/b/a/b;->b:[B

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lc/f/b/a/b;->c:I

    .line 4
    iput p1, p0, Lc/f/b/a/b;->d:I

    const/16 v0, 0x1ffe

    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Lc/f/b/a/b;->e:[B

    .line 6
    iput p1, p0, Lc/f/b/a/b;->f:I

    .line 7
    iput p1, p0, Lc/f/b/a/b;->g:I

    .line 8
    iput-boolean p1, p0, Lc/f/b/a/b;->h:Z

    const-string v0, "mail.mime.base64.ignoreerrors"

    .line 9
    invoke-static {v0, p1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lc/f/b/a/b;->h:Z

    return-void
.end method

.method private f([BII)I
    .locals 9

    move v0, p2

    :goto_0
    const/4 v1, 0x3

    if-lt p3, v1, :cond_10

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    const/4 v4, 0x4

    if-ge v2, v4, :cond_f

    .line 1
    invoke-direct {p0}, Lc/f/b/a/b;->m()I

    move-result v5

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    if-ne v5, v6, :cond_0

    goto :goto_2

    :cond_0
    shl-int/lit8 v3, v3, 0x6

    add-int/lit8 v2, v2, 0x1

    or-int/2addr v3, v5

    goto :goto_1

    :cond_1
    :goto_2
    const/4 p3, 0x2

    const/4 v8, 0x1

    if-ne v5, v7, :cond_4

    if-nez v2, :cond_2

    sub-int/2addr v0, p2

    return v0

    .line 2
    :cond_2
    iget-boolean v1, p0, Lc/f/b/a/b;->h:Z

    if-eqz v1, :cond_3

    move v1, v8

    goto :goto_4

    .line 3
    :cond_3
    new-instance p1, Lc/f/b/a/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BASE64Decoder: Error in encoded stream: needed 4 valid base64 characters but only got "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " before EOF"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Lc/f/b/a/b;->s()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/f/b/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-ge v2, p3, :cond_6

    .line 5
    iget-boolean v5, p0, Lc/f/b/a/b;->h:Z

    if-eqz v5, :cond_5

    goto :goto_3

    .line 6
    :cond_5
    new-instance p1, Lc/f/b/a/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BASE64Decoder: Error in encoded stream: needed at least 2 valid base64 characters, but only got "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " before padding character (=)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {p0}, Lc/f/b/a/b;->s()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/f/b/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    if-nez v2, :cond_7

    sub-int/2addr v0, p2

    return v0

    :cond_7
    :goto_4
    add-int/lit8 v5, v2, -0x1

    if-nez v5, :cond_8

    move v5, v8

    :cond_8
    add-int/2addr v2, v8

    shl-int/lit8 v3, v3, 0x6

    :goto_5
    if-ge v2, v4, :cond_d

    if-nez v1, :cond_c

    .line 8
    invoke-direct {p0}, Lc/f/b/a/b;->m()I

    move-result v8

    if-ne v8, v7, :cond_a

    .line 9
    iget-boolean v8, p0, Lc/f/b/a/b;->h:Z

    if-eqz v8, :cond_9

    goto :goto_6

    .line 10
    :cond_9
    new-instance p1, Lc/f/b/a/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BASE64Decoder: Error in encoded stream: hit EOF while looking for padding characters (=)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p0}, Lc/f/b/a/b;->s()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/f/b/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-eq v8, v6, :cond_c

    .line 12
    iget-boolean v8, p0, Lc/f/b/a/b;->h:Z

    if-eqz v8, :cond_b

    goto :goto_6

    .line 13
    :cond_b
    new-instance p1, Lc/f/b/a/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BASE64Decoder: Error in encoded stream: found valid base64 character after a padding character (=)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {p0}, Lc/f/b/a/b;->s()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/f/b/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_6
    shl-int/lit8 v3, v3, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_d
    shr-int/lit8 v1, v3, 0x8

    if-ne v5, p3, :cond_e

    add-int/lit8 p3, v0, 0x1

    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    .line 15
    aput-byte v2, p1, p3

    :cond_e
    shr-int/lit8 p3, v1, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    .line 16
    aput-byte p3, p1, v0

    add-int/2addr v0, v5

    sub-int/2addr v0, p2

    return v0

    :cond_f
    add-int/lit8 v1, v0, 0x2

    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    .line 17
    aput-byte v2, p1, v1

    shr-int/lit8 v1, v3, 0x8

    add-int/lit8 v2, v0, 0x1

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    .line 18
    aput-byte v3, p1, v2

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 19
    aput-byte v1, p1, v0

    add-int/lit8 p3, p3, -0x3

    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_10
    sub-int/2addr v0, p2

    return v0
.end method

.method private m()I
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lc/f/b/a/b;->f:I

    iget v1, p0, Lc/f/b/a/b;->g:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_2

    .line 2
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lc/f/b/a/b;->e:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Lc/f/b/a/b;->g:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc/f/b/a/b;->f:I

    goto :goto_0

    :catch_0
    return v2

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lc/f/b/a/b;->e:[B

    iget v1, p0, Lc/f/b/a/b;->f:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lc/f/b/a/b;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_3

    const/4 v0, -0x2

    return v0

    .line 5
    :cond_3
    sget-object v1, Lc/f/b/a/b;->j:[B

    aget-byte v0, v1, v0

    if-eq v0, v2, :cond_0

    return v0
.end method

.method private s()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lc/f/b/a/b;->f:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    const-string v2, ""

    if-lez v0, :cond_6

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", the "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " most recent characters were: \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget v3, p0, Lc/f/b/a/b;->f:I

    sub-int/2addr v3, v0

    :goto_0
    iget v0, p0, Lc/f/b/a/b;->f:I

    if-ge v3, v0, :cond_5

    .line 4
    iget-object v0, p0, Lc/f/b/a/b;->e:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    const/16 v4, 0x9

    if-eq v0, v4, :cond_4

    if-eq v0, v1, :cond_3

    const/16 v4, 0xd

    if-eq v0, v4, :cond_2

    const/16 v4, 0x20

    if-lt v0, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_1

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    return-object v2
.end method


# virtual methods
.method public available()I
    .locals 3

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lc/f/b/a/b;->c:I

    iget v2, p0, Lc/f/b/a/b;->d:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    .line 1
    iget v0, p0, Lc/f/b/a/b;->d:I

    iget v1, p0, Lc/f/b/a/b;->c:I

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lc/f/b/a/b;->b:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lc/f/b/a/b;->f([BII)I

    move-result v0

    iput v0, p0, Lc/f/b/a/b;->c:I

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_0
    iput v2, p0, Lc/f/b/a/b;->d:I

    .line 4
    :cond_1
    iget-object v0, p0, Lc/f/b/a/b;->b:[B

    iget v1, p0, Lc/f/b/a/b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc/f/b/a/b;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 5

    move v0, p2

    .line 5
    :goto_0
    iget v1, p0, Lc/f/b/a/b;->d:I

    iget v2, p0, Lc/f/b/a/b;->c:I

    if-ge v1, v2, :cond_0

    if-lez p3, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 6
    iget-object v3, p0, Lc/f/b/a/b;->b:[B

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lc/f/b/a/b;->d:I

    aget-byte v1, v3, v1

    aput-byte v1, p1, v0

    add-int/lit8 p3, p3, -0x1

    move v0, v2

    goto :goto_0

    .line 7
    :cond_0
    iget v1, p0, Lc/f/b/a/b;->d:I

    iget v2, p0, Lc/f/b/a/b;->c:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lc/f/b/a/b;->d:I

    iput v1, p0, Lc/f/b/a/b;->c:I

    .line 9
    :cond_1
    div-int/lit8 v1, p3, 0x3

    mul-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    if-lez v1, :cond_3

    .line 10
    invoke-direct {p0, p1, v0, v1}, Lc/f/b/a/b;->f([BII)I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr p3, v3

    if-eq v3, v1, :cond_3

    if-ne v0, p2, :cond_2

    return v2

    :cond_2
    sub-int/2addr v0, p2

    return v0

    :cond_3
    :goto_1
    if-lez p3, :cond_5

    .line 11
    invoke-virtual {p0}, Lc/f/b/a/b;->read()I

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v0, 0x1

    int-to-byte v1, v1

    .line 12
    aput-byte v1, p1, v0

    add-int/lit8 p3, p3, -0x1

    move v0, v3

    goto :goto_1

    :cond_5
    :goto_2
    if-ne v0, p2, :cond_6

    return v2

    :cond_6
    sub-int/2addr v0, p2

    return v0
.end method

.method public skip(J)J
    .locals 8

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    const-wide/16 v4, 0x1

    sub-long v6, p1, v4

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lc/f/b/a/b;->read()I

    move-result p1

    if-ltz p1, :cond_0

    add-long/2addr v2, v4

    move-wide p1, v6

    goto :goto_0

    :cond_0
    return-wide v2
.end method
