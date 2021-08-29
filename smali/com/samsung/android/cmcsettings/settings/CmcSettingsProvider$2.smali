.class Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "CmcSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$2;->this$0:Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "local_broadcast_intent_message_key"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "local receiver message: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mdec/CmcSettingsProvider"

    invoke-static {v0, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p2, "sim_state_change_event"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$2;->this$0:Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;

    const-string p2, "updateMenuData"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    return-void
.end method
