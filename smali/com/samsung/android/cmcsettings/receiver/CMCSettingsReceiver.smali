.class public Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CMCSettingsReceiver.java"


# static fields
.field private static final UNKNOWN_INTENT:Ljava/lang/String; = "unknown_intent"


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private doReceiveDefaultDataSubscriptionChange(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "sim_default_data_subscription_change_event"

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->sendMessage(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getPresentSimCount(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDataEnabledSIM(Landroid/content/Context;)I

    move-result v0

    .line 5
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data enabled sim is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Registered sim is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-static {p1, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getNetworkTypeForSlotId(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 8
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isSIMSelectedForDataChanged(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 10
    invoke-static {p1, v2, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->postNotificationForDataSettingChange(Landroid/content/Context;ZI)V

    .line 11
    invoke-static {p1, v2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setSimSelectedForDataChanged(Landroid/content/Context;Z)V

    goto :goto_1

    .line 12
    :cond_4
    :goto_0
    invoke-static {p1, v3, v2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->postNotificationForDataSettingChange(Landroid/content/Context;ZI)V

    .line 13
    invoke-static {p1, v3}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setSimSelectedForDataChanged(Landroid/content/Context;Z)V

    :cond_5
    :goto_1
    const-string v2, " -> "

    const-string v4, "Use mobile data changed : "

    if-ne v0, v1, :cond_6

    .line 14
    invoke-static {p1, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getNetworkTypeForSlotId(Landroid/content/Context;I)I

    move-result v0

    .line 15
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 16
    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->setNetworkType(Landroid/content/Context;I)V

    .line 17
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 18
    :cond_6
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 19
    invoke-static {p1, v1, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->setNetworkTypeForSlotId(Landroid/content/Context;II)V

    .line 20
    invoke-static {p1, v3}, Lcom/samsung/android/cmcsettings/utils/Utils;->setNetworkType(Landroid/content/Context;I)V

    .line 21
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private doReceiveSimStateChangeIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doReceiveSimStateChangeIntent sim state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sim_state_change_event"

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->sendMessage(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x79d7dbfb

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x72b3d739

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "ABSENT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "LOADED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    goto/16 :goto_1

    .line 5
    :cond_4
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p1

    const-string p2, "Empty"

    invoke-interface {p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->updatePhoneNumber(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_1

    .line 6
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSAAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: SIM_STATE_CHANGE_INTENT: saID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getPresentSimCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 9
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 10
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSAinOOBEHistory(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->isRegionChanged(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 12
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Region not same"

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->postNotificationForReAuth(Landroid/content/Context;)V

    .line 14
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->clearAll(Landroid/content/Context;)V

    goto :goto_1

    .line 15
    :cond_6
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSAinOOBEHistory(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 16
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SA with same region was already registered, hence set oobe "

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setOOBE(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;)V

    .line 18
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result p2

    .line 19
    invoke-static {p2, p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getValidMsisdnForEng(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->updatePhoneNumber(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    :cond_7
    :goto_1
    return-void
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Broadcasting message for sim state change"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sim_state_change_local_broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "local_broadcast_intent_message_key"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb/l/a/a;->b(Landroid/content/Context;)Lb/l/a/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lb/l/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public isRegionChanged(Landroid/content/Context;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSAAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->getSAStringinOOBEHistory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "historyString != null for SA "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 6
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Region in history is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Region changed "

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Region not changed "

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v0, "No history return false"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "unknown_intent"

    .line 2
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() : action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    goto :goto_0

    :sswitch_1
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v7

    goto :goto_0

    :sswitch_2
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v5

    goto :goto_0

    :sswitch_3
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v3

    goto :goto_0

    :sswitch_4
    const-string v2, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v6

    :cond_3
    :goto_0
    if-eqz v1, :cond_b

    if-eq v1, v6, :cond_a

    if-eq v1, v7, :cond_9

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_4

    goto/16 :goto_2

    .line 4
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 5
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v0, "mCallAppChangeReceiver"

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->showToastForDefaultApps(Landroid/content/Context;)V

    goto :goto_2

    :cond_6
    const-string v0, "reason"

    .line 7
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v7, :cond_7

    .line 8
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->dismissAllNotifications(Landroid/content/Context;)V

    .line 9
    :cond_7
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->isEmOrUpsmEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 10
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->disableCMCForMPSMorMUM(Landroid/content/Context;)V

    goto :goto_2

    .line 11
    :cond_8
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->initCMC(Landroid/content/Context;)V

    goto :goto_2

    .line 12
    :cond_9
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->updateAllChannels(Landroid/content/Context;)V

    goto :goto_2

    .line 13
    :cond_a
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->doReceiveDefaultDataSubscriptionChange(Landroid/content/Context;)V

    goto :goto_2

    .line 14
    :cond_b
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_c

    return-void

    .line 15
    :cond_c
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getPhoneSimSlotCount(Landroid/content/Context;)I

    move-result p2

    if-ge p2, v7, :cond_d

    .line 16
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSingleSimState()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 17
    :cond_d
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMultiSimState(I)Ljava/lang/String;

    move-result-object p2

    .line 18
    :goto_1
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getPrevSimStateOnSimStateChangeEvent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 19
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM state received already "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_e
    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setCurSimStateOnSimStateChangeEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cmcsettings/receiver/CMCSettingsReceiver;->doReceiveSimStateChangeIntent(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x23ed30df -> :sswitch_4
        -0xdb21ee7 -> :sswitch_3
        -0x8cbe44f -> :sswitch_2
        -0x122164c -> :sswitch_1
        0x1d5d6b2 -> :sswitch_0
    .end sparse-switch
.end method
