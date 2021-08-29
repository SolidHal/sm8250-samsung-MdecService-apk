.class public Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;
.super Ljava/lang/Object;
.source "ServiceStateWrapper.java"


# static fields
.field public static final LTE_IS_EB_SUPPORTED_NOT_SUPPORT:I = 0x2

.field public static final LTE_IS_EB_SUPPORTED_SUPPORT:I = 0x1

.field public static final LTE_IS_EB_SUPPORTED_UKNOWN:I


# instance fields
.field private final mServiceState:Landroid/telephony/ServiceState;


# direct methods
.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->describeContents()I

    move-result v0

    return v0
.end method

.method public getDataNetworkType()I
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "getDataNetworkType"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v0
.end method

.method public getDataRegState()I
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/ServiceState;

    const-string v1, "getDataRegState"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method public getDataRoaming()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "getDataRoaming"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v0
.end method

.method public getIsManualSelection()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoaming()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType()I
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "getVoiceNetworkType"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v0
.end method

.method public getVoiceRegState()I
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/ServiceState;

    const-string v1, "getVoiceRegState"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method public getVoiceRoaming()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "getVoiceRoaming"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v0
.end method

.method public isPsOnlyReg()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "isPsOnlyReg"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v0
.end method

.method public setIsManualSelection(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRoaming(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    return-void
.end method

.method public setState(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setState(I)V

    return-void
.end method

.method public setStateOff()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    return-void
.end method

.method public setStateOutOfService()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
