.class final Lg/n;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lg/e;


# instance fields
.field public final b:Lg/c;

.field public final c:Lg/s;

.field d:Z


# direct methods
.method constructor <init>(Lg/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/c;

    invoke-direct {v0}, Lg/c;-><init>()V

    iput-object v0, p0, Lg/n;->b:Lg/c;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lg/n;->c:Lg/s;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lg/n;->s(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public E(B)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lg/n;->f(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public F(JLg/f;)Z
    .locals 6

    .line 1
    invoke-virtual {p3}, Lg/f;->o()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lg/n;->m(JLg/f;II)Z

    move-result p1

    return p1
.end method

.method public G()J
    .locals 6

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lg/n;->A(J)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    .line 2
    invoke-virtual {p0, v3, v4}, Lg/n;->s(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3
    iget-object v3, p0, Lg/n;->b:Lg/c;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lg/c;->N(J)B

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x66

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x46

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Expected leading [0-9a-fA-F] character but was %#x"

    .line 6
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_5
    :goto_2
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0}, Lg/c;->G()J

    move-result-wide v0

    return-wide v0
.end method

.method public H(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lg/n;->b:Lg/c;

    iget-object v1, p0, Lg/n;->c:Lg/s;

    invoke-virtual {v0, v1}, Lg/c;->d(Lg/s;)J

    .line 2
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->H(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lg/n$a;

    invoke-direct {v0, p0}, Lg/n$a;-><init>(Lg/n;)V

    return-object v0
.end method

.method public a()Lg/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/n;->b:Lg/c;

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/n;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg/n;->d:Z

    .line 3
    iget-object v0, p0, Lg/n;->c:Lg/s;

    invoke-interface {v0}, Lg/s;->close()V

    .line 4
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0}, Lg/c;->f()V

    return-void
.end method

.method public f(BJJ)J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lg/n;->d:Z

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    cmp-long v0, p4, p2

    if-ltz v0, :cond_3

    :goto_0
    cmp-long v0, p2, p4

    const-wide/16 v7, -0x1

    if-gez v0, :cond_2

    .line 2
    iget-object v1, p0, Lg/n;->b:Lg/c;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lg/c;->O(BJJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lg/n;->b:Lg/c;

    iget-wide v1, v0, Lg/c;->c:J

    cmp-long v3, v1, p4

    if-gez v3, :cond_2

    .line 4
    iget-object v3, p0, Lg/n;->c:Lg/s;

    const-wide/16 v4, 0x2000

    invoke-interface {v3, v0, v4, v5}, Lg/s;->read(Lg/c;J)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v7

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "fromIndex=%s toIndex=%s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(J)Lg/f;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lg/n;->A(J)V

    .line 2
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0, p1, p2}, Lg/c;->g(J)Lg/f;

    move-result-object p1

    return-object p1
.end method

.method public h(J)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lg/n;->d:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 2
    iget-object v2, p0, Lg/n;->b:Lg/c;

    iget-wide v3, v2, Lg/c;->c:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/n;->c:Lg/s;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lg/s;->read(Lg/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_1
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0}, Lg/c;->W()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v2, v0, v1}, Lg/c;->h(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/n;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public m(JLg/f;II)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lg/n;->d:Z

    if-nez v0, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_4

    if-ltz p4, :cond_4

    if-ltz p5, :cond_4

    .line 2
    invoke-virtual {p3}, Lg/f;->o()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p5, :cond_3

    int-to-long v2, v0

    add-long/2addr v2, p1

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    .line 3
    invoke-virtual {p0, v4, v5}, Lg/n;->s(J)Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v4, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v4, v2, v3}, Lg/c;->N(J)B

    move-result v2

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Lg/f;->h(I)B

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1

    .line 5
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Lg/n;->z(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lg/n;->b:Lg/c;

    iget-object v1, p0, Lg/n;->c:Lg/s;

    invoke-virtual {v0, v1}, Lg/c;->d(Lg/s;)J

    .line 2
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0}, Lg/c;->o()[B

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lg/n;->A(J)V

    .line 2
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0}, Lg/c;->p()I

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lg/n;->d:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0}, Lg/c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/n;->c:Lg/s;

    iget-object v1, p0, Lg/n;->b:Lg/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lg/s;->read(Lg/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5

    .line 9
    iget-object v0, p0, Lg/n;->b:Lg/c;

    iget-wide v1, v0, Lg/c;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 10
    iget-object v1, p0, Lg/n;->c:Lg/s;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lg/s;->read(Lg/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public read(Lg/c;J)J
    .locals 5

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 1
    iget-boolean v2, p0, Lg/n;->d:Z

    if-nez v2, :cond_1

    .line 2
    iget-object v2, p0, Lg/n;->b:Lg/c;

    iget-wide v3, v2, Lg/c;->c:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lg/n;->c:Lg/s;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lg/s;->read(Lg/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 4
    :cond_0
    iget-object v0, p0, Lg/n;->b:Lg/c;

    iget-wide v0, v0, Lg/c;->c:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 5
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0, p1, p2, p3}, Lg/c;->read(Lg/c;J)J

    move-result-wide p1

    return-wide p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lg/n;->A(J)V

    .line 2
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0}, Lg/c;->readByte()B

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 7

    .line 1
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lg/n;->A(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->readFully([B)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lg/n;->b:Lg/c;

    iget-wide v3, v2, Lg/c;->c:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    long-to-int v3, v3

    .line 4
    invoke-virtual {v2, p1, v1, v3}, Lg/c;->Q([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    throw v0
.end method

.method public readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lg/n;->A(J)V

    .line 2
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0}, Lg/c;->readInt()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lg/n;->A(J)V

    .line 2
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0}, Lg/c;->readShort()S

    move-result v0

    return v0
.end method

.method public s(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 1
    iget-boolean v0, p0, Lg/n;->d:Z

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lg/n;->b:Lg/c;

    iget-wide v1, v0, Lg/c;->c:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    .line 3
    iget-object v1, p0, Lg/n;->c:Lg/s;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lg/s;->read(Lg/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t(J)[B
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lg/n;->A(J)V

    .line 2
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0, p1, p2}, Lg/c;->t(J)[B

    move-result-object p1

    return-object p1
.end method

.method public timeout()Lg/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/n;->c:Lg/s;

    invoke-interface {v0}, Lg/s;->timeout()Lg/t;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/n;->c:Lg/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lg/n;->A(J)V

    .line 2
    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0}, Lg/c;->x()S

    move-result v0

    return v0
.end method

.method public z(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    move-wide v5, v0

    goto :goto_0

    :cond_0
    add-long v5, p1, v3

    :goto_0
    const/16 v8, 0xa

    const-wide/16 v9, 0x0

    move-object v7, p0

    move-wide v11, v5

    .line 1
    invoke-virtual/range {v7 .. v12}, Lg/n;->f(BJJ)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-eqz v2, :cond_1

    .line 2
    iget-object p1, p0, Lg/n;->b:Lg/c;

    invoke-virtual {p1, v7, v8}, Lg/c;->V(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long v0, v5, v0

    if-gez v0, :cond_2

    .line 3
    invoke-virtual {p0, v5, v6}, Lg/n;->s(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/n;->b:Lg/c;

    sub-long v1, v5, v3

    invoke-virtual {v0, v1, v2}, Lg/c;->N(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    add-long/2addr v3, v5

    .line 4
    invoke-virtual {p0, v3, v4}, Lg/n;->s(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v0, v5, v6}, Lg/c;->N(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 5
    iget-object p1, p0, Lg/n;->b:Lg/c;

    invoke-virtual {p1, v5, v6}, Lg/c;->V(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    new-instance v6, Lg/c;

    invoke-direct {v6}, Lg/c;-><init>()V

    .line 7
    iget-object v0, p0, Lg/n;->b:Lg/c;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    invoke-virtual {v0}, Lg/c;->W()J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lg/c;->L(Lg/c;JJ)Lg/c;

    .line 8
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/n;->b:Lg/c;

    invoke-virtual {v2}, Lg/c;->W()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v6}, Lg/c;->R()Lg/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/f;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
