.class public Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;
.super Ljava/lang/Object;
.source "CmcDeviceInfo.java"


# instance fields
.field private mActivation:Ljava/lang/String;

.field private mActiveServicesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallActivation:Ljava/lang/String;

.field private mDeviceCategory:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mDeviceVersion:Ljava/lang/String;

.field private mLineId:Ljava/lang/String;

.field private mMessageActivation:Ljava/lang/String;

.field private mWatchActiveServiceTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceCategory:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mActiveServicesList:Ljava/util/ArrayList;

    .line 7
    iput-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mWatchActiveServiceTypeList:Ljava/util/ArrayList;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mLineId:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceVersion:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mActivation:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mMessageActivation:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mCallActivation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mActivation:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveServices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mActiveServicesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCallActivation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mCallActivation:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mLineId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageActivation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mMessageActivation:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchActiveServiceType()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mWatchActiveServiceTypeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setActivation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mActivation:Ljava/lang/String;

    return-void
.end method

.method public setActiveServices(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mActiveServicesList:Ljava/util/ArrayList;

    return-void
.end method

.method public setCallActivation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mCallActivation:Ljava/lang/String;

    return-void
.end method

.method public setDeviceCategory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceCategory:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method public setDeviceVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceVersion:Ljava/lang/String;

    return-void
.end method

.method public setLineId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mLineId:Ljava/lang/String;

    return-void
.end method

.method public setMessageActivation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mMessageActivation:Ljava/lang/String;

    return-void
.end method

.method public setWatchActiveServiceType(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mWatchActiveServiceTypeList:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",deviceName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",deviceCategory:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceCategory:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",deviceType:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",activeServices:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mActiveServicesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",watchActiveServiceType:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mWatchActiveServiceTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",lineId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mLineId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",deviceVersion:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mDeviceVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",activation:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mActivation:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",messageActivation:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mMessageActivation:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",callActivation:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->mCallActivation:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
