.class public Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SaBroadcastReceiver.java"


# static fields
.field public static final BROADCAST_ACTION:Ljava/lang/String; = "com.samsung.android.mdec.entitlement.receiver.action"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->mListener:Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->mListener:Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string p2, "listener is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string p2, "context is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 5
    sget-object p1, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string p2, "intent is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "userId"

    .line 6
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessToken"

    .line 7
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "api_server_url"

    .line 8
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "mcc"

    .line 9
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "region_mcc"

    .line 10
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "errorType"

    const/4 v2, -0x1

    .line 11
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 12
    sget-object v1, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), accessToken("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), api_server_url("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {v8}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspectorForUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "),mcc("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "),region_mcc("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), errorType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, v2, :cond_4

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/16 v1, 0x69

    invoke-static {p2, v1}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 17
    new-instance v2, Ljava/util/Locale;

    const-string v3, ""

    invoke-direct {v2, v3, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 18
    sget-object v3, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receivedSaCcLocale CC("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "), stored CC("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v1, v2}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)V

    .line 21
    :cond_3
    new-instance p2, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;

    move-object v1, p2

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->setSaInfo(Landroid/content/Context;Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;)V

    .line 23
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->mListener:Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;

    invoke-interface {p1, v0, v7, v9, v8}, Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;->onRecvSamsungAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->mListener:Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;->onRecvSamsungAccountError(I)V

    :goto_0
    return-void
.end method

.method public setSaBroadcastListner(Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setSaBroadcastListener"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaBroadcastReceiver;->mListener:Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;

    return-void
.end method
