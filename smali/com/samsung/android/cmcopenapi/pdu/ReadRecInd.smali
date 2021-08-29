.class public Lcom/samsung/android/cmcopenapi/pdu/ReadRecInd;
.super Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;
.source "ReadRecInd.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;[BII[Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;-><init>()V

    const/16 v0, 0x87

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->setMessageType(I)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->setFrom(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/samsung/android/cmcopenapi/pdu/ReadRecInd;->setMessageId([B)V

    .line 5
    invoke-virtual {p0, p3}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->setMmsVersion(I)V

    .line 6
    invoke-virtual {p0, p5}, Lcom/samsung/android/cmcopenapi/pdu/ReadRecInd;->setTo([Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)V

    .line 7
    invoke-virtual {p0, p4}, Lcom/samsung/android/cmcopenapi/pdu/ReadRecInd;->setReadStatus(I)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;-><init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageId()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getReadStatus()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTo()[Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public setDate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method

.method public setMessageId([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method

.method public setReadStatus(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setOctet(II)V

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
