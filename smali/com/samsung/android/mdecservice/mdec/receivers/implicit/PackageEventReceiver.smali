.class public Lcom/samsung/android/mdecservice/mdec/receivers/implicit/PackageEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageEventReceiver.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/PackageEventReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/PackageEventReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isGearManagerPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/PackageEventReceiver;->LOG_TAG:Ljava/lang/String;

    const-string p2, "null context"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/PackageEventReceiver;->LOG_TAG:Ljava/lang/String;

    const-string p2, "watch manager is installed"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 5
    :catch_0
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/PackageEventReceiver;->LOG_TAG:Ljava/lang/String;

    const-string p2, "watch manager is not installed"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private startMdecGearActivationManager(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/PackageEventReceiver;->LOG_TAG:Ljava/lang/String;

    const-string p2, "null context"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/PackageEventReceiver;->LOG_TAG:Ljava/lang/String;

    const-string p2, "intent is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/PackageEventReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive intent - action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/PackageEventReceiver;->LOG_TAG:Ljava/lang/String;

    const-string p2, "intent.getData() is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    .line 8
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/PackageEventReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packagename : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.watchmanager"

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/PackageEventReceiver;->isGearManagerPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "uninstall_gear_manager"

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/PackageEventReceiver;->startMdecGearActivationManager(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p2, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 15
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 16
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 17
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/receivers/implicit/PackageEventReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[My Package replaced] name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " code: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 18
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 19
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/services/MdecEventHandler;->initCMC(Landroid/content/Context;)V

    .line 20
    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-nez p2, :cond_3

    .line 21
    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)J

    move-result-wide v0

    .line 22
    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->message:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;J)V

    .line 23
    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->call:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivationTime(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;J)V

    .line 24
    invoke-static {p1}, Lcom/samsung/android/mdecservice/mdec/utils/MdecUtils;->printSettingsDbLogs(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return-void
.end method
