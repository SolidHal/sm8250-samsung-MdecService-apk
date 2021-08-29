.class Lcom/samsung/android/mdecservice/authentication/SaService$SACallback;
.super Lc/d/a/a/a$a;
.source "SaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/authentication/SaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SACallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/authentication/SaService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdecservice/authentication/SaService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$SACallback;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-direct {p0}, Lc/d/a/a/a$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdecservice/authentication/SaService;Lcom/samsung/android/mdecservice/authentication/SaService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/authentication/SaService$SACallback;-><init>(Lcom/samsung/android/mdecservice/authentication/SaService;)V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 6

    if-eqz p2, :cond_0

    const-string p1, "access_token"

    .line 1
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "user_id"

    .line 2
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "mcc"

    .line 3
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "api_server_url"

    .line 4
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "region_mcc"

    .line 5
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Success to get SaInfo : guid("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "), accessToken("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") apiServerUrl("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspectorForUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "), mcc("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "), regionMcc("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$SACallback;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-virtual {p1}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mdecservice/authentication/SaBroadcastSender;->sendSamsungAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "error_code"

    .line 10
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Recv error from SA client : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "SAC_0402"

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 13
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$SACallback;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-virtual {p1}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/samsung/android/mdecservice/authentication/SaBroadcastSender;->sendSamsungAccountError(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const-string p2, "SAC_0204"

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$SACallback;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-virtual {p1}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/samsung/android/mdecservice/authentication/SaBroadcastSender;->sendSamsungAccountError(Landroid/content/Context;I)V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$SACallback;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-virtual {p1}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->postNotificationForReAuth(Landroid/content/Context;)V

    .line 17
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$SACallback;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-virtual {p1}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcOobe(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    move-result-object p1

    sget-object p3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    if-ne p1, p3, :cond_2

    .line 18
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$SACallback;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-virtual {p1}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    invoke-static {p1, p3}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcOobe(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;)V

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$SACallback;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-virtual {p1}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p1, p3, p2}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->setActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;Z)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p3, "There is some internal error in Samsung Account Client"

    invoke-static {p1, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$SACallback;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-virtual {p1}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/authentication/SaBroadcastSender;->sendSamsungAccountError(Landroid/content/Context;I)V

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$SACallback;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$600(Lcom/samsung/android/mdecservice/authentication/SaService;)V

    return-void
.end method

.method public onReceiveAuthCode(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveChecklistValidation(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveDisclaimerAgreement(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceivePasswordConfirmation(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveSCloudAccessToken(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
