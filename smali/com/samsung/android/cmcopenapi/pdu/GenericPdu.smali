.class public Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;
.super Ljava/lang/Object;
.source "GenericPdu.java"


# instance fields
.field mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    .line 3
    new-instance v0, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    invoke-direct {v0}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    return-void
.end method


# virtual methods
.method public getFrom()Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getMmsVersion()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x8d

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method getPduHeaders()Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    return-object v0
.end method

.method public getSubject()Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setEncodedStringValue(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public setMessageType(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x8c

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method

.method public setMmsVersion(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x8d

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method
