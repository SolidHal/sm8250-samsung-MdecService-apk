.class public Lc/f/b/a/i;
.super Lc/f/b/a/j;
.source "QDecoderStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/f/b/a/j;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    return v0

    :cond_0
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lc/f/b/a/j;->b:[B

    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 3
    iget-object v0, p0, Lc/f/b/a/j;->b:[B

    const/4 v1, 0x1

    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 4
    :try_start_0
    iget-object v0, p0, Lc/f/b/a/j;->b:[B

    const/4 v1, 0x2

    const/16 v3, 0x10

    invoke-static {v0, v2, v1, v3}, Lc/f/b/a/a;->c([BIII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Lc/f/b/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QDecoder: Error in QP stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lc/f/b/a/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return v0
.end method
