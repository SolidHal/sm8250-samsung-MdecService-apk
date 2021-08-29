.class public Lcom/samsung/android/cmcopenapi/pdu/MultimediaMessagePdu;
.super Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;
.source "MultimediaMessagePdu.java"


# instance fields
.field private mMessageBody:Lcom/samsung/android/cmcopenapi/pdu/PduBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;-><init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;Lcom/samsung/android/cmcopenapi/pdu/PduBody;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;-><init>(Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;)V

    .line 3
    iput-object p2, p0, Lcom/samsung/android/cmcopenapi/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/samsung/android/cmcopenapi/pdu/PduBody;

    return-void
.end method


# virtual methods
.method public addCc(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->appendEncodedStringValue(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public addTo(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->appendEncodedStringValue(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public getBody()Lcom/samsung/android/cmcopenapi/pdu/PduBody;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/samsung/android/cmcopenapi/pdu/PduBody;

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

.method public getDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriority()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x8f

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

.method public getSubject()Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
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

.method public setBody(Lcom/samsung/android/cmcopenapi/pdu/PduBody;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/samsung/android/cmcopenapi/pdu/PduBody;

    return-void
.end method

.method public setDate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method

.method public setPriority(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x8f

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

.method public setSubject(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->mPduHeaders:Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/cmcopenapi/pdu/PduHeaders;->setEncodedStringValue(Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;I)V

    return-void
.end method
