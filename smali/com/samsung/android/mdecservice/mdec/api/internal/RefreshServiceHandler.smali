.class public Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;
.super Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;
.source "RefreshServiceHandler.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "RefreshServiceHandler"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private doRefreshProcess(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5

    const-string v0, "is_need_callback"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getAllInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 4
    invoke-direct {p0, v4, v2, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getStoredDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "storedDeviceId is empty"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v4, p1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    return-void

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->updateOwnDeviceInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->findLineId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "line is not exist"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    return-void

    :cond_2
    const-string v3, "pd"

    .line 14
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 15
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    return-void

    .line 16
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->updatePhoneNumber(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->updateWatchPdBtId(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->refreshProcedure(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private getNeedUpdateDeviceData(Landroid/content/Context;Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;Ljava/lang/String;)Lcom/samsung/android/mdeccommon/obj/DeviceData;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->makeDeviceData(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->sd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne v0, v1, :cond_4

    .line 4
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v1

    .line 6
    invoke-virtual {p2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isMessageActivation()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    .line 7
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isCallActivation()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    :goto_1
    if-ne v0, v2, :cond_3

    if-eq v1, v3, :cond_4

    .line 8
    :cond_3
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, v0, v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 9
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, v0, v3}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    .line 10
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->getDeviceDataVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.0.10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 11
    invoke-direct {p0, p1, p3, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->makeDeviceData(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getHashedBluetoothMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->getHashedBtMacAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 14
    invoke-direct {p0, p1, p3, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->makeDeviceData(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method private makeActiveServiceStringFromListForSd(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeActiveServiceStringFromListForSd"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    if-eqz p2, :cond_d

    .line 2
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getPrimaryDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isRespectiveControl()Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 8
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v2, v1

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    .line 9
    sget-object v4, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    move v1, v5

    goto :goto_1

    .line 10
    :cond_3
    sget-object v4, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v5

    goto :goto_1

    :cond_4
    const-string p2, " "

    if-eqz p1, :cond_7

    if-eqz v1, :cond_5

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->msglogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-eqz v2, :cond_c

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllogv2:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->message:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    if-eqz v2, :cond_a

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->callforking:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :cond_a
    if-nez v1, :cond_b

    if-eqz v2, :cond_c

    .line 19
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;->calllog:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$ServiceMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    :goto_2
    return-object v0

    .line 20
    :cond_d
    :goto_3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "activeServiceList is null or empty"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private makeDeviceData(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/mdeccommon/obj/DeviceData;
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    new-instance v2, Lcom/samsung/android/mdeccommon/obj/DeviceData;

    invoke-direct {v2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;-><init>()V

    const-string v3, "1.0.10"

    .line 2
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setDeviceDataVersion(Ljava/lang/String;)V

    const-string v3, ""

    .line 3
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setHashedWifiMacAddress(Ljava/lang/String;)V

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getHashedBluetoothMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setHashedBtMacAddress(Ljava/lang/String;)V

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdeccommon/utils/SimUtils;->getPhoneSimSlotCount(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setCellularDevice(Z)V

    const-string v3, "pd"

    .line 6
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v6, v5

    invoke-virtual {v2, v6}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setMigrateAllowed(Z)V

    .line 7
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-virtual {v2, v1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setRemoveControlAllowed(Z)V

    .line 8
    invoke-virtual {v2, v5}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setActivationControlAllowed(Z)V

    const-string v1, "com.samsung.android.mdecservice"

    .line 9
    invoke-virtual {v2, v1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setPackageNameForNativeApp(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.cmcsettings.view.CMCMainActivity"

    .line 10
    invoke-virtual {v2, v1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setActivityNameForNativeApp(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v5}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setMsgSyncSupported(Z)V

    .line 12
    invoke-virtual {v2, v5}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setCallLogSyncSupported(Z)V

    .line 13
    invoke-virtual {v2, v5}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setCallForkingSupported(Z)V

    .line 14
    invoke-virtual {v2, v5}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setRespectiveControl(Z)V

    .line 15
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v1

    .line 16
    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v3}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v3

    .line 17
    sget-object v6, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v6}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)J

    move-result-wide v6

    .line 18
    sget-object v8, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v8}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v8

    .line 19
    sget-object v9, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v9}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)J

    move-result-wide v9

    if-eqz p3, :cond_2

    .line 20
    sget-object v11, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne v3, v11, :cond_1

    .line 21
    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v3, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    move-object v3, v1

    .line 22
    :cond_1
    sget-object v11, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne v8, v11, :cond_2

    .line 23
    sget-object v8, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v8, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    goto :goto_1

    :cond_2
    move-object v1, v8

    .line 24
    :goto_1
    sget-object v8, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    const-wide/16 v11, 0x0

    const-wide/16 v13, -0x1

    if-ne v3, v8, :cond_4

    cmp-long v8, v6, v13

    if-eqz v8, :cond_3

    cmp-long v6, v6, v11

    if-nez v6, :cond_5

    .line 25
    :cond_3
    sget-object v6, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v6}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->setActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)V

    goto :goto_2

    .line 26
    :cond_4
    sget-object v6, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v6}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->resetActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)V

    .line 27
    :cond_5
    :goto_2
    sget-object v6, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne v1, v6, :cond_7

    cmp-long v6, v9, v13

    if-eqz v6, :cond_6

    cmp-long v6, v9, v11

    if-nez v6, :cond_8

    .line 28
    :cond_6
    sget-object v6, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v6}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->setActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)V

    goto :goto_3

    .line 29
    :cond_7
    sget-object v6, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v6}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->resetActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)V

    .line 30
    :cond_8
    :goto_3
    sget-object v6, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {v0, v6}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v0

    sget-object v6, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne v0, v6, :cond_9

    move v0, v5

    goto :goto_4

    :cond_9
    move v0, v4

    :goto_4
    invoke-virtual {v2, v0}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setActivation(Z)V

    .line 31
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne v3, v0, :cond_a

    move v0, v5

    goto :goto_5

    :cond_a
    move v0, v4

    :goto_5
    invoke-virtual {v2, v0}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setMessageActivation(Z)V

    .line 32
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne v1, v0, :cond_b

    move v4, v5

    :cond_b
    invoke-virtual {v2, v4}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setCallActivation(Z)V

    return-object v2
.end method

.method private refreshProcedure(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p3

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getProvisionedDeviceInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v13

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v12, 0x0

    if-eq v13, v1, :cond_0

    .line 3
    invoke-direct {v0, v12, v13, v14}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    return-void

    .line 4
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getProvisionedDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v16

    .line 5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    if-eqz v18, :cond_6

    .line 6
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->makeActiveServiceStringFromListForSd(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getModelNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getPushType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getPushToken()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v11

    const-string v5, "Tablet"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v11}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->addDeviceInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ALREADY_EXIST_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDevice in RefreshService is failed, errorReason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {v0, v12, v1, v14}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    return-void

    .line 11
    :cond_2
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->removeProvisionedDevicesInternal(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 12
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_PROVISIONED_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v1, v2, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeProvisionedDevice in RefreshService is failed, errorReason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-direct {v0, v12, v1, v14}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    return-void

    .line 15
    :cond_4
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v12, v18

    move-object/from16 v21, v13

    move/from16 v13, v19

    move v15, v14

    move-object/from16 v14, v20

    invoke-static/range {v1 .. v14}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 16
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v1, v2, :cond_5

    .line 17
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUpdateDevice in RefreshService is failed, errorReason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 18
    invoke-direct {v0, v2, v1, v15}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    return-void

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    move v2, v12

    move-object/from16 v21, v13

    move v15, v14

    :goto_3
    move v12, v2

    move v14, v15

    move-object/from16 v13, v21

    move-object/from16 v15, p1

    goto/16 :goto_0

    :cond_7
    move v2, v12

    move-object/from16 v21, v13

    move v15, v14

    .line 19
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v12, 0x1

    if-lez v1, :cond_9

    .line 20
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getAllInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 21
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v3, v1, :cond_8

    goto :goto_4

    :cond_8
    move v12, v2

    :goto_4
    invoke-direct {v0, v12, v1, v15}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    goto :goto_5

    :cond_9
    move-object/from16 v1, v21

    .line 22
    invoke-direct {v0, v12, v1, v15}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    :goto_5
    return-void
.end method

.method private sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onRefresh(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    :cond_0
    return-void
.end method

.method private updateOwnDeviceInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "MdecDeviceInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p3}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getDeviceInfoFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    .line 3
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->updateProcessInternal(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_0
    sget-object p4, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "MdecDeviceInfo is null"

    invoke-static {p4, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getProvisionedDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    if-nez v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    move-object v0, v2

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 10
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->updateProcessForProvisioned(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updatePhoneNumber(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getPrimaryDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "pdInfoList size is 0"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    if-nez v0, :cond_1

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "pdInfo is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdeccommon/utils/GlobalSettingsDataDao;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ")"

    if-nez v3, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getSimSelected()I

    move-result v1

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getValidMsisdnForEng(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 13
    sget-object v6, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "curMsisdn empty?("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "), storedMsisdn empty?("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    if-nez v5, :cond_5

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateLineInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Both msisdns are same"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateLineInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    :cond_5
    :goto_0
    return-void

    .line 18
    :cond_6
    :goto_1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid device Id : myId("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), storedId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateProcessForProvisioned(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v11, p1

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getFcmPushTokenFromDb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "display_name"

    move-object/from16 v3, p2

    .line 2
    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getPushToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sd"

    move-object/from16 v6, p3

    .line 5
    invoke-direct {p0, v11, v6, v5}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->getNeedUpdateDeviceData(Landroid/content/Context;Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;Ljava/lang/String;)Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v7

    :goto_0
    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v7

    .line 8
    :goto_1
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDeviceNameAndToken(provisioned device) : deviceName("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "), fcmToken("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    if-nez v5, :cond_2

    return-void

    :cond_2
    if-nez v2, :cond_3

    .line 9
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v9, v2

    if-nez v1, :cond_4

    .line 10
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getPushToken()Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v10, v1

    if-nez v5, :cond_5

    .line 11
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v1

    move-object v12, v1

    goto :goto_2

    :cond_5
    move-object v12, v5

    .line 12
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v11, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->makeActiveServiceStringFromListForSd(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v13

    .line 13
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(modified data)updateDeviceNameAndToken(provisioned device) : deviceName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), activeServices("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getModelNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v14, 0x1

    const-string v4, "Tablet"

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object v5, v9

    move-object v6, v13

    move-object v8, v10

    move v9, v14

    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->addProvisionedDevicesInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 15
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v1, v2, :cond_6

    .line 16
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getProvisionedDeviceInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 17
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v1, v2, :cond_7

    .line 18
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProvisionedDevice in RefreshService is failed, errorReason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 19
    :cond_6
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addProvisionedDevice in RefreshService is failed, errorReason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private updateProcessInternal(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v1, p5

    .line 1
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateProcessInternal"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getFcmPushTokenFromDb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "display_name"

    move-object/from16 v4, p2

    .line 3
    invoke-virtual {v4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getPushToken()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceCategoryStr()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p3

    .line 7
    invoke-direct {v0, v15, v7, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->getNeedUpdateDeviceData(Landroid/content/Context;Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;Ljava/lang/String;)Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v14

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, v8

    :goto_0
    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object v9, v8

    .line 10
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Tablet"

    goto :goto_2

    :cond_2
    const-string v2, "Phone"

    :goto_2
    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object v5, v8

    :goto_3
    const-string v2, "sd"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->makeActiveServiceStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v15, v2}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->makeActiveServiceStringFromListForSd(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 15
    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "activeServices : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", newActiveServices : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object v6, v8

    .line 17
    :goto_4
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDeviceNameAndToken(normal device) : deviceName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), fcmToken("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), deviceCategory("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), needUpdateActiveServices("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_5

    if-nez v9, :cond_5

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    if-nez v14, :cond_5

    return-void

    .line 18
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    invoke-static/range {v1 .. v14}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 19
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne v1, v2, :cond_6

    .line 20
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v1

    .line 21
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq v1, v2, :cond_7

    .line 22
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserInfomation in RefreshService is failed, errorReason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 23
    :cond_6
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateOwnDeviceInfo in RefreshService is failed, errorReason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_5
    return-void
.end method

.method private updateWatchPdBtId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 18

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getSecondaryDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    if-eqz v1, :cond_7

    .line 3
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceCategory()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    move-result-object v5

    .line 6
    sget-object v6, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->watch:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_3

    move-object v9, v4

    move v4, v7

    move v7, v8

    goto :goto_1

    .line 7
    :cond_3
    sget-object v6, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->bt_watch:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    if-ne v5, v6, :cond_5

    .line 8
    invoke-virtual {v2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isUseCellularDevice()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9
    invoke-virtual {v2, v7}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setCellularDevice(Z)V

    :cond_4
    const-string v4, "Watch"

    move-object v9, v4

    move v4, v8

    move v7, v4

    goto :goto_1

    :cond_5
    move-object v9, v4

    move v4, v7

    :goto_1
    if-eqz v7, :cond_0

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->getHashedBluetoothMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v2}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->getPdBtMac()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 12
    invoke-virtual {v2, v5}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->setPdBtMac(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move v8, v4

    :goto_2
    if-eqz v8, :cond_0

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v8, v9

    move-object v9, v1

    move-object/from16 v17, v2

    invoke-static/range {v4 .. v17}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateDeviceInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/samsung/android/mdeccommon/obj/DeviceData;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    goto/16 :goto_0

    :cond_7
    move-object/from16 v3, p2

    goto/16 :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--> start service"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "intent is null"

    invoke-static {p1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "context is null"

    invoke-static {p1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    return-void

    .line 7
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->pd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;->sd:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    if-ne v0, v1, :cond_3

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->doRefreshProcess(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 11
    :cond_3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/RefreshServiceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "--> end service"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
