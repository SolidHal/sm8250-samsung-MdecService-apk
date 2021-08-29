.class public Lcom/samsung/android/cmcopenapi/pdu/SendReq;
.super Lcom/samsung/android/cmcopenapi/pdu/MultimediaMessagePdu;
.source "SendReq.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SendReq"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/pdu/MultimediaMessagePdu;-><init>()V

    const/16 v0, 0x80

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->setMessageType(I)V

    const/16 v0, 0x12

    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->setMmsVersion(I)V

    const-string v0, "application/vnd.wap.multipart.related"

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcopenapi/pdu/SendReq;->setContentType([B)V

    .line 5
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    const-string v1, "insert-address-token"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->setFrom(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)V

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/pdu/SendReq;->generateTransactionId()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcopenapi/pdu/SendReq;->setTransactionId([B)V
    :try_end_0
    .catch Lcom/samsung/android/cmcopenapi/pdu/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SendReq"

    const-string v2, "Unexpected InvalidHeaderValueException."

    .line 7
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcopenapi/pdu/MultimediaMessagePdu;-><init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;Lcom/samsung/android/cmcopenapi/pdu/PduBody;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cmcopenapi/pdu/MultimediaMessagePdu;-><init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;Lcom/samsung/android/cmcopenapi/pdu/PduBody;)V

    return-void
.end method

.method public constructor <init>([BLcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;I[B)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/pdu/MultimediaMessagePdu;-><init>()V

    const/16 v0, 0x80

    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->setMessageType(I)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcopenapi/pdu/SendReq;->setContentType([B)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->setFrom(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)V

    .line 13
    invoke-virtual {p0, p3}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->setMmsVersion(I)V

    .line 14
    invoke-virtual {p0, p4}, Lcom/samsung/android/cmcopenapi/pdu/SendReq;->setTransactionId([B)V

    return-void
.end method

.method private generateTransactionId()[B
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addBcc(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->appendEncodedStringValue(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public addCc(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->appendEncodedStringValue(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public getBcc()[Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getCc()[Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryReport()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getDeliveryTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpiry()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageClass()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadReport()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getReserved()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransactionId()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setBcc([Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x81

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setEncodedStringValues([Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public setCc([Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setEncodedStringValues([Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public setContentType([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method

.method public setDeliveryReport(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method

.method public setDeliveryTime(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x87

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method

.method public setExpiry(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method

.method public setMessageClass([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method

.method public setMessageSize(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method

.method public setReadReport(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method

.method public setReserved(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0xc0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method

.method public setTo([Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setEncodedStringValues([Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public setTransactionId([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method
