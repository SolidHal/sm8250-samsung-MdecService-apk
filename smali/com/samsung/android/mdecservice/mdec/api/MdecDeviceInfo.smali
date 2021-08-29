.class public Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;
.super Ljava/lang/Object;
.source "MdecDeviceInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private accountType:Ljava/lang/String;

.field private activeServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;",
            ">;"
        }
    .end annotation
.end field

.field private applicationData:Ljava/lang/String;

.field private deviceCategory:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

.field private deviceCategoryStr:Ljava/lang/String;

.field private deviceData:Lcom/samsung/android/mdeccommon/obj/DeviceData;

.field private deviceId:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private lineId:Ljava/lang/String;

.field private lineOwner:Ljava/lang/String;

.field private lineOwnerDeviceId:Ljava/lang/String;

.field private modelNumber:Ljava/lang/String;

.field private msisdn:Ljava/lang/String;

.field private pushToken:Ljava/lang/String;

.field private pushType:Ljava/lang/String;

.field private removeCondition:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveServices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->activeServices:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getApplicationData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->applicationData:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCategory()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->deviceCategory:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    return-object v0
.end method

.method public getDeviceCategoryStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->deviceCategoryStr:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->deviceData:Lcom/samsung/android/mdeccommon/obj/DeviceData;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->lineId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineOwner()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->lineOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getLineOwnerDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->lineOwnerDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->modelNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->pushToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPushType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->pushType:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoveCondition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->removeCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getSimSlotIndex()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->lineId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "lineId is empty"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->lineId:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    array-length v2, v0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 5
    :try_start_0
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return v1

    .line 7
    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "invalid line Id"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->accountType:Ljava/lang/String;

    return-void
.end method

.method public setActiveServices(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->activeServices:Ljava/util/ArrayList;

    return-void
.end method

.method public setApplicationData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->applicationData:Ljava/lang/String;

    return-void
.end method

.method public setDeviceCategory(Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->deviceCategory:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    return-void
.end method

.method public setDeviceCategoryStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->deviceCategoryStr:Ljava/lang/String;

    return-void
.end method

.method public setDeviceData(Lcom/samsung/android/mdeccommon/obj/DeviceData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->deviceData:Lcom/samsung/android/mdeccommon/obj/DeviceData;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setLineId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->lineId:Ljava/lang/String;

    return-void
.end method

.method public setLineOwner(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->lineOwner:Ljava/lang/String;

    return-void
.end method

.method public setLineOwnerDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->lineOwnerDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setModelNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->modelNumber:Ljava/lang/String;

    return-void
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->msisdn:Ljava/lang/String;

    return-void
.end method

.method public setPushToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->pushToken:Ljava/lang/String;

    return-void
.end method

.method public setPushType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->pushType:Ljava/lang/String;

    return-void
.end method

.method public setRemoveCondition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->removeCondition:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "deviceId:"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "deviceName:"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "deviceCategory:"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->deviceCategory:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "isLineOwner:"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->lineOwner:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "msisdn:"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->msisdn:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "version:"

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "applicationData:"

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->applicationData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "deviceData:"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->deviceData:Lcom/samsung/android/mdeccommon/obj/DeviceData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "pushType:"

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->pushType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "OwnerDeviceId:"

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->lineOwnerDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "services:"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->activeServices:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
