.class public abstract Lf/a0;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lf/u;Lg/f;)Lf/a0;
    .locals 1
    .param p0    # Lf/u;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    new-instance v0, Lf/a0$a;

    invoke-direct {v0, p0, p1}, Lf/a0$a;-><init>(Lf/u;Lg/f;)V

    return-object v0
.end method

.method public static create(Lf/u;Ljava/io/File;)Lf/a0;
    .locals 1
    .param p0    # Lf/u;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 12
    new-instance v0, Lf/a0$c;

    invoke-direct {v0, p0, p1}, Lf/a0$c;-><init>(Lf/u;Ljava/io/File;)V

    return-object v0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "content == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Lf/u;Ljava/lang/String;)Lf/a0;
    .locals 2
    .param p0    # Lf/u;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lf/f0/c;->i:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/u;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lf/f0/c;->i:Ljava/nio/charset/Charset;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lf/u;->c(Ljava/lang/String;)Lf/u;

    move-result-object p0

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lf/a0;->create(Lf/u;[B)Lf/a0;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lf/u;[B)Lf/a0;
    .locals 2
    .param p0    # Lf/u;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lf/a0;->create(Lf/u;[BII)Lf/a0;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lf/u;[BII)Lf/a0;
    .locals 7
    .param p0    # Lf/u;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 9
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lf/f0/c;->e(JJJ)V

    .line 10
    new-instance v0, Lf/a0$b;

    invoke-direct {v0, p0, p3, p1, p2}, Lf/a0$b;-><init>(Lf/u;I[BI)V

    return-object v0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "content == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract contentLength()J
.end method

.method public abstract contentType()Lf/u;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract writeTo(Lg/d;)V
.end method
