.class Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$2;
.super Landroid/database/ContentObserver;
.source "MdecEventListenerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$2;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataRoamingObserver : selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$2;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$100(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$2;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isDataRoaming(Landroid/content/Context;)Z

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$2;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcNetworkType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$2;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->getDataRoamingStatus(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$DATA_ROAMING_STATUS;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDataRoamingObserver: selectedNetworkIdx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " dataRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;->useMobileData:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$DATA_ROAMING_STATUS;->on:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$DATA_ROAMING_STATUS;

    if-ne v1, v0, :cond_1

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mDataRoamingObserver: Data Roaming confirmed"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$2;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;->wifiOnly:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcNetworkType(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$2;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$100(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->setNetworkTypeForSlotId(Landroid/content/Context;II)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$2;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->postNotificationForRoaming(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
