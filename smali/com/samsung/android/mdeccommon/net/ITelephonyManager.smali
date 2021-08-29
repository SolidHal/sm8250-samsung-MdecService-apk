.class public interface abstract Lcom/samsung/android/mdeccommon/net/ITelephonyManager;
.super Ljava/lang/Object;
.source "ITelephonyManager.java"


# virtual methods
.method public abstract clearCache()V
.end method

.method public abstract getAidForAppType(I)Ljava/lang/String;
.end method

.method public abstract getAllCellInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBtid()Ljava/lang/String;
.end method

.method public abstract getCallState()I
.end method

.method public abstract getCallState(I)I
.end method

.method public abstract getCellLocationBySubId(I)Landroid/telephony/CellLocation;
.end method

.method public abstract getCurrentPhoneTypeForSlot(I)I
.end method

.method public abstract getDataNetworkType()I
.end method

.method public abstract getDataNetworkType(I)I
.end method

.method public abstract getDataServiceState()I
.end method

.method public abstract getDataServiceState(I)I
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceId(I)Ljava/lang/String;
.end method

.method public abstract getGroupIdLevel1()Ljava/lang/String;
.end method

.method public abstract getGroupIdLevel1(I)Ljava/lang/String;
.end method

.method public abstract getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
.end method

.method public abstract getIsimDomain()Ljava/lang/String;
.end method

.method public abstract getIsimDomain(I)Ljava/lang/String;
.end method

.method public abstract getIsimImpi()Ljava/lang/String;
.end method

.method public abstract getIsimImpi(I)Ljava/lang/String;
.end method

.method public abstract getIsimImpu()[Ljava/lang/String;
.end method

.method public abstract getIsimImpu(I)[Ljava/lang/String;
.end method

.method public abstract getIsimPcscf()[Ljava/lang/String;
.end method

.method public abstract getKeyLifetime()Ljava/lang/String;
.end method

.method public abstract getLine1Number()Ljava/lang/String;
.end method

.method public abstract getMsisdn()Ljava/lang/String;
.end method

.method public abstract getMsisdnByPhoneId(I)Ljava/lang/String;
.end method

.method public abstract getMsisdnbySubId(I)Ljava/lang/String;
.end method

.method public abstract getNetworkCountryIso()Ljava/lang/String;
.end method

.method public abstract getNetworkCountryIso(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperator(I)Ljava/lang/String;
.end method

.method public abstract getNetworkType()I
.end method

.method public abstract getNetworkTypeName(I)Ljava/lang/String;
.end method

.method public abstract getPhoneCount()I
.end method

.method public abstract getRand()[B
.end method

.method public abstract getSimCountryIso()Ljava/lang/String;
.end method

.method public abstract getSimCountryIsoForPhone(I)Ljava/lang/String;
.end method

.method public abstract getSimOperatorName(I)Ljava/lang/String;
.end method

.method public abstract getSimSerialNumber()Ljava/lang/String;
.end method

.method public abstract getSimSerialNumber(I)Ljava/lang/String;
.end method

.method public abstract getSimState()I
.end method

.method public abstract getSubscriberId()Ljava/lang/String;
.end method

.method public abstract getSubscriberId(I)Ljava/lang/String;
.end method

.method public abstract getSubscriberIdForUiccAppType(II)Ljava/lang/String;
.end method

.method public abstract getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVoiceNetworkType()I
.end method

.method public abstract getVoiceNetworkType(I)I
.end method

.method public abstract hasIsim()Z
.end method

.method public abstract isGbaSupported()Z
.end method

.method public abstract isGbaSupported(I)Z
.end method

.method public abstract isNetworkRoaming()Z
.end method

.method public abstract isNetworkRoaming(I)Z
.end method

.method public abstract setCallState(I)V
.end method

.method public abstract setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPreferredNetworkType(II)Z
.end method

.method public abstract setRadioPower(Z)V
.end method

.method public abstract setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract validateMsisdn()Z
.end method
