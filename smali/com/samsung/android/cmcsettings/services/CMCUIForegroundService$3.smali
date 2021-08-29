.class Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;
.super Ljava/lang/Object;
.source "CMCUIForegroundService.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetCMCActivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    .line 2
    :goto_0
    iget-object p3, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-virtual {p3}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;Z)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$100(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_HAS_NO_PRIMARY_DEVICE:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq p2, p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$500(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public onSetCMCDeactivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    .line 2
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-virtual {p2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSamsungAccountLogin(Landroid/content/Context;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 3
    invoke-static {}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$600()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetCMCDeactivation: set DB cmc_activation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-virtual {p2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;Z)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSetCMCDeactivation: SA not logged in set DB cmc_activation = 0"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;Z)V

    .line 7
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$100(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V

    .line 8
    invoke-static {}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UIService: onSetCMCDeactivation: cmc_activation_intermediate 0"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$500(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    return-void
.end method

.method public onSetSdCallServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p2}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$500(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setDeviceCallActivation(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p2, p3}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$700(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p2}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$500(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)Landroid/content/Context;

    move-result-object p2

    const-string p3, "callforking"

    invoke-static {p2, p1, p3, p4}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setActiveServicesForSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$100(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V

    return-void
.end method

.method public onSetSdMessageServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p2}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$500(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setDeviceMessageActivation(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p2, p3}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$700(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p2}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$500(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)Landroid/content/Context;

    move-result-object p2

    const-string p3, "message"

    invoke-static {p2, p1, p3, p4}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setActiveServicesForSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$100(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V

    return-void
.end method

.method public onSetSdServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-virtual {p2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setDeviceActivation(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService$3;->this$0:Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;->access$100(Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;)V

    return-void
.end method
