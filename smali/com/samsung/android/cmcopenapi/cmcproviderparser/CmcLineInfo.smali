.class public Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;
.super Ljava/lang/Object;
.source "CmcLineInfo.java"


# instance fields
.field private mImpu:Ljava/lang/String;

.field private mLineId:Ljava/lang/String;

.field private mLineName:Ljava/lang/String;

.field private mLineSlotIndex:I

.field private mMsisdn:Ljava/lang/String;

.field private mNmsAddr:Ljava/lang/String;

.field private mPcscfAddrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mLineId:Ljava/lang/String;

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mLineSlotIndex:I

    .line 4
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mLineName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mMsisdn:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mImpu:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mNmsAddr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mPcscfAddrList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getImpu()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mImpu:Ljava/lang/String;

    return-object v0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mLineId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mLineName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineSlotIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mLineSlotIndex:I

    return v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getNmsAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mNmsAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getPcscfAddrList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mPcscfAddrList:Ljava/util/List;

    return-object v0
.end method

.method public setImpu(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mImpu:Ljava/lang/String;

    return-void
.end method

.method public setLineId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mLineId:Ljava/lang/String;

    return-void
.end method

.method public setLineName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mLineName:Ljava/lang/String;

    return-void
.end method

.method public setLineSlotIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mLineSlotIndex:I

    return-void
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mMsisdn:Ljava/lang/String;

    return-void
.end method

.method public setNmsAddr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mNmsAddr:Ljava/lang/String;

    return-void
.end method

.method public setPcscfAddrList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mPcscfAddrList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lineId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mLineId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",lineSlotIndex:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mLineSlotIndex:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",lineName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mLineName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",impu:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mImpu:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",nmsAddr:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mNmsAddr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",pcscfAddrList:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->mPcscfAddrList:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
