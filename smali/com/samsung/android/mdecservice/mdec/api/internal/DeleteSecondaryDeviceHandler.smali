.class public Lcom/samsung/android/mdecservice/mdec/api/internal/DeleteSecondaryDeviceHandler;
.super Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;
.source "DeleteSecondaryDeviceHandler.java"


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

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/DeleteSecondaryDeviceHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/DeleteSecondaryDeviceHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "DeleteSecondaryDeviceHandler"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;-><init>(Ljava/lang/String;)V

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
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/DeleteSecondaryDeviceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--> start service"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/DeleteSecondaryDeviceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "intent is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "sd_id"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->sdId:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsDbApiWrapper;->findLineId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->sdId:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_PRIMARY_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onDeleteSecondaryDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->sdId:Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->removeDeviceInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p1

    .line 9
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p1, v0, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->getUserInformationInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p1

    .line 11
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq p1, v0, :cond_2

    .line 12
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/DeleteSecondaryDeviceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserInfomation in DeleteSecondaryDeviceHandler is failed, errorReason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 14
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->sdId:Ljava/lang/String;

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onDeleteSecondaryDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->sdId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onDeleteSecondaryDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    .line 17
    :cond_4
    :goto_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/DeleteSecondaryDeviceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "--> end service"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
