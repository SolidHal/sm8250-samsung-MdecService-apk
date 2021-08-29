.class public Lcom/samsung/android/cmcopenapi/pdu/NotifyRespInd;
.super Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;
.source "NotifyRespInd.java"


# direct methods
.method public constructor <init>(I[BI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;-><init>()V

    const/16 v0, 0x83

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->setMessageType(I)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->setMmsVersion(I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/samsung/android/cmcopenapi/pdu/NotifyRespInd;->setTransactionId([B)V

    .line 5
    invoke-virtual {p0, p3}, Lcom/samsung/android/cmcopenapi/pdu/NotifyRespInd;->setStatus(I)V

    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;-><init>()V

    const/16 v0, 0x83

    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->setMessageType(I)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->setMmsVersion(I)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/samsung/android/cmcopenapi/pdu/NotifyRespInd;->setTransactionId([B)V

    .line 10
    invoke-virtual {p0, p3}, Lcom/samsung/android/cmcopenapi/pdu/NotifyRespInd;->setStatus(I)V

    .line 11
    invoke-virtual {p0, p4}, Lcom/samsung/android/cmcopenapi/pdu/NotifyRespInd;->setReportAllowed(I)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;-><init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V

    return-void
.end method


# virtual methods
.method public getReportAllowed()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
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

.method public getTransactionId()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setReportAllowed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setOctet(II)V

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

.method public setTransactionId([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method
