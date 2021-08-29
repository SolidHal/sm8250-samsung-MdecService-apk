.class public interface abstract Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;
.super Ljava/lang/Object;
.source "MdecInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;,
        Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;,
        Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;,
        Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;,
        Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;,
        Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    }
.end annotation


# virtual methods
.method public abstract addPrimaryDevice(ILjava/lang/String;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract addSecondaryDevice(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract deletePrimaryDevice(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract deleteProvisionedDevice(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract deleteSecondaryDevice(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract deregisterAddDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract deregisterDeleteDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract deregisterPersonalInfoEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract deregisterRefreshEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract deregisterSwitchChangedEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract deregisterUpdateInfoEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract getDeviceInfo(Ljava/lang/String;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;
.end method

.method public abstract getPrimaryDeviceList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryDeviceListForDelete()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProvisionedDeviceList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSecondaryDeviceList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract refresh(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract registerAddDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract registerDeleteDeviceEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract registerPersonalInfoEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract registerRefreshEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract registerSwitchChangedEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract registerUpdateInfoEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract setCMCActivation()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract setCMCDeactivation()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract setSdCallServiceMode(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract setSdMessageServiceMode(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract setSdServiceMode(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract updatePDPAgreement()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract updatePhoneNumber(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method

.method public abstract updatePrimaryDeviceForSimSlotChanged(ILjava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
.end method
