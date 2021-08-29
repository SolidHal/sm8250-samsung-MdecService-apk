.class public Lcom/samsung/android/mdecservice/nms/config/EntitlementBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EntitlementBroadcastReceiver.java"


# static fields
.field public static final CMC_ACTIVATED:Ljava/lang/String; = "com.samsung.android.mdecservice.CMC_ACTIVATED"

.field public static final CMC_WATCH_ACTIVATED:Ljava/lang/String; = "com.samsung.android.mdecservice.CMC_WATCH_ACTIVATED"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/nms/config/EntitlementBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->init(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->isCmcActivated()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.samsung.android.mdecservice.CMC_ACTIVATED"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.mdecservice.CMC_WATCH_ACTIVATED"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/EntitlementBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Start NmsService"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    const-class v1, Lcom/samsung/android/mdecservice/nms/NmsService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 11
    sget-object p2, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->semStartServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    :goto_0
    return-void
.end method
