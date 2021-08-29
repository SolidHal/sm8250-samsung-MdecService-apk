.class public Lcom/samsung/android/mdecservice/mdec/MdecBroadcastSender;
.super Ljava/lang/Object;
.source "MdecBroadcastSender.java"


# static fields
.field public static final CMC_ACTIVATED:Ljava/lang/String; = "com.samsung.android.mdecservice.CMC_ACTIVATED"

.field public static final CMC_DEACTIVATED:Ljava/lang/String; = "com.samsung.android.mdecservice.CMC_DEACTIVATED"

.field public static final CMC_DEVICE_CHANGED:Ljava/lang/String; = "com.samsung.android.mdecservice.CMC_DEVICE_CHANGED"

.field public static final CMC_LINE_CHANGED:Ljava/lang/String; = "com.samsung.android.mdecservice.CMC_LINE_CHANGED"

.field public static final CMC_WATCH_ACTIVATED:Ljava/lang/String; = "com.samsung.android.mdecservice.CMC_WATCH_ACTIVATED"

.field public static final CMC_WATCH_DEACTIVATED:Ljava/lang/String; = "com.samsung.android.mdecservice.CMC_WATCH_DEACTIVATED"

.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/MdecBroadcastSender;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/MdecBroadcastSender;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SendCMCActivatedIntent(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/MdecBroadcastSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Send Intent : SendCMCActivatedIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdecservice.CMC_ACTIVATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static SendCMCDeactivatedIntent(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/MdecBroadcastSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Send Intent : SendCMCDeactivatedIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdecservice.CMC_DEACTIVATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static SendCMCDeviceChangedIntent(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/MdecBroadcastSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Send Intent : SendCMCDeviceChangedIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdecservice.CMC_DEVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static SendCMCLineChangedIntent(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/MdecBroadcastSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Send Intent : SendCMCLineChangedIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdecservice.CMC_LINE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static SendCMCWatchActivatedIntent(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/MdecBroadcastSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Send Intent : SendCMCWatchActivatedIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdecservice.CMC_WATCH_ACTIVATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static SendCMCWatchDectivatedIntent(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/MdecBroadcastSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Send Intent : SendCMCWatchDectivatedIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdecservice.CMC_WATCH_DEACTIVATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
