.class public Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;
.super Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;
.source "UpdatePhoneNumberHandler.java"


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

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UpdatePhoneNumberHandler"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private doUpdatePhoneNumberProcess(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getUserInformation failed"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->getPrimaryDeviceList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gtz v1, :cond_1

    .line 7
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "pdInfoList is 0"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_PRIMARY_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v3, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    if-nez v0, :cond_2

    .line 10
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "pdInfo is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_PRIMARY_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v3, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    :cond_2
    const-string v1, "cur_msisdn"

    .line 12
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 16
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Both msisdns are empty"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v3, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateLineInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p2

    .line 19
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p2, v0, :cond_5

    .line 20
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p1

    .line 21
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p1, p2, :cond_4

    move v2, v3

    :cond_4
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_0

    .line 22
    :cond_5
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 24
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Both msisdns are same"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-virtual {p1, v3, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onUpdatePhoneNumber(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_0

    .line 26
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->updateLineInfoInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p2

    .line 27
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p2, v0, :cond_9

    .line 28
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p1

    .line 29
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p1, p2, :cond_8

    move v2, v3

    :cond_8
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_0

    .line 30
    :cond_9
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    :goto_0
    return-void
.end method

.method private sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onUpdatePhoneNumber(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--> start service"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "intent is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 7
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->doUpdatePhoneNumberProcess(Landroid/content/Context;Landroid/content/Intent;)V

    .line 8
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/UpdatePhoneNumberHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "--> end service"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
