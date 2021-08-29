.class public Lh/a/a/a/b;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 2
    new-instance v0, Lh/a/a/a/c/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lh/a/a/a/c/a;-><init>(I)V

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5
    invoke-virtual {v0}, Lh/a/a/a/c/a;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v0}, Lh/a/a/a/c/a;->close()V

    return-void

    :catchall_0
    move-exception v2

    .line 7
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    .line 8
    :try_start_4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    .line 9
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v2

    .line 10
    :try_start_7
    invoke-virtual {v0}, Lh/a/a/a/c/a;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method

.method public static a(Ljava/io/InputStream;[BII)I
    .locals 3

    if-ltz p3, :cond_2

    move v0, p3

    :goto_0
    if-lez v0, :cond_1

    sub-int v1, p3, v0

    add-int/2addr v1, p2

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr p3, v0

    return p3

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Length must not be negative: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/io/InputStream;[BII)V
    .locals 1

    .line 1
    invoke-static {p0, p1, p2, p3}, Lh/a/a/a/b;->a(Ljava/io/InputStream;[BII)I

    move-result p0

    if-ne p0, p3, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length to read: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " actual: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Ljava/io/InputStream;I)[B
    .locals 2

    .line 1
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1, p1}, Lh/a/a/a/b;->b(Ljava/io/InputStream;[BII)V

    return-object v0
.end method
