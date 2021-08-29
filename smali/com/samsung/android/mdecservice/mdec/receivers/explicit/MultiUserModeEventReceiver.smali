.class public Lcom/samsung/android/mdecservice/mdec/receivers/explicit/MultiUserModeEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiUserModeEventReceiver.java"


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

    const-class v1, Lcom/samsung/android/mdecservice/mdec/receivers/explicit/MultiUserModeEventReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/receivers/explicit/MultiUserModeEventReceiver;->LOG_TAG:Ljava/lang/String;

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
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result p2

    if-nez p2, :cond_1

    .line 3
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/receivers/explicit/MultiUserModeEventReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onReceive MUM event (OWNER) - restore CMC switch"

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->restoreCMCActivation(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p2, Lcom/samsung/android/mdecservice/mdec/receivers/explicit/MultiUserModeEventReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onReceive MUM event (Subuser) - turn off CMC swtich"

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/utils/CommonUtils;->disableCMCForMPSMorMUM(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
