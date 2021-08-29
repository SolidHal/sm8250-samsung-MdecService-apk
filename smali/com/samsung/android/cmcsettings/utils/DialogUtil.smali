.class public Lcom/samsung/android/cmcsettings/utils/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/utils/DialogUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/DialogUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkStatus(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isDataRoaming(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->isDataRoamingOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/platform/PlatformAPI;->isReachToDataLimit(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    goto :goto_0

    :cond_3
    const/4 p0, 0x4

    .line 5
    :goto_0
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/DialogUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkStatus : networkStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static sendBroadcastForNetworkErrorPopup(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.systemui.popup.intent.DATA_CONNECTION_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/DialogUtil;->getNetworkStatus(Landroid/content/Context;)I

    move-result v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
