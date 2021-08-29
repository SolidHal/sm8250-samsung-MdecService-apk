.class public Lc/f/b/a/k;
.super Ljava/io/FilterInputStream;
.source "UUDecoderStream.java"


# instance fields
.field private b:[B

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Lc/f/b/a/e;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x2d

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lc/f/b/a/k;->b:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc/f/b/a/k;->c:I

    .line 4
    iput v0, p0, Lc/f/b/a/k;->d:I

    .line 5
    iput-boolean v0, p0, Lc/f/b/a/k;->e:Z

    .line 6
    iput-boolean v0, p0, Lc/f/b/a/k;->f:Z

    .line 7
    new-instance v1, Lc/f/b/a/e;

    invoke-direct {v1, p1}, Lc/f/b/a/e;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lc/f/b/a/k;->g:Lc/f/b/a/e;

    const-string p1, "mail.mime.uudecode.ignoreerrors"

    .line 8
    invoke-static {p1, v0}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lc/f/b/a/k;->h:Z

    const-string p1, "mail.mime.uudecode.ignoremissingbeginend"

    .line 9
    invoke-static {p1, v0}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lc/f/b/a/k;->i:Z

    return-void
.end method

.method private f()Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Lc/f/b/a/k;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iput v1, p0, Lc/f/b/a/k;->c:I

    .line 3
    :goto_0
    iget-object v0, p0, Lc/f/b/a/k;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lc/f/b/a/k;->j:Ljava/lang/String;

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lc/f/b/a/k;->g:Lc/f/b/a/e;

    invoke-virtual {v0}, Lc/f/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 6
    iget-boolean v0, p0, Lc/f/b/a/k;->i:Z

    if-eqz v0, :cond_2

    .line 7
    iput-boolean v2, p0, Lc/f/b/a/k;->f:Z

    return v1

    .line 8
    :cond_2
    new-instance v0, Lc/f/b/a/c;

    const-string v1, "UUDecoder: Missing end at EOF"

    invoke-direct {v0, v1}, Lc/f/b/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v3, "end"

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    iput-boolean v2, p0, Lc/f/b/a/k;->f:Z

    return v1

    .line 11
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ge v4, v5, :cond_7

    .line 13
    iget-boolean v0, p0, Lc/f/b/a/k;->h:Z

    if-eqz v0, :cond_6

    goto :goto_0

    .line 14
    :cond_6
    new-instance v0, Lc/f/b/a/c;

    const-string v1, "UUDecoder: Buffer format error"

    invoke-direct {v0, v1}, Lc/f/b/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    add-int/lit8 v4, v4, -0x20

    and-int/lit8 v4, v4, 0x3f

    if-nez v4, :cond_b

    .line 15
    iget-object v0, p0, Lc/f/b/a/k;->g:Lc/f/b/a/e;

    invoke-virtual {v0}, Lc/f/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 17
    :cond_8
    iget-boolean v0, p0, Lc/f/b/a/k;->i:Z

    if-eqz v0, :cond_a

    .line 18
    :cond_9
    iput-boolean v2, p0, Lc/f/b/a/k;->f:Z

    return v1

    .line 19
    :cond_a
    new-instance v0, Lc/f/b/a/c;

    const-string v1, "UUDecoder: Missing End after count 0 line"

    invoke-direct {v0, v1}, Lc/f/b/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    mul-int/lit8 v3, v4, 0x8

    add-int/lit8 v3, v3, 0x5

    .line 20
    div-int/lit8 v3, v3, 0x6

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v2

    if-ge v6, v3, :cond_d

    .line 22
    iget-boolean v0, p0, Lc/f/b/a/k;->h:Z

    if-eqz v0, :cond_c

    goto :goto_0

    .line 23
    :cond_c
    new-instance v0, Lc/f/b/a/c;

    const-string v1, "UUDecoder: Short buffer error"

    invoke-direct {v0, v1}, Lc/f/b/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move v1, v2

    .line 24
    :cond_e
    :goto_2
    iget v3, p0, Lc/f/b/a/k;->c:I

    if-ge v3, v4, :cond_10

    add-int/lit8 v3, v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v5

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    add-int/lit8 v6, v3, 0x1

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v5

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    .line 27
    iget-object v7, p0, Lc/f/b/a/k;->b:[B

    iget v8, p0, Lc/f/b/a/k;->c:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lc/f/b/a/k;->c:I

    shl-int/lit8 v1, v1, 0x2

    and-int/lit16 v1, v1, 0xfc

    ushr-int/lit8 v10, v3, 0x4

    and-int/lit8 v10, v10, 0x3

    or-int/2addr v1, v10

    int-to-byte v1, v1

    aput-byte v1, v7, v8

    if-ge v9, v4, :cond_f

    add-int/lit8 v1, v6, 0x1

    .line 28
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v5

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    .line 29
    iget-object v7, p0, Lc/f/b/a/k;->b:[B

    iget v8, p0, Lc/f/b/a/k;->c:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lc/f/b/a/k;->c:I

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v9, v6, 0x2

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, v7, v8

    move v3, v6

    goto :goto_3

    :cond_f
    move v1, v6

    .line 30
    :goto_3
    iget v6, p0, Lc/f/b/a/k;->c:I

    if-ge v6, v4, :cond_e

    add-int/lit8 v6, v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v5

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    .line 32
    iget-object v7, p0, Lc/f/b/a/k;->b:[B

    iget v8, p0, Lc/f/b/a/k;->c:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lc/f/b/a/k;->c:I

    shl-int/lit8 v3, v3, 0x6

    and-int/lit16 v3, v3, 0xc0

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v7, v8

    move v1, v6

    goto :goto_2

    :cond_10
    return v2
.end method

.method private m()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lc/f/b/a/k;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lc/f/b/a/k;->g:Lc/f/b/a/e;

    invoke-virtual {v0}, Lc/f/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    if-nez v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lc/f/b/a/k;->i:Z

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v7, p0, Lc/f/b/a/k;->e:Z

    .line 5
    iput-boolean v7, p0, Lc/f/b/a/k;->f:Z

    goto/16 :goto_2

    .line 6
    :cond_1
    new-instance v0, Lc/f/b/a/c;

    const-string v1, "UUDecoder: Missing begin"

    invoke-direct {v0, v1}, Lc/f/b/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-string v4, "begin"

    move-object v1, v0

    .line 7
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_6

    const/16 v1, 0x9

    .line 8
    :try_start_0
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    iget-boolean v2, p0, Lc/f/b/a/k;->h:Z

    if-eqz v2, :cond_5

    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_3

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_1

    .line 12
    :cond_3
    iget-boolean v1, p0, Lc/f/b/a/k;->h:Z

    if-eqz v1, :cond_4

    .line 13
    :goto_1
    iput-boolean v7, p0, Lc/f/b/a/k;->e:Z

    goto :goto_2

    .line 14
    :cond_4
    new-instance v1, Lc/f/b/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UUDecoder: Missing name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lc/f/b/a/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_5
    new-instance v0, Lc/f/b/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UUDecoder: Error in mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/f/b/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_6
    iget-boolean v1, p0, Lc/f/b/a/k;->i:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x20

    and-int/lit8 v1, v1, 0x3f

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x5

    .line 19
    div-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    if-lt v2, v1, :cond_0

    .line 21
    :cond_7
    iput-object v0, p0, Lc/f/b/a/k;->j:Ljava/lang/String;

    .line 22
    iput-boolean v7, p0, Lc/f/b/a/k;->e:Z

    :goto_2
    return-void
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

    iget v1, p0, Lc/f/b/a/k;->c:I

    iget v2, p0, Lc/f/b/a/k;->d:I

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
    iget v0, p0, Lc/f/b/a/k;->d:I

    iget v1, p0, Lc/f/b/a/k;->c:I

    if-lt v0, v1, :cond_1

    .line 2
    invoke-direct {p0}, Lc/f/b/a/k;->m()V

    .line 3
    invoke-direct {p0}, Lc/f/b/a/k;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lc/f/b/a/k;->d:I

    .line 5
    :cond_1
    iget-object v0, p0, Lc/f/b/a/k;->b:[B

    iget v1, p0, Lc/f/b/a/k;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc/f/b/a/k;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-ge v0, p3, :cond_1

    .line 6
    invoke-virtual {p0}, Lc/f/b/a/k;->read()I

    move-result v2

    if-ne v2, v1, :cond_0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_0
    add-int v1, p2, v0

    int-to-byte v2, v2

    .line 7
    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method
