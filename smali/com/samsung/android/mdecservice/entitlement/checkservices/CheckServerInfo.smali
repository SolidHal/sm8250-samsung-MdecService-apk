.class public Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckServerInfo;
.super Landroid/app/IntentService;
.source "CheckServerInfo.java"


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

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckServerInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckServerInfo;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CheckServerInfo"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckServerInfo;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start onHandleIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "receiver"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckServerInfo;->mReceiver:Landroid/os/ResultReceiver;

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckServerInfo;->LOG_TAG:Ljava/lang/String;

    const-string v0, "resultReceiver is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSingleServerInfo(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->getLocalAcsAddr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/obj/ServerAddrInfo;->getEsAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    :cond_1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckServerInfo;->LOG_TAG:Ljava/lang/String;

    const-string v1, "serverAddrInfo is null or invalid serverAddr"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->getUserLocalAcsAddrFromDefaultAcs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_2

    .line 10
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckServerInfo;->LOG_TAG:Ljava/lang/String;

    const-string v0, "not exist local acs address"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckServerInfo;->mReceiver:Landroid/os/ResultReceiver;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 12
    :cond_2
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->setLocalAcsAddr(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->getEsAddrFromLocalAcs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckServerInfo;->LOG_TAG:Ljava/lang/String;

    const-string v0, "not exist es address"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckServerInfo;->mReceiver:Landroid/os/ResultReceiver;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 17
    :cond_3
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->setEsAddr(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckServerInfo;->mReceiver:Landroid/os/ResultReceiver;

    const/4 v0, 0x6

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 19
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckServerInfo;->LOG_TAG:Ljava/lang/String;

    const-string v0, "end onHandleIntent"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
