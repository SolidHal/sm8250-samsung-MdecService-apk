.class public Lcom/samsung/android/mdeccommon/obj/DeviceData;
.super Ljava/lang/Object;
.source "DeviceData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEVICE_DATA_VERSION:Ljava/lang/String; = "1.0.10"


# instance fields
.field private mActivityNameForNativeApp:Ljava/lang/String;

.field private mDeviceDataVersion:Ljava/lang/String;

.field private mHashedBtMacAddress:Ljava/lang/String;

.field private mHashedWifiMacAddress:Ljava/lang/String;

.field private mIsActivation:Z

.field private mIsActivationControlAllowed:Z

.field private mIsCallActivation:Z

.field private mIsCallForkingSupported:Z

.field private mIsCallLogSyncSupported:Z

.field private mIsCellularDevice:Z

.field private mIsMessageActivation:Z

.field private mIsMigrateAllowed:Z

.field private mIsMsgSyncSupported:Z

.field private mIsRemoveControlAllowed:Z

.field private mIsRespectiveControl:Z

.field private mIsUseActivation:Z

.field private mIsUseActivationControlAllowed:Z

.field private mIsUseCallActivation:Z

.field private mIsUseCallForkingSupported:Z

.field private mIsUseCallLogSyncSupported:Z

.field private mIsUseCellularDevice:Z

.field private mIsUseMessageActivation:Z

.field private mIsUseMigrateAllowed:Z

.field private mIsUseMsgSyncSupported:Z

.field private mIsUseRemoveControlAllowed:Z

.field private mIsUseRespectiveControl:Z

.field private mPackageNameForNativeApp:Ljava/lang/String;

.field private mPdBtMac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mDeviceDataVersion:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mHashedWifiMacAddress:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mHashedBtMacAddress:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCellularDevice:Z

    .line 6
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCellularDevice:Z

    .line 7
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseMigrateAllowed:Z

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMigrateAllowed:Z

    .line 9
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseRemoveControlAllowed:Z

    .line 10
    iput-boolean v2, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsRemoveControlAllowed:Z

    .line 11
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseActivationControlAllowed:Z

    .line 12
    iput-boolean v2, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsActivationControlAllowed:Z

    .line 13
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mPackageNameForNativeApp:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mActivityNameForNativeApp:Ljava/lang/String;

    .line 15
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseMsgSyncSupported:Z

    .line 16
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMsgSyncSupported:Z

    .line 17
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCallLogSyncSupported:Z

    .line 18
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallLogSyncSupported:Z

    .line 19
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCallForkingSupported:Z

    .line 20
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallForkingSupported:Z

    .line 21
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseActivation:Z

    .line 22
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsActivation:Z

    .line 23
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCallActivation:Z

    .line 24
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallActivation:Z

    .line 25
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseMessageActivation:Z

    .line 26
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMessageActivation:Z

    .line 27
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseRespectiveControl:Z

    .line 28
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsRespectiveControl:Z

    .line 29
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mPdBtMac:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mDeviceDataVersion:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mHashedWifiMacAddress:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mHashedBtMacAddress:Ljava/lang/String;

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCellularDevice:Z

    .line 35
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCellularDevice:Z

    .line 36
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseMigrateAllowed:Z

    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMigrateAllowed:Z

    .line 38
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseRemoveControlAllowed:Z

    .line 39
    iput-boolean v2, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsRemoveControlAllowed:Z

    .line 40
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseActivationControlAllowed:Z

    .line 41
    iput-boolean v2, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsActivationControlAllowed:Z

    .line 42
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mPackageNameForNativeApp:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mActivityNameForNativeApp:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseMsgSyncSupported:Z

    .line 45
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMsgSyncSupported:Z

    .line 46
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCallLogSyncSupported:Z

    .line 47
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallLogSyncSupported:Z

    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCallForkingSupported:Z

    .line 49
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallForkingSupported:Z

    .line 50
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseActivation:Z

    .line 51
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsActivation:Z

    .line 52
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCallActivation:Z

    .line 53
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallActivation:Z

    .line 54
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseMessageActivation:Z

    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMessageActivation:Z

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseRespectiveControl:Z

    .line 57
    iput-boolean v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsRespectiveControl:Z

    .line 58
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mPdBtMac:Ljava/lang/String;

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMigrateAllowed:Z

    .line 60
    iput-boolean v2, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseMigrateAllowed:Z

    .line 61
    iput-boolean p2, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsRemoveControlAllowed:Z

    .line 62
    iput-boolean v2, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseRemoveControlAllowed:Z

    .line 63
    iput-boolean p3, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsActivationControlAllowed:Z

    .line 64
    iput-boolean v2, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseActivationControlAllowed:Z

    .line 65
    iput-object p4, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mPackageNameForNativeApp:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mActivityNameForNativeApp:Ljava/lang/String;

    .line 67
    iput-boolean p6, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMsgSyncSupported:Z

    .line 68
    iput-boolean v2, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseMsgSyncSupported:Z

    .line 69
    iput-boolean p7, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallLogSyncSupported:Z

    .line 70
    iput-boolean v2, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCallLogSyncSupported:Z

    .line 71
    iput-boolean p8, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallForkingSupported:Z

    .line 72
    iput-boolean v2, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCallForkingSupported:Z

    return-void
.end method


# virtual methods
.method public getActivityNameForNativeApp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mActivityNameForNativeApp:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceDataVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mDeviceDataVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHashedBtMacAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mHashedBtMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getHashedWifiMacAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mHashedWifiMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNameForNativeApp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mPackageNameForNativeApp:Ljava/lang/String;

    return-object v0
.end method

.method public getPdBtMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mPdBtMac:Ljava/lang/String;

    return-object v0
.end method

.method public isActivation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsActivation:Z

    return v0
.end method

.method public isActivationControlAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsActivationControlAllowed:Z

    return v0
.end method

.method public isCallActivation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallActivation:Z

    return v0
.end method

.method public isCallForkingSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallForkingSupported:Z

    return v0
.end method

.method public isCallLogSyncSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallLogSyncSupported:Z

    return v0
.end method

.method public isCellularDevice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCellularDevice:Z

    return v0
.end method

.method public isMessageActivation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMessageActivation:Z

    return v0
.end method

.method public isMigrateAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMigrateAllowed:Z

    return v0
.end method

.method public isMsgSyncSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMsgSyncSupported:Z

    return v0
.end method

.method public isRemoveControlAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsRemoveControlAllowed:Z

    return v0
.end method

.method public isRespectiveControl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsRespectiveControl:Z

    return v0
.end method

.method public isUseActivation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseActivation:Z

    return v0
.end method

.method public isUseActivationControlAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseActivationControlAllowed:Z

    return v0
.end method

.method public isUseCallActivation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCallActivation:Z

    return v0
.end method

.method public isUseCallForkingSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCallForkingSupported:Z

    return v0
.end method

.method public isUseCallLogSyncSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCallLogSyncSupported:Z

    return v0
.end method

.method public isUseCellularDevice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCellularDevice:Z

    return v0
.end method

.method public isUseMessageActivation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseMessageActivation:Z

    return v0
.end method

.method public isUseMigrateAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseMigrateAllowed:Z

    return v0
.end method

.method public isUseMsgSyncSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseMsgSyncSupported:Z

    return v0
.end method

.method public isUseRemoveControlAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseRemoveControlAllowed:Z

    return v0
.end method

.method public isUseRespectiveControl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseRespectiveControl:Z

    return v0
.end method

.method public setActivation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsActivation:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseActivation:Z

    return-void
.end method

.method public setActivationControlAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsActivationControlAllowed:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseActivationControlAllowed:Z

    return-void
.end method

.method public setActivations(ZZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsActivation:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseActivation:Z

    .line 3
    iput-boolean p2, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallActivation:Z

    .line 4
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCallActivation:Z

    .line 5
    iput-boolean p3, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMessageActivation:Z

    .line 6
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseMessageActivation:Z

    return-void
.end method

.method public setActivityNameForNativeApp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mActivityNameForNativeApp:Ljava/lang/String;

    return-void
.end method

.method public setCallActivation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallActivation:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCallActivation:Z

    return-void
.end method

.method public setCallForkingSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallForkingSupported:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCallForkingSupported:Z

    return-void
.end method

.method public setCallLogSyncSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallLogSyncSupported:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCallLogSyncSupported:Z

    return-void
.end method

.method public setCellularDevice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCellularDevice:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseCellularDevice:Z

    return-void
.end method

.method public setDeviceDataVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mDeviceDataVersion:Ljava/lang/String;

    return-void
.end method

.method public setHashedBtMacAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mHashedBtMacAddress:Ljava/lang/String;

    return-void
.end method

.method public setHashedWifiMacAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mHashedWifiMacAddress:Ljava/lang/String;

    return-void
.end method

.method public setMessageActivation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMessageActivation:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseMessageActivation:Z

    return-void
.end method

.method public setMigrateAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMigrateAllowed:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseMigrateAllowed:Z

    return-void
.end method

.method public setMsgSyncSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMsgSyncSupported:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseMsgSyncSupported:Z

    return-void
.end method

.method public setPackageNameForNativeApp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mPackageNameForNativeApp:Ljava/lang/String;

    return-void
.end method

.method public setPdBtMac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mPdBtMac:Ljava/lang/String;

    return-void
.end method

.method public setRemoveControlAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsRemoveControlAllowed:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseRemoveControlAllowed:Z

    return-void
.end method

.method public setRespectiveControl(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsRespectiveControl:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsUseRespectiveControl:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDeviceDataVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mDeviceDataVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mHashedWifiMacAddress:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mHashedWifiMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mHashedBtMacAddress:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mHashedBtMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIsCellularDevice:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCellularDevice:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIsMigrateAllowed:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMigrateAllowed:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIsRemoveControlAllowed:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsRemoveControlAllowed:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIsActivationControlAllowed:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsActivationControlAllowed:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mPackageNameForNativeApp:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mPackageNameForNativeApp:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mActivityNameForNativeApp:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mActivityNameForNativeApp:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIsMsgSyncSupported:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMsgSyncSupported:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIsCallLogSyncSupported:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallLogSyncSupported:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIsCallForkingSupported:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallForkingSupported:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIsActivation:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsActivation:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIsCallActivation:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsCallActivation:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIsMessageActivation:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsMessageActivation:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mIsRespectiveControl:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mIsRespectiveControl:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mPdBtMac:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/DeviceData;->mPdBtMac:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
