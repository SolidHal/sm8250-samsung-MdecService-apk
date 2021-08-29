.class public Lcom/samsung/android/cmcsetting/CmcDeviceInfo;
.super Ljava/lang/Object;
.source "CmcDeviceInfo.java"


# instance fields
.field private mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

.field private mIsActivation:Z

.field private mIsCallActivation:Z

.field private mIsCallAllowedSdByPd:Z

.field private mIsMessageActivation:Z

.field private mIsMessageAllowedSdByPd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageAllowedSdByPd:Z

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallAllowedSdByPd:Z

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsActivation:Z

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageActivation:Z

    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallActivation:Z

    return-void
.end method


# virtual methods
.method public getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    return-object v0
.end method

.method public isActivation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsActivation:Z

    return v0
.end method

.method public isCallActivation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallActivation:Z

    return v0
.end method

.method public isCallAllowedSdByPd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallAllowedSdByPd:Z

    return v0
.end method

.method public isMessageActivation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageActivation:Z

    return v0
.end method

.method public isMessageAllowedSdByPd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageAllowedSdByPd:Z

    return v0
.end method

.method public setActivation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsActivation:Z

    return-void
.end method

.method public setCallActivation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallActivation:Z

    return-void
.end method

.method public setCallAllowedSdByPd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallAllowedSdByPd:Z

    return-void
.end method

.method public setDeviceCategory(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    return-void
.end method

.method public setMessageActivation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageActivation:Z

    return-void
.end method

.method public setMessageAllowedSdByPd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageAllowedSdByPd:Z

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

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",deviceName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",deviceCategory:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",deviceType:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isCallAllowedSdByPd:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallAllowedSdByPd:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isMessageAllowedSdByPd:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageAllowedSdByPd:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isActivation:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsActivation:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isMessageActivation:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageActivation:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isCallActivation:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallActivation:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
