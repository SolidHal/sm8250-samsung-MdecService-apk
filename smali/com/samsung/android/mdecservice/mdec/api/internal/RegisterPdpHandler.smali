.class public Lcom/samsung/android/mdecservice/mdec/api/internal/RegisterPdpHandler;
.super Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;
.source "RegisterPdpHandler.java"


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

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/RegisterPdpHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/RegisterPdpHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "RegisterPdpHandler"

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->onUpdatePDPAgreement(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/RegisterPdpHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "--> start service"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/RegisterPdpHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "intent is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/RegisterPdpHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/RegisterPdpHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/RegisterPdpHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    return-void

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->registerPdpInternal(Landroid/content/Context;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    move-result-object p1

    .line 8
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_ERROR_NONE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/mdecservice/mdec/api/internal/RegisterPdpHandler;->sendCallback(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    .line 9
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/RegisterPdpHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "--> end service"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
