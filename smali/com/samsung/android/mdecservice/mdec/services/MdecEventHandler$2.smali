.class Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler$2;
.super Landroid/database/ContentObserver;
.source "MdecEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler$2;->this$0:Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCMCActivationObserver: selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler$2;->this$0:Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler$2;->this$0:Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/MdecBroadcastSender;->SendCMCActivatedIntent(Landroid/content/Context;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler$2;->this$0:Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/MdecBroadcastSender;->SendCMCDeactivatedIntent(Landroid/content/Context;)V

    :goto_1
    return-void
.end method
