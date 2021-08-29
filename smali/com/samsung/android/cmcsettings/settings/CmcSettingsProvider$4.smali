.class Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$4;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$4;->this$0:Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings: mCMCForegroundServiceRunningObserver: selfChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mdec/CmcSettingsProvider"

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider$4;->this$0:Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;

    const-string v0, "get_menu_list"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/samsung/android/cmcsettings/settings/CmcSettingsProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
