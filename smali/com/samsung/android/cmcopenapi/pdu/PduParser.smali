.class public Lcom/samsung/android/cmcopenapi/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mEnableMmsServerTime:Z = true

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/samsung/android/cmcopenapi/pdu/PduBody;

.field private mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

.field private final mParseContentDisposition:Z

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mBody:Lcom/samsung/android/cmcopenapi/pdu/PduBody;

    .line 5
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mParseContentDisposition:Z

    const-string v0, "server"

    .line 7
    invoke-static {v0, p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->isServerTime(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mEnableMmsServerTime:Z

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mBody:Lcom/samsung/android/cmcopenapi/pdu/PduBody;

    .line 12
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 13
    iput-boolean p2, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mParseContentDisposition:Z

    const-string p1, "server"

    const/4 p2, 0x1

    .line 14
    invoke-static {p1, p2}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->isServerTime(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mEnableMmsServerTime:Z

    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x8c

    .line 1
    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    const/16 v2, 0x8d

    .line 2
    invoke-virtual {p0, v2}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getOctet(I)I

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    const/16 v2, 0x9b

    const/16 v3, 0x95

    const/16 v4, 0x84

    const/16 v5, 0x97

    const/16 v6, 0x8b

    const/16 v7, 0x89

    const/16 v8, 0x85

    const-wide/16 v9, -0x1

    const/16 v11, 0x98

    packed-switch v1, :pswitch_data_0

    return v0

    .line 3
    :pswitch_0
    invoke-virtual {p0, v8}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v3

    cmp-long v1, v9, v3

    if-nez v1, :cond_2

    return v0

    .line 4
    :cond_2
    invoke-virtual {p0, v7}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    .line 5
    :cond_3
    invoke-virtual {p0, v6}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_4

    return v0

    .line 6
    :cond_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 7
    :cond_5
    invoke-virtual {p0, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object p0

    if-nez p0, :cond_15

    return v0

    .line 8
    :pswitch_1
    invoke-virtual {p0, v7}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v1

    if-nez v1, :cond_6

    return v0

    .line 9
    :cond_6
    invoke-virtual {p0, v6}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_7

    return v0

    .line 10
    :cond_7
    invoke-virtual {p0, v2}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 11
    :cond_8
    invoke-virtual {p0, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object p0

    if-nez p0, :cond_15

    return v0

    .line 12
    :pswitch_2
    invoke-virtual {p0, v8}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-nez v1, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0, v6}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0, v3}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object p0

    if-nez p0, :cond_15

    return v0

    .line 16
    :pswitch_3
    invoke-virtual {p0, v11}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    if-nez p0, :cond_15

    return v0

    .line 17
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_c

    return v0

    .line 18
    :cond_c
    invoke-virtual {p0, v8}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v1

    cmp-long p0, v9, v1

    if-nez p0, :cond_15

    return v0

    .line 19
    :pswitch_5
    invoke-virtual {p0, v3}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    if-nez v1, :cond_d

    return v0

    .line 20
    :cond_d
    invoke-virtual {p0, v11}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    if-nez p0, :cond_15

    return v0

    :pswitch_6
    const/16 v1, 0x83

    .line 21
    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_e

    return v0

    :cond_e
    const/16 v1, 0x88

    .line 22
    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-nez v1, :cond_f

    return v0

    :cond_f
    const/16 v1, 0x8a

    .line 23
    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_10

    return v0

    :cond_10
    const/16 v1, 0x8e

    .line 24
    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-nez v1, :cond_11

    return v0

    .line 25
    :cond_11
    invoke-virtual {p0, v11}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    if-nez p0, :cond_15

    return v0

    :pswitch_7
    const/16 v1, 0x92

    .line 26
    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    if-nez v1, :cond_12

    return v0

    .line 27
    :cond_12
    invoke-virtual {p0, v11}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    if-nez p0, :cond_15

    return v0

    .line 28
    :pswitch_8
    invoke-virtual {p0, v4}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_13

    return v0

    .line 29
    :cond_13
    invoke-virtual {p0, v7}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v1

    if-nez v1, :cond_14

    return v0

    .line 30
    :cond_14
    invoke-virtual {p0, v11}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    if-nez p0, :cond_15

    return v0

    :cond_15
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/samsung/android/cmcopenapi/pdu/PduPart;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mTypeParam:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mStartParam:[B

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mStartParam:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->getContentId()[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    sget-object v0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mStartParam:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-ne v1, p0, :cond_1

    return v2

    :cond_1
    return v1

    .line 5
    :cond_2
    sget-object v0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mTypeParam:[B

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->getContentType()[B

    move-result-object p0

    if-eqz p0, :cond_3

    .line 7
    sget-object v0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mTypeParam:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-ne v1, p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 3
    invoke-static {v1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 7
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-lez p0, :cond_3

    .line 9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isServerTime(Ljava/lang/String;Z)Z
    .locals 1

    if-nez p0, :cond_0

    return p1

    :cond_0
    const-string v0, "phone"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string v0, "server"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return p1
.end method

.method protected static isText(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    :cond_1
    return v0

    :cond_2
    const/16 v1, 0x9

    if-eq p0, v1, :cond_3

    const/16 v1, 0xa

    if-eq p0, v1, :cond_3

    const/16 v1, 0xd

    if-eq p0, v1, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    return v0
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x21

    if-lt p0, v1, :cond_1

    const/16 v1, 0x7e

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x22

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2f

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7b

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7d

    if-eq p0, v1, :cond_1

    const/16 v1, 0x28

    if-eq p0, v1, :cond_1

    const/16 v1, 0x29

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x20

    const/16 v3, 0x7f

    const/4 v4, 0x0

    if-ge v1, v2, :cond_4

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 6
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 7
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 8
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v0, v0, 0xff

    const-string v6, "PduParser"

    if-lt v0, v2, :cond_0

    if-gt v0, v3, :cond_0

    .line 9
    invoke-static {p0, v4}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    if-le v0, v3, :cond_3

    .line 10
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 11
    sget-object v2, Lcom/samsung/android/cmcopenapi/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 12
    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 14
    invoke-static {p0, v4}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 15
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    sub-int/2addr v5, v2

    sub-int/2addr v1, v5

    if-lez v1, :cond_2

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    :cond_2
    if-gez v1, :cond_6

    const-string p0, "Corrupt MMS message"

    .line 17
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-object p0, Lcom/samsung/android/cmcopenapi/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "Corrupt content-type"

    .line 19
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-object p0, Lcom/samsung/android/cmcopenapi/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, "parseValueLength Exception!"

    .line 21
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-gt v1, v3, :cond_5

    .line 22
    invoke-static {p0, v4}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_1

    .line 23
    :cond_5
    sget-object p1, Lcom/samsung/android/cmcopenapi/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .line 24
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_6
    :goto_1
    return-object v0
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    const-string v2, "Corrupt Content-Type"

    const-string v3, "PduParser"

    if-lez v1, :cond_d

    .line 3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    add-int/lit8 v1, v1, -0x1

    const/16 v5, 0x7f

    const/4 v6, 0x1

    const/16 v7, 0x81

    const/4 v8, 0x0

    if-eq v4, v7, :cond_8

    const/16 v7, 0x83

    if-eq v4, v7, :cond_5

    const/16 v9, 0x85

    const/16 v10, 0x97

    if-eq v4, v9, :cond_3

    if-eq v4, v10, :cond_3

    const/16 v9, 0x99

    if-eq v4, v9, :cond_1

    const/16 v10, 0x89

    if-eq v4, v10, :cond_5

    const/16 v5, 0x8a

    if-eq v4, v5, :cond_1

    .line 4
    invoke-static {p0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v5, v4, :cond_0

    .line 5
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v1, v8

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0, v8}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {p0, v8}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 11
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    sub-int v1, v0, v1

    sub-int/2addr v2, v1

    move v1, v2

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p0, v6}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 15
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 16
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    if-le v1, v5, :cond_6

    .line 17
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 18
    sget-object v2, Lcom/samsung/android/cmcopenapi/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 19
    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 21
    :cond_6
    invoke-static {p0, v8}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 22
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_7
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 24
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 25
    :cond_8
    invoke-virtual {p0, v6}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 26
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 27
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v2, 0x20

    if-le v1, v2, :cond_9

    if-lt v1, v5, :cond_a

    :cond_9
    if-nez v1, :cond_b

    .line 28
    :cond_a
    invoke-static {p0, v8}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    .line 29
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/samsung/android/cmcopenapi/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v2

    if-eqz p1, :cond_c

    .line 30
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p1, :cond_c

    .line 32
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 33
    :cond_b
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    long-to-int v1, v1

    if-eqz p1, :cond_c

    .line 34
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_c
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 36
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_1

    :cond_d
    if-eqz v1, :cond_e

    .line 37
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1

    .line 3
    new-instance p0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    :catch_0
    const-string p0, "parseValueLength Exception!"

    .line 7
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    :cond_2
    move v0, v3

    .line 8
    :goto_0
    invoke-static {p0, v3}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    if-eqz v0, :cond_3

    .line 9
    :try_start_1
    new-instance v2, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    invoke-direct {v2, v0, p0}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;-><init>(I[B)V

    goto :goto_1

    .line 10
    :cond_3
    new-instance v2, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    invoke-direct {v2, p0}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v2

    :catch_1
    return-object v1
.end method

.method protected static parseEncodedSubjectValue(Ljava/io/ByteArrayInputStream;)Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_3

    .line 3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    :catch_0
    const-string p0, "parseValueLength Exception!"

    .line 6
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    :cond_1
    move v0, v3

    .line 7
    :goto_0
    invoke-static {p0, v3}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    if-eqz v0, :cond_2

    .line 8
    :try_start_1
    new-instance v2, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    invoke-direct {v2, v0, p0}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;-><init>(I[B)V

    move-object v1, v2

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    nop

    :catch_1
    :cond_3
    :goto_1
    return-object v1
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    .line 4
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    shl-long/2addr v2, v1

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p0

    and-int/lit8 p0, p0, 0x7f

    return p0
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v1

    :cond_0
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v1, v1, 0x7f

    or-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    if-ne v1, v2, :cond_0

    return v1

    :cond_1
    shl-int/lit8 p0, v0, 0x7

    and-int/lit8 v0, v1, 0x7f

    or-int/2addr p0, v0

    return p0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    return p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value length > LENGTH_QUOTE!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    if-ne v0, p1, :cond_0

    const/16 v2, 0x22

    if-ne v2, v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/16 v2, 0x7f

    if-ne v2, v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 6
    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 2

    .line 1
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method


# virtual methods
.method public parse()Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/16 v2, 0x8c

    .line 3
    invoke-virtual {v0, v2}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v3, 0x84

    invoke-virtual {v2, v3}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 5
    iget-object v4, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    invoke-static {v4}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->checkMandatoryHeader(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v0, "check mandatory headers failed!"

    .line 6
    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    :cond_2
    const/16 v4, 0x80

    const-string v5, "application/vnd.wap.multipart.mixed"

    const-string v6, "text/plain"

    if-eq v4, v0, :cond_3

    if-ne v3, v0, :cond_5

    .line 7
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/samsung/android/cmcopenapi/pdu/PduBody;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mBody:Lcom/samsung/android/cmcopenapi/pdu/PduBody;

    if-nez v4, :cond_4

    return-object v1

    .line 8
    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 9
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10
    iget-object v2, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setTextString([BI)V

    :cond_5
    packed-switch v0, :pswitch_data_0

    const-string v0, "Parser doesn\'t support this message type in this version!"

    .line 11
    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 12
    :pswitch_0
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/ReadOrigInd;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/ReadOrigInd;-><init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V

    return-object v0

    .line 13
    :pswitch_1
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/ReadRecInd;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/ReadRecInd;-><init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V

    return-object v0

    .line 14
    :pswitch_2
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/DeliveryInd;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/DeliveryInd;-><init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V

    return-object v0

    .line 15
    :pswitch_3
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/AcknowledgeInd;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/AcknowledgeInd;-><init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V

    return-object v0

    .line 16
    :pswitch_4
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/RetrieveConf;

    iget-object v2, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    iget-object v3, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mBody:Lcom/samsung/android/cmcopenapi/pdu/PduBody;

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/cmcopenapi/pdu/RetrieveConf;-><init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;Lcom/samsung/android/cmcopenapi/pdu/PduBody;)V

    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/pdu/RetrieveConf;->getContentType()[B

    move-result-object v2

    if-nez v2, :cond_6

    return-object v1

    .line 18
    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 19
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "application/vnd.wap.multipart.related"

    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 21
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "application/vnd.wap.multipart.alternative"

    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_0

    .line 23
    :cond_7
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 24
    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mBody:Lcom/samsung/android/cmcopenapi/pdu/PduBody;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->getPart(I)Lcom/samsung/android/cmcopenapi/pdu/PduPart;

    move-result-object v1

    .line 25
    iget-object v3, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mBody:Lcom/samsung/android/cmcopenapi/pdu/PduBody;

    invoke-virtual {v3}, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->removeAll()V

    .line 26
    iget-object v3, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mBody:Lcom/samsung/android/cmcopenapi/pdu/PduBody;

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->addPart(ILcom/samsung/android/cmcopenapi/pdu/PduPart;)V

    return-object v0

    :cond_8
    return-object v1

    :cond_9
    :goto_0
    return-object v0

    .line 27
    :pswitch_5
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/NotifyRespInd;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/NotifyRespInd;-><init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V

    return-object v0

    .line 28
    :pswitch_6
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/NotificationInd;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/NotificationInd;-><init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V

    return-object v0

    .line 29
    :pswitch_7
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/SendConf;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/SendConf;-><init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V

    return-object v0

    .line 30
    :pswitch_8
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/SendReq;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    iget-object v2, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mBody:Lcom/samsung/android/cmcopenapi/pdu/PduBody;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcopenapi/pdu/SendReq;-><init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;Lcom/samsung/android/cmcopenapi/pdu/PduBody;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;
    .locals 18

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    new-instance v2, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    invoke-direct {v2}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;-><init>()V

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    :goto_0
    if-eqz v4, :cond_10

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    if-lez v5, :cond_10

    .line 3
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    const/16 v6, 0x20

    const/4 v7, 0x0

    if-lt v5, v6, :cond_2

    const/16 v6, 0x7f

    if-gt v5, v6, :cond_2

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 6
    invoke-static {v0, v7}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    goto :goto_0

    :cond_2
    const/16 v6, 0x81

    const-string v10, "/"

    const-string v12, " is not Integer-Value"

    const-string v13, "is not Octet header field!"

    const-string v14, " into the header filed: "

    const-string v15, "Set invalid Octet value: "

    const/16 v8, 0x80

    const-string v9, "is not Text-String header field!"

    const-string v7, "is not Encoded-String-Value header field!"

    const-string v16, "parseValueLength Exception!"

    const-string v11, "is not Long-Integer header field!"

    const-string v17, "null pointer error!"

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const-string v5, "Unknown header"

    .line 7
    invoke-static {v5}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-static {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto :goto_0

    .line 9
    :pswitch_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    .line 10
    invoke-virtual {v2, v6, v7, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 12
    :pswitch_3
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 14
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 15
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 16
    :catch_2
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 17
    :pswitch_4
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 18
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 19
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    goto/16 :goto_0

    .line 20
    :catch_3
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 21
    :pswitch_5
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6

    .line 22
    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 23
    :try_start_6
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    const/16 v8, 0xa1

    .line 24
    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 25
    :catch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 26
    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 27
    :catch_6
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 28
    :pswitch_6
    :try_start_7
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_a

    .line 29
    :try_start_8
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_9

    .line 30
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v6

    if-eqz v6, :cond_1

    const/16 v8, 0xa0

    .line 31
    :try_start_9
    invoke-virtual {v2, v6, v8}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setEncodedStringValue(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;I)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_0

    .line 32
    :catch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 33
    :catch_8
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 34
    :catch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 35
    :catch_a
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 36
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseEncodedSubjectValue(Ljava/io/ByteArrayInputStream;)Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 37
    :try_start_a
    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setEncodedStringValue(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;I)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_b

    goto/16 :goto_0

    .line 38
    :catch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 39
    :catch_c
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v5, "Subject is null!"

    .line 40
    invoke-static {v5}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 41
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 42
    :try_start_b
    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setEncodedStringValue(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_d

    goto/16 :goto_0

    .line 43
    :catch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 44
    :catch_e
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 45
    :pswitch_9
    :try_start_c
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    .line 46
    invoke-virtual {v2, v6, v7, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_f

    goto/16 :goto_0

    .line 47
    :catch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 48
    :pswitch_a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    const/16 v7, 0x8d

    .line 49
    :try_start_d
    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setOctet(II)V
    :try_end_d
    .catch Lcom/samsung/android/cmcopenapi/pdu/MmsException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_10

    goto/16 :goto_0

    .line 50
    :catch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 51
    :catch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 52
    :pswitch_b
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 53
    :try_start_e
    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setOctet(II)V
    :try_end_e
    .catch Lcom/samsung/android/cmcopenapi/pdu/MmsException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_12

    goto/16 :goto_0

    :pswitch_c
    return-object v1

    .line 54
    :catch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 55
    :catch_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 56
    :pswitch_d
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 57
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    const/16 v10, 0x8a

    if-lt v7, v8, :cond_7

    if-ne v8, v7, :cond_4

    :try_start_f
    const-string v6, "personal"

    .line 58
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 59
    invoke-virtual {v2, v6, v10}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_0

    :cond_4
    if-ne v6, v7, :cond_5

    const-string v6, "advertisement"

    .line 60
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 61
    invoke-virtual {v2, v6, v10}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_0

    :cond_5
    const/16 v6, 0x82

    if-ne v6, v7, :cond_6

    const-string v6, "informational"

    .line 62
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 63
    invoke-virtual {v2, v6, v10}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_0

    :cond_6
    const/16 v6, 0x83

    if-ne v6, v7, :cond_1

    const-string v6, "auto"

    .line 64
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 65
    invoke-virtual {v2, v6, v10}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_14

    goto/16 :goto_0

    .line 66
    :catch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 67
    :catch_15
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    const/4 v6, 0x0

    .line 69
    invoke-static {v0, v6}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    if-eqz v6, :cond_1

    .line 70
    :try_start_10
    invoke-virtual {v2, v6, v10}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_16

    goto/16 :goto_0

    .line 71
    :catch_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 72
    :catch_17
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    :pswitch_e
    :try_start_11
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_1c

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    if-ne v8, v6, :cond_9

    .line 75
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 76
    invoke-virtual {v6}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v8

    if-eqz v8, :cond_a

    .line 77
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    .line 78
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_8

    const/4 v10, 0x0

    .line 79
    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 80
    :cond_8
    :try_start_12
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_18

    goto :goto_1

    .line 81
    :catch_18
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 82
    :cond_9
    :try_start_13
    new-instance v6, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    const-string v8, "insert-address-token"

    .line 83
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;-><init>([B)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_1b

    :cond_a
    :goto_1
    const/16 v8, 0x89

    .line 84
    :try_start_14
    invoke-virtual {v2, v6, v8}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setEncodedStringValue(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;I)V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_19

    goto/16 :goto_0

    .line 85
    :catch_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 86
    :catch_1a
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :catch_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 88
    :catch_1c
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 89
    :pswitch_f
    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_1f

    .line 90
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 91
    :try_start_16
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v8
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1e

    if-ne v6, v7, :cond_b

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    add-long/2addr v8, v6

    .line 93
    :cond_b
    :try_start_17
    invoke-virtual {v2, v8, v9, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_1d

    goto/16 :goto_0

    .line 94
    :catch_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 95
    :catch_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 96
    :catch_1f
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 97
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 98
    :try_start_18
    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setOctet(II)V
    :try_end_18
    .catch Lcom/samsung/android/cmcopenapi/pdu/MmsException; {:try_start_18 .. :try_end_18} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_20

    goto/16 :goto_0

    .line 99
    :catch_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 100
    :catch_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 101
    :pswitch_11
    :try_start_19
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    .line 102
    sget-boolean v8, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mEnableMmsServerTime:Z

    if-nez v8, :cond_c

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mEnableMmsServerTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mEnableMmsServerTime:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " Time value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 105
    :cond_c
    invoke-virtual {v2, v6, v7, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_22

    goto/16 :goto_0

    .line 106
    :catch_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 107
    :pswitch_12
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 108
    invoke-static {v0, v4}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    if-eqz v6, :cond_d

    const/16 v7, 0x84

    .line 109
    :try_start_1a
    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setTextString([BI)V
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_23

    goto :goto_2

    .line 110
    :catch_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 111
    :catch_24
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    :cond_d
    :goto_2
    const/16 v5, 0x99

    .line 112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    sput-object v5, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mStartParam:[B

    const/16 v5, 0x83

    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    sput-object v4, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mTypeParam:[B

    const/4 v4, 0x0

    goto/16 :goto_0

    :pswitch_13
    const/4 v6, 0x0

    .line 114
    invoke-static {v0, v6}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    if-eqz v6, :cond_1

    .line 115
    :try_start_1b
    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setTextString([BI)V
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_25

    goto/16 :goto_0

    .line 116
    :catch_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 117
    :catch_26
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :pswitch_14
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 119
    invoke-virtual {v6}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v8

    if-eqz v8, :cond_f

    .line 120
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    .line 121
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_e

    const/4 v10, 0x0

    .line 122
    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 123
    :cond_e
    :try_start_1c
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_27

    goto :goto_3

    .line 124
    :catch_27
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 125
    :cond_f
    :goto_3
    :try_start_1d
    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->appendEncodedStringValue(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;I)V
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_28

    goto/16 :goto_0

    .line 126
    :catch_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    .line 127
    :catch_29
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    return-object v2

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_13
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_7
        :pswitch_14
        :pswitch_13
        :pswitch_10
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_13
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_10
        :pswitch_10
        :pswitch_4
        :pswitch_10
        :pswitch_8
        :pswitch_10
        :pswitch_0
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_10
        :pswitch_1
        :pswitch_2
        :pswitch_10
        :pswitch_8
        :pswitch_8
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_13
        :pswitch_13
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method protected parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/samsung/android/cmcopenapi/pdu/PduPart;I)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    move v1, p3

    :cond_0
    :goto_0
    const-string v2, "Corrupt Part headers"

    const-string v3, "PduParser"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v1, :cond_f

    .line 2
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    add-int/lit8 v1, v1, -0x1

    const/16 v7, 0x7f

    const/4 v8, -0x1

    if-le v6, v7, :cond_b

    const/16 v7, 0x8e

    if-eq v6, v7, :cond_9

    const/16 v7, 0xae

    if-eq v6, v7, :cond_3

    const/16 v7, 0xc0

    if-eq v6, v7, :cond_1

    const/16 v7, 0xc5

    if-eq v6, v7, :cond_3

    .line 3
    invoke-static {p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v1

    if-ne v8, v1, :cond_e

    .line 4
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 5
    :cond_1
    invoke-static {p1, v4}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p2, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentId([B)V

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    goto/16 :goto_2

    .line 8
    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->mParseContentDisposition:Z

    if-eqz v2, :cond_0

    .line 9
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 11
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 12
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v4, :cond_4

    .line 13
    sget-object v3, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p2, v3}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_1

    :cond_4
    const/16 v4, 0x81

    if-ne v3, v4, :cond_5

    .line 14
    sget-object v3, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p2, v3}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_1

    :cond_5
    const/16 v4, 0x82

    if-ne v3, v4, :cond_6

    .line 15
    sget-object v3, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p2, v3}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 17
    invoke-static {p1, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentDisposition([B)V

    .line 18
    :goto_1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    sub-int v3, v2, v3

    if-ge v3, v1, :cond_8

    .line 19
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    const/16 v4, 0x98

    if-ne v3, v4, :cond_7

    .line 20
    invoke-static {p1, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setFilename([B)V

    .line 21
    :cond_7
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_8

    sub-int/2addr v1, v2

    .line 22
    new-array v2, v1, [B

    .line 23
    invoke-virtual {p1, v2, v5, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 24
    :cond_8
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    goto :goto_2

    :catch_0
    const-string p1, "parseValueLength Exception!"

    .line 25
    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return v5

    .line 26
    :cond_9
    invoke-static {p1, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    if-eqz v1, :cond_a

    .line 27
    invoke-virtual {p2, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentLocation([B)V

    .line 28
    :cond_a
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    :goto_2
    sub-int v1, v0, v1

    sub-int v1, p3, v1

    goto/16 :goto_0

    :cond_b
    const/16 v9, 0x20

    if-lt v6, v9, :cond_d

    if-gt v6, v7, :cond_d

    .line 29
    invoke-static {p1, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    .line 30
    invoke-static {p1, v5}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    .line 31
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "Content-Transfer-Encoding"

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v4, v1, :cond_c

    .line 33
    invoke-virtual {p2, v2}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 34
    :cond_c
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    goto :goto_2

    .line 35
    :cond_d
    invoke-static {p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v1

    if-ne v8, v1, :cond_e

    .line 36
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_e
    move v1, v5

    goto/16 :goto_0

    :cond_f
    if-eqz v1, :cond_10

    .line 37
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_10
    return v4
.end method

.method protected parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/samsung/android/cmcopenapi/pdu/PduBody;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Lcom/samsung/android/cmcopenapi/pdu/PduBody;

    invoke-direct {v1}, Lcom/samsung/android/cmcopenapi/pdu/PduBody;-><init>()V

    .line 2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    const-string p2, "application/vnd.wap.multipart.mixed"

    .line 3
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v3, 0x0

    if-nez p2, :cond_3

    const-string p2, "application/vnd.wap.multipart.related"

    .line 4
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "text/plain"

    .line 5
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/PduPart;

    invoke-direct {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;-><init>()V

    const-string v2, "smil.txt"

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentId([B)V

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentLocation([B)V

    const-string v2, "application/smil"

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentType([B)V

    const-string v2, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/></layout></head><body><par><text src=\"attach.txt\" region=\"Text\"/></par></body></smil>"

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setData([B)V

    .line 11
    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->addPart(ILcom/samsung/android/cmcopenapi/pdu/PduPart;)V

    .line 12
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/PduPart;

    invoke-direct {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;-><init>()V

    const-string v2, "attach.txt"

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentLocation([B)V

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentId([B)V

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentType([B)V

    .line 16
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p2

    .line 17
    new-array v2, p2, [B

    .line 18
    invoke-virtual {p1, v2, v3, p2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 19
    invoke-virtual {v0, v2}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setData([B)V

    .line 20
    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->addPart(Lcom/samsung/android/cmcopenapi/pdu/PduPart;)Z

    goto/16 :goto_6

    :cond_2
    return-object v0

    .line 21
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result p2

    move v2, v3

    :goto_1
    if-ge v2, p2, :cond_13

    .line 22
    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 23
    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 24
    new-instance v6, Lcom/samsung/android/cmcopenapi/pdu/PduPart;

    invoke-direct {v6}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;-><init>()V

    .line 25
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    if-gtz v7, :cond_4

    return-object v0

    .line 26
    :cond_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 27
    invoke-static {p1, v8}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v9

    if-eqz v9, :cond_5

    .line 28
    invoke-virtual {v6, v9}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentType([B)V

    goto :goto_2

    .line 29
    :cond_5
    sget-object v10, Lcom/samsung/android/cmcopenapi/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentType([B)V

    :goto_2
    const/16 v10, 0x97

    .line 30
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    if-eqz v10, :cond_6

    .line 31
    invoke-virtual {v6, v10}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setName([B)V

    :cond_6
    const/16 v10, 0x81

    .line 32
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_7

    .line 33
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setCharset(I)V

    .line 34
    :cond_7
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v4, v7

    if-lez v4, :cond_8

    .line 35
    invoke-virtual {p0, p1, v6, v4}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/samsung/android/cmcopenapi/pdu/PduPart;I)Z

    move-result v4

    if-nez v4, :cond_9

    return-object v0

    :cond_8
    if-gez v4, :cond_9

    return-object v0

    .line 36
    :cond_9
    invoke-virtual {v6}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->getContentLocation()[B

    move-result-object v4

    if-nez v4, :cond_a

    .line 37
    invoke-virtual {v6}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->getName()[B

    move-result-object v4

    if-nez v4, :cond_a

    .line 38
    invoke-virtual {v6}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->getFilename()[B

    move-result-object v4

    if-nez v4, :cond_a

    .line 39
    invoke-virtual {v6}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->getContentId()[B

    move-result-object v4

    if-nez v4, :cond_a

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 41
    invoke-static {v7, v8}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 43
    invoke-virtual {v6, v4}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setContentLocation([B)V

    :cond_a
    if-lez v5, :cond_11

    .line 44
    new-array v4, v5, [B

    .line 45
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->getContentType()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 46
    invoke-virtual {p1, v4, v3, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_b

    return-object v0

    :cond_b
    const-string v5, "application/vnd.wap.multipart.alternative"

    .line 47
    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 48
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v5, v9}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/samsung/android/cmcopenapi/pdu/PduBody;

    move-result-object v4

    if-nez v4, :cond_c

    const-string v4, "childBody is null"

    .line 49
    invoke-static {v4}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 50
    :cond_c
    invoke-virtual {v4, v3}, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->getPart(I)Lcom/samsung/android/cmcopenapi/pdu/PduPart;

    move-result-object v6

    goto :goto_4

    .line 51
    :cond_d
    invoke-virtual {v6}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v5

    if-eqz v5, :cond_f

    .line 52
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    const-string v5, "base64"

    .line 53
    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 54
    invoke-static {v4}, Lcom/samsung/android/cmcopenapi/pdu/Base64;->decodeBase64([B)[B

    move-result-object v4

    goto :goto_3

    :cond_e
    const-string v5, "quoted-printable"

    .line 55
    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 56
    invoke-static {v4}, Lcom/samsung/android/cmcopenapi/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v4

    :cond_f
    :goto_3
    if-nez v4, :cond_10

    const-string p1, "Decode part data error!"

    .line 57
    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v0

    .line 58
    :cond_10
    invoke-virtual {v6, v4}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->setData([B)V

    .line 59
    :cond_11
    :goto_4
    invoke-static {v6}, Lcom/samsung/android/cmcopenapi/pdu/PduParser;->checkPartPosition(Lcom/samsung/android/cmcopenapi/pdu/PduPart;)I

    move-result v4

    if-nez v4, :cond_12

    .line 60
    invoke-virtual {v1, v3, v6}, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->addPart(ILcom/samsung/android/cmcopenapi/pdu/PduPart;)V

    goto :goto_5

    .line 61
    :cond_12
    invoke-virtual {v1, v6}, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->addPart(Lcom/samsung/android/cmcopenapi/pdu/PduPart;)Z

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_13
    :goto_6
    return-object v1
.end method
