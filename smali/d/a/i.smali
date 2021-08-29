.class public Ld/a/i;
.super Ljava/lang/Object;
.source "MimeType.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ld/a/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Ld/a/i;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static b(C)Z
    .locals 1

    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const-string v0, "()<>@,;:/[]?=\\\""

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3
    invoke-static {v3}, Ld/a/i;->b(C)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x3b

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "Unable to find a sub type."

    if-gez v0, :cond_1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ld/a/k;

    invoke-direct {p1, v2}, Ld/a/k;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-gez v0, :cond_3

    if-gez v1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance p1, Ld/a/k;

    invoke-direct {p1, v2}, Ld/a/k;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v3, 0x0

    if-ltz v0, :cond_4

    if-gez v1, :cond_4

    .line 5
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ld/a/i;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld/a/i;->c:Ljava/lang/String;

    .line 9
    new-instance p1, Ld/a/j;

    invoke-direct {p1}, Ld/a/j;-><init>()V

    iput-object p1, p0, Ld/a/i;->d:Ld/a/j;

    goto :goto_2

    :cond_4
    if-ge v0, v1, :cond_7

    .line 10
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ld/a/i;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 12
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/a/i;->c:Ljava/lang/String;

    .line 14
    new-instance v0, Ld/a/j;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ld/a/j;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ld/a/i;->d:Ld/a/j;

    .line 15
    :goto_2
    iget-object p1, p0, Ld/a/i;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Ld/a/i;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, Ld/a/i;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Ld/a/i;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 17
    :cond_5
    new-instance p1, Ld/a/k;

    const-string v0, "Sub type is invalid."

    invoke-direct {p1, v0}, Ld/a/k;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_6
    new-instance p1, Ld/a/k;

    const-string v0, "Primary type is invalid."

    invoke-direct {p1, v0}, Ld/a/k;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_7
    new-instance p1, Ld/a/k;

    invoke-direct {p1, v2}, Ld/a/k;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ld/a/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/a/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ld/a/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ld/a/k; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ld/a/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/a/i;->d:Ld/a/j;

    invoke-virtual {v1}, Ld/a/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/a/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/io/ObjectOutput;->flush()V

    return-void
.end method
