.class public Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;
.super Ljava/lang/Object;
.source "EncodedStringValue.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "EncodedStringValue"


# instance fields
.field private mCharacterSet:I

.field private mData:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "utf-8"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mData:[B

    .line 8
    iput p1, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mCharacterSet:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "EncodedStringValue"

    const-string v0, "Default encoding must be supported."

    .line 9
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    iput p1, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mCharacterSet:I

    .line 3
    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mData:[B

    .line 4
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "EncodedStringValue: Text-string is null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "utf-8"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mData:[B

    const/16 p1, 0x6a

    .line 13
    iput p1, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mCharacterSet:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "EncodedStringValue"

    const-string v1, "Default encoding must be supported."

    .line 14
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x6a

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;-><init>(I[B)V

    return-void
.end method

.method public static concat([Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_1

    .line 3
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v2, v1, :cond_0

    const-string v3, ";"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static copy(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    iget v1, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mCharacterSet:I

    iget-object p0, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mData:[B

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;-><init>(I[B)V

    return-object v0
.end method

.method public static encodeStrings([Ljava/lang/String;)[Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;
    .locals 5

    .line 1
    array-length v0, p0

    if-lez v0, :cond_1

    .line 2
    new-array v1, v0, [Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    new-instance v3, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extract(Ljava/lang/String;)[Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;
    .locals 4

    const-string v0, ";"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 5
    new-instance v2, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 7
    new-array p0, p0, [Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public appendTextString([B)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mData:[B

    if-nez v0, :cond_0

    .line 2
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mData:[B

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mData:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mData:[B

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appendTextString e : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EncodedStringValue"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "appendTextString: failed when write a new Text-string"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Text-string is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mData:[B

    array-length v1, v0

    .line 3
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :try_start_0
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    iget v1, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mCharacterSet:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;-><init>(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to clone an EncodedStringValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EncodedStringValue"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v1, Ljava/lang/CloneNotSupportedException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCharacterSet()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mCharacterSet:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mCharacterSet:I

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mData:[B

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 5
    :catch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mData:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getTextString()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mData:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public setCharacterSet(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mCharacterSet:I

    return-void
.end method

.method public setTextString([B)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mData:[B

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "EncodedStringValue: Text-string is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public split(Ljava/lang/String;)[Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2
    array-length v0, p1

    new-array v1, v0, [Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    :try_start_0
    new-instance v3, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    iget v4, p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->mCharacterSet:I

    aget-object v5, p1, v2

    .line 4
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;-><init>(I[B)V

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v1
.end method
