.class public Lcom/samsung/android/cmcopenapi/pdu/DeliveryInd;
.super Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;
.source "DeliveryInd.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;-><init>()V

    const/16 v0, 0x86

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->setMessageType(I)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V
    .locals 0

    .line 3
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

.method public getStatus()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x95

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

.method public setStatus(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x95

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
