.class Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$7;
.super Landroid/telephony/PhoneStateListener;
.source "MdecEventListenerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$7;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$7;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$100(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMobileDataRegState(Landroid/telephony/ServiceState;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceStateChanged, it is not in service return"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->semGetCurrentDataRoamingType()I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$7;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$100(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcNetworkType(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$7;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$100(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->getDataRoamingStatus(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$DATA_ROAMING_STATUS;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$7;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-static {v2}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$200(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceStateChanged: dataRoamingType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " selectedNetworkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " dataRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    const-string v5, "roaming_handled"

    if-ne p1, v3, :cond_3

    .line 10
    sget-object v3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;->useMobileData:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;

    if-ne v0, v3, :cond_3

    sget-object v0, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$DATA_ROAMING_STATUS;->on:Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigEnums$DATA_ROAMING_STATUS;

    if-ne v1, v0, :cond_3

    .line 11
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceStateChanged: Roaming confirmed"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$7;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$200(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    return-void

    .line 13
    :cond_2
    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$7;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$100(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->setNetworkTypeForSlotId(Landroid/content/Context;II)V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$7;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;->wifiOnly:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcNetworkType(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_NETWORK_TYPE;)V

    .line 17
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$7;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->postNotificationForRoaming(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 18
    :cond_4
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    :goto_0
    return-void
.end method
