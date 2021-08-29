.class public Ld/b/m/h;
.super Ld/b/j;
.source "MimeMultipart.java"


# instance fields
.field protected c:Ld/a/f;

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:Z


# direct methods
.method public constructor <init>(Ld/a/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ld/b/j;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ld/b/m/h;->c:Ld/a/f;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ld/b/m/h;->d:Z

    .line 4
    iput-boolean v0, p0, Ld/b/m/h;->e:Z

    .line 5
    iput-boolean v0, p0, Ld/b/m/h;->f:Z

    .line 6
    iput-boolean v0, p0, Ld/b/m/h;->g:Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Ld/b/m/h;->h:Z

    .line 8
    iput-boolean v0, p0, Ld/b/m/h;->i:Z

    .line 9
    instance-of v1, p1, Ld/b/g;

    if-eqz v1, :cond_0

    .line 10
    move-object v1, p1

    check-cast v1, Ld/b/g;

    invoke-interface {v1}, Ld/b/g;->c()Ld/b/h;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ld/b/h;->a()Ld/b/l;

    move-result-object v1

    invoke-virtual {p0, v1}, Ld/b/j;->e(Ld/b/l;)V

    .line 12
    :cond_0
    instance-of v1, p1, Ld/b/k;

    if-eqz v1, :cond_1

    .line 13
    check-cast p1, Ld/b/k;

    invoke-virtual {p0, p1}, Ld/b/j;->d(Ld/b/k;)V

    return-void

    .line 14
    :cond_1
    iput-boolean v0, p0, Ld/b/m/h;->d:Z

    .line 15
    iput-object p1, p0, Ld/b/m/h;->c:Ld/a/f;

    .line 16
    invoke-interface {p1}, Ld/a/f;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld/b/j;->b:Ljava/lang/String;

    return-void
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private j(Ljava/io/InputStream;)Ld/b/m/f;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ld/b/m/h;->h(Ljava/io/InputStream;)Ld/b/m/f;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3
    :catch_1
    throw v0
.end method

.method private static m(Ljava/io/InputStream;[BII)I
    .locals 2

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr p2, v1

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    :goto_2
    return v0
.end method

.method private n(Ljava/io/InputStream;J)V
    .locals 4

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 1
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    sub-long/2addr p2, v2

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "can\'t skip"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ld/b/a;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ld/b/m/h;->l()V

    .line 2
    invoke-super {p0, p1}, Ld/b/j;->a(Ld/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(I)Ld/b/a;
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ld/b/m/h;->l()V

    .line 2
    invoke-super {p0, p1}, Ld/b/j;->b(I)Ld/b/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ld/b/m/h;->l()V

    .line 2
    invoke-super {p0}, Ld/b/j;->c()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected g(Ljava/io/InputStream;)Ld/b/m/d;
    .locals 1

    .line 1
    new-instance v0, Ld/b/m/d;

    invoke-direct {v0, p1}, Ld/b/m/d;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected h(Ljava/io/InputStream;)Ld/b/m/f;
    .locals 1

    .line 1
    new-instance v0, Ld/b/m/f;

    invoke-direct {v0, p1}, Ld/b/m/f;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected i(Ld/b/m/d;[B)Ld/b/m/f;
    .locals 1

    .line 1
    new-instance v0, Ld/b/m/f;

    invoke-direct {v0, p1, p2}, Ld/b/m/f;-><init>(Ld/b/m/d;[B)V

    return-object v0
.end method

.method protected k()V
    .locals 2

    const-string v0, "mail.mime.multipart.ignoremissingendboundary"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ld/b/m/h;->f:Z

    const-string v0, "mail.mime.multipart.ignoremissingboundaryparameter"

    .line 2
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ld/b/m/h;->g:Z

    const-string v0, "mail.mime.multipart.ignoreexistingboundaryparameter"

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ld/b/m/h;->h:Z

    const-string v0, "mail.mime.multipart.allowempty"

    .line 4
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ld/b/m/h;->i:Z

    return-void
.end method

.method protected declared-synchronized l()V
    .locals 28

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, v1, Ld/b/m/h;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ld/b/m/h;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    iget-object v0, v1, Ld/b/m/h;->c:Ld/a/f;

    invoke-interface {v0}, Ld/a/f;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 5
    instance-of v2, v0, Ljava/io/ByteArrayInputStream;

    if-nez v2, :cond_1

    instance-of v2, v0, Ljava/io/BufferedInputStream;

    if-nez v2, :cond_1

    instance-of v2, v0, Ld/b/m/n;

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 7
    :goto_0
    :try_start_3
    nop

    instance-of v0, v2, Ld/b/m/n;

    if-eqz v0, :cond_2

    .line 8
    move-object v0, v2

    check-cast v0, Ld/b/m/n;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 9
    :goto_1
    new-instance v4, Ld/b/m/b;

    iget-object v5, v1, Ld/b/j;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Ld/b/m/b;-><init>(Ljava/lang/String;)V

    .line 10
    iget-boolean v5, v1, Ld/b/m/h;->h:Z

    if-nez v5, :cond_3

    const-string v5, "boundary"

    .line 11
    invoke-virtual {v4, v5}, Ld/b/m/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_5

    .line 13
    iget-boolean v5, v1, Ld/b/m/h;->g:Z

    if-nez v5, :cond_5

    iget-boolean v5, v1, Ld/b/m/h;->h:Z

    if-eqz v5, :cond_4

    goto :goto_3

    .line 14
    :cond_4
    new-instance v0, Ld/b/m/m;

    const-string v2, "Missing boundary parameter"

    invoke-direct {v0, v2}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 15
    :cond_5
    :goto_3
    :try_start_4
    new-instance v5, Lc/f/b/a/e;

    invoke-direct {v5, v2}, Lc/f/b/a/e;-><init>(Ljava/io/InputStream;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 16
    :cond_6
    :goto_4
    invoke-virtual {v5}, Lc/f/b/a/e;->f()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9

    const/16 v10, 0x20

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v8, :cond_f

    .line 17
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v13

    :goto_5
    if-ltz v14, :cond_8

    .line 18
    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v10, :cond_7

    if-eq v15, v9, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    :cond_8
    :goto_6
    add-int/lit8 v14, v14, 0x1

    .line 19
    invoke-virtual {v8, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_a

    .line 20
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_9

    .line 21
    :cond_9
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v11

    if-ne v14, v15, :cond_c

    .line 22
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    const-string v14, "--"

    invoke-virtual {v8, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/4 v8, 0x0

    goto :goto_9

    .line 23
    :cond_a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v11, :cond_c

    const-string v14, "--"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 24
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x4

    if-le v14, v15, :cond_b

    invoke-static {v8}, Ld/b/m/h;->f(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    goto :goto_7

    :cond_b
    move-object v4, v8

    goto :goto_9

    .line 25
    :cond_c
    :goto_7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lez v9, :cond_6

    if-nez v7, :cond_d

    :try_start_5
    const-string v7, "line.separator"

    const-string v9, "\n"

    .line 26
    invoke-static {v7, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :catch_0
    :try_start_6
    const-string v7, "\n"

    :cond_d
    :goto_8
    if-nez v6, :cond_e

    .line 27
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v11

    invoke-direct {v6, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 28
    :cond_e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    :cond_f
    :goto_9
    if-eqz v6, :cond_10

    .line 29
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    :cond_10
    if-nez v8, :cond_12

    .line 30
    iget-boolean v0, v1, Ld/b/m/h;->i:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_11

    .line 31
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 32
    :catch_1
    monitor-exit p0

    return-void

    .line 33
    :cond_11
    :try_start_8
    new-instance v0, Ld/b/m/m;

    const-string v3, "Missing start boundary"

    invoke-direct {v0, v3}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_12
    invoke-static {v4}, Lc/f/b/a/a;->b(Ljava/lang/String;)[B

    move-result-object v4

    .line 35
    array-length v6, v4

    const/16 v7, 0x100

    new-array v7, v7, [I

    move v8, v12

    :goto_a
    if-ge v8, v6, :cond_13

    .line 36
    aget-byte v14, v4, v8

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v14

    goto :goto_a

    .line 37
    :cond_13
    new-array v8, v6, [I

    move v14, v6

    :goto_b
    if-lez v14, :cond_16

    add-int/lit8 v15, v6, -0x1

    :goto_c
    if-lt v15, v14, :cond_14

    .line 38
    aget-byte v3, v4, v15

    sub-int v16, v15, v14

    aget-byte v9, v4, v16

    if-ne v3, v9, :cond_15

    add-int/lit8 v3, v15, -0x1

    .line 39
    aput v14, v8, v3

    add-int/lit8 v15, v15, -0x1

    const/16 v9, 0x9

    goto :goto_c

    :cond_14
    :goto_d
    if-lez v15, :cond_15

    add-int/lit8 v15, v15, -0x1

    .line 40
    aput v14, v8, v15

    goto :goto_d

    :cond_15
    add-int/lit8 v14, v14, -0x1

    const/16 v9, 0x9

    goto :goto_b

    :cond_16
    add-int/lit8 v3, v6, -0x1

    .line 41
    aput v13, v8, v3

    const-wide/16 v14, 0x0

    move v9, v12

    move-wide/from16 v17, v14

    :goto_e
    if-nez v9, :cond_36

    if-eqz v0, :cond_1a

    .line 42
    invoke-interface {v0}, Ld/b/m/n;->getPosition()J

    move-result-wide v14

    .line 43
    :goto_f
    invoke-virtual {v5}, Lc/f/b/a/e;->f()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_17

    goto :goto_f

    :cond_17
    if-nez v16, :cond_19

    .line 44
    iget-boolean v0, v1, Ld/b/m/h;->f:Z

    if-eqz v0, :cond_18

    .line 45
    iput-boolean v12, v1, Ld/b/m/h;->e:Z

    goto/16 :goto_22

    .line 46
    :cond_18
    new-instance v0, Ld/b/m/m;

    const-string v3, "missing multipart end boundary"

    invoke-direct {v0, v3}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const/16 v20, 0x0

    goto :goto_10

    .line 47
    :cond_1a
    invoke-virtual {v1, v2}, Ld/b/m/h;->g(Ljava/io/InputStream;)Ld/b/m/d;

    move-result-object v16

    move-object/from16 v20, v16

    .line 48
    :goto_10
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v16

    if-eqz v16, :cond_35

    if-nez v0, :cond_1b

    .line 49
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v21, v16

    goto :goto_11

    .line 50
    :cond_1b
    invoke-interface {v0}, Ld/b/m/n;->getPosition()J

    move-result-wide v17

    const/16 v21, 0x0

    .line 51
    :goto_11
    new-array v10, v6, [B

    .line 52
    new-array v13, v6, [B

    move v11, v12

    const/16 v22, 0x1

    :goto_12
    add-int/lit8 v12, v6, 0x4

    add-int/lit16 v12, v12, 0x3e8

    .line 53
    invoke-virtual {v2, v12}, Ljava/io/InputStream;->mark(I)V

    move/from16 v23, v3

    const/4 v12, 0x0

    .line 54
    invoke-static {v2, v10, v12, v6}, Ld/b/m/h;->m(Ljava/io/InputStream;[BII)I

    move-result v3

    if-ge v3, v6, :cond_1e

    .line 55
    iget-boolean v9, v1, Ld/b/m/h;->f:Z

    if-eqz v9, :cond_1d

    if-eqz v0, :cond_1c

    .line 56
    invoke-interface {v0}, Ld/b/m/n;->getPosition()J

    move-result-wide v17

    :cond_1c
    const/4 v9, 0x0

    .line 57
    iput-boolean v9, v1, Ld/b/m/h;->e:Z

    move-object/from16 v26, v4

    move-object/from16 v24, v5

    move-object/from16 v22, v10

    move-wide/from16 v4, v17

    const/4 v9, 0x1

    const/4 v12, 0x0

    goto/16 :goto_1a

    .line 58
    :cond_1d
    new-instance v0, Ld/b/m/m;

    const-string v3, "missing multipart end boundary"

    invoke-direct {v0, v3}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    move/from16 v12, v23

    :goto_13
    if-ltz v12, :cond_20

    move-object/from16 v24, v5

    .line 59
    aget-byte v5, v10, v12

    move/from16 v25, v9

    aget-byte v9, v4, v12

    if-eq v5, v9, :cond_1f

    goto :goto_14

    :cond_1f
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v5, v24

    move/from16 v9, v25

    goto :goto_13

    :cond_20
    move-object/from16 v24, v5

    move/from16 v25, v9

    :goto_14
    if-gez v12, :cond_30

    const/16 v5, 0xd

    const/16 v9, 0xa

    if-nez v22, :cond_23

    add-int/lit8 v12, v11, -0x1

    .line 60
    aget-byte v12, v13, v12

    if-eq v12, v5, :cond_21

    if-ne v12, v9, :cond_23

    :cond_21
    if-ne v12, v9, :cond_22

    const/4 v12, 0x2

    if-lt v11, v12, :cond_22

    add-int/lit8 v12, v11, -0x2

    .line 61
    aget-byte v12, v13, v12

    if-ne v12, v5, :cond_22

    const/4 v12, 0x2

    goto :goto_15

    :cond_22
    const/4 v12, 0x1

    goto :goto_15

    :cond_23
    const/4 v12, 0x0

    :goto_15
    if-nez v22, :cond_25

    if-lez v12, :cond_24

    goto :goto_16

    :cond_24
    move-object/from16 v26, v4

    move-object v12, v10

    move-object/from16 v4, v20

    move-object/from16 v10, v21

    goto/16 :goto_1d

    :cond_25
    :goto_16
    if-eqz v0, :cond_26

    .line 62
    invoke-interface {v0}, Ld/b/m/n;->getPosition()J

    move-result-wide v17

    move-object/from16 v22, v10

    int-to-long v9, v6

    sub-long v17, v17, v9

    int-to-long v9, v12

    sub-long v17, v17, v9

    goto :goto_17

    :cond_26
    move-object/from16 v22, v10

    .line 63
    :goto_17
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_27

    .line 64
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ne v5, v10, :cond_27

    const/4 v5, 0x1

    .line 65
    iput-boolean v5, v1, Ld/b/m/h;->e:Z

    move-object/from16 v26, v4

    move-wide/from16 v4, v17

    const/4 v9, 0x1

    goto :goto_1a

    :cond_27
    :goto_18
    const/16 v5, 0x20

    if-eq v9, v5, :cond_2f

    const/16 v10, 0x9

    if-ne v9, v10, :cond_28

    goto/16 :goto_1e

    :cond_28
    const/16 v5, 0xa

    if-ne v9, v5, :cond_29

    goto :goto_19

    :cond_29
    const/16 v10, 0xd

    if-ne v9, v10, :cond_2e

    const/4 v9, 0x1

    .line 66
    invoke-virtual {v2, v9}, Ljava/io/InputStream;->mark(I)V

    .line 67
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v9

    if-eq v9, v5, :cond_2a

    .line 68
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    :cond_2a
    :goto_19
    move-object/from16 v26, v4

    move-wide/from16 v4, v17

    move/from16 v9, v25

    :goto_1a
    if-eqz v0, :cond_2b

    .line 69
    invoke-interface {v0, v14, v15, v4, v5}, Ld/b/m/n;->f(JJ)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ld/b/m/h;->j(Ljava/io/InputStream;)Ld/b/m/f;

    move-result-object v3

    goto :goto_1c

    :cond_2b
    sub-int/2addr v11, v12

    if-lez v11, :cond_2c

    move-object/from16 v10, v21

    const/4 v12, 0x0

    .line 70
    invoke-virtual {v10, v13, v12, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1b

    :cond_2c
    move-object/from16 v10, v21

    .line 71
    :goto_1b
    iget-boolean v11, v1, Ld/b/m/h;->e:Z

    if-nez v11, :cond_2d

    if-lez v3, :cond_2d

    move-object/from16 v12, v22

    const/4 v11, 0x0

    .line 72
    invoke-virtual {v10, v12, v11, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 73
    :cond_2d
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v10, v20

    invoke-virtual {v1, v10, v3}, Ld/b/m/h;->i(Ld/b/m/d;[B)Ld/b/m/f;

    move-result-object v3

    .line 74
    :goto_1c
    invoke-super {v1, v3}, Ld/b/j;->a(Ld/b/a;)V

    move-wide/from16 v17, v4

    move/from16 v3, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v26

    const/16 v10, 0x20

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_e

    :cond_2e
    move-object/from16 v26, v4

    move-object/from16 v4, v20

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    :goto_1d
    move-object v5, v10

    move-object v9, v12

    const/4 v12, 0x0

    goto :goto_1f

    :cond_2f
    :goto_1e
    move-object/from16 v26, v4

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v9, v22

    const/16 v10, 0xd

    .line 75
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v21

    move-object/from16 v20, v4

    move-object/from16 v22, v9

    move/from16 v9, v21

    move-object/from16 v4, v26

    move-object/from16 v21, v5

    goto/16 :goto_18

    :cond_30
    move-object/from16 v26, v4

    move-object v9, v10

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    :goto_1f
    add-int/lit8 v3, v12, 0x1

    .line 76
    aget-byte v10, v9, v12

    and-int/lit8 v10, v10, 0x7f

    aget v10, v7, v10

    sub-int/2addr v3, v10

    aget v10, v8, v12

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v10, 0x2

    if-ge v3, v10, :cond_33

    if-nez v0, :cond_31

    const/4 v3, 0x1

    if-le v11, v3, :cond_31

    add-int/lit8 v3, v11, -0x1

    const/4 v12, 0x0

    .line 77
    invoke-virtual {v5, v13, v12, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 78
    :cond_31
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    move v12, v11

    const-wide/16 v10, 0x1

    .line 79
    invoke-direct {v1, v2, v10, v11}, Ld/b/m/h;->n(Ljava/io/InputStream;J)V

    const/4 v3, 0x1

    if-lt v12, v3, :cond_32

    add-int/lit8 v11, v12, -0x1

    .line 80
    aget-byte v10, v13, v11

    const/4 v11, 0x0

    aput-byte v10, v13, v11

    .line 81
    aget-byte v10, v9, v11

    aput-byte v10, v13, v3

    const/4 v10, 0x0

    const/4 v11, 0x2

    goto :goto_21

    :cond_32
    const/4 v3, 0x0

    .line 82
    aget-byte v10, v9, v3

    aput-byte v10, v13, v3

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_21

    :cond_33
    move v12, v11

    if-lez v12, :cond_34

    if-nez v0, :cond_34

    const/4 v10, 0x0

    .line 83
    invoke-virtual {v5, v13, v10, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_20

    :cond_34
    const/4 v10, 0x0

    .line 84
    :goto_20
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    int-to-long v11, v3

    .line 85
    invoke-direct {v1, v2, v11, v12}, Ld/b/m/h;->n(Ljava/io/InputStream;J)V

    move v11, v3

    move-object/from16 v27, v13

    move-object v13, v9

    move-object/from16 v9, v27

    :goto_21
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move v12, v10

    move/from16 v22, v12

    move/from16 v3, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v26

    move-object v10, v9

    move/from16 v9, v25

    goto/16 :goto_12

    .line 86
    :cond_35
    new-instance v0, Ld/b/i;

    const-string v3, "Stream doesn\'t support mark"

    invoke-direct {v0, v3}, Ld/b/i;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 87
    :cond_36
    :goto_22
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_2
    const/4 v0, 0x1

    .line 88
    :try_start_a
    iput-boolean v0, v1, Ld/b/m/h;->d:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_23

    :catch_3
    move-exception v0

    .line 90
    :try_start_b
    new-instance v3, Ld/b/i;

    const-string v4, "IO Error"

    invoke-direct {v3, v4, v0}, Ld/b/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 91
    :goto_23
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 92
    :catch_4
    :try_start_d
    throw v0

    :catch_5
    move-exception v0

    .line 93
    new-instance v2, Ld/b/i;

    const-string v3, "No inputstream from datasource"

    invoke-direct {v2, v3, v0}, Ld/b/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
