.class public Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;
.super Ljava/lang/Object;
.source "EntitlementProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile$ServiceType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mActiveServices:Lcom/samsung/android/mdecservice/nms/config/ActiveServices;

.field private mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

.field private mLineId:Ljava/lang/String;

.field private mNmsServerAddr:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mNmsServerAddr:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceId:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    .line 6
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mLineId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getPhoneId()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mPhoneId:I

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getNmsServerAddr()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mNmsServerAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    if-ne v1, v2, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v1, v2, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getActiveServiceSet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getActiveServiceSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->getLineId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mLineId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 11
    :cond_2
    :goto_0
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->LOG_TAG:Ljava/lang/String;

    const-string v1, "object passed is NULL or of a different type than intended"

    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getActiveServiceSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mActiveServices:Lcom/samsung/android/mdecservice/nms/config/ActiveServices;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/config/ActiveServices;->getEnabledServiceSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    return-object v0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mLineId:Ljava/lang/String;

    return-object v0
.end method

.method public getNmsServerAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mNmsServerAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mPhoneId:I

    return v0
.end method

.method public setActiveServices(Lcom/samsung/android/mdecservice/nms/config/ActiveServices;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mActiveServices:Lcom/samsung/android/mdecservice/nms/config/ActiveServices;

    return-void
.end method

.method public setDeviceCategory(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    return-void
.end method

.method public setLineId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mLineId:Ljava/lang/String;

    return-void
.end method

.method public setNmsServerAddr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mNmsServerAddr:Ljava/lang/String;

    return-void
.end method

.method public setPhoneId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mPhoneId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EntitlementProfile [mPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNmsServerAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mNmsServerAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLineId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mLineId:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mActiveServices:Lcom/samsung/android/mdecservice/nms/config/ActiveServices;

    const-string v2, "]"

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mActiveServices="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;->mActiveServices:Lcom/samsung/android/mdecservice/nms/config/ActiveServices;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/config/ActiveServices;->getEnabledServiceSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
