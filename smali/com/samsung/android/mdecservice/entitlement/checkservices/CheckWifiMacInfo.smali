.class public Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckWifiMacInfo;
.super Landroid/app/IntentService;
.source "CheckWifiMacInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mReceiver:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckWifiMacInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckWifiMacInfo;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CheckWifiMacInfo"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static getFactoryMacAddrSamsungApi(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getFactoryMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckWifiMacInfo;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start onHandleIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "receiver"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckWifiMacInfo;->mReceiver:Landroid/os/ResultReceiver;

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckWifiMacInfo;->LOG_TAG:Ljava/lang/String;

    const-string v0, "resultReceiver is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getCachedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckWifiMacInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cached MAC Addr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckWifiMacInfo;->getFactoryMacAddrSamsungApi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckWifiMacInfo;->LOG_TAG:Ljava/lang/String;

    const-string v0, "failed to read wifi mac"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckWifiMacInfo;->mReceiver:Landroid/os/ResultReceiver;

    const/4 v0, 0x5

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 12
    :cond_2
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->putCachedWifiMacAddr(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckWifiMacInfo;->mReceiver:Landroid/os/ResultReceiver;

    const/4 v0, 0x4

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 14
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckWifiMacInfo;->LOG_TAG:Ljava/lang/String;

    const-string v0, "end onHandleIntent"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
