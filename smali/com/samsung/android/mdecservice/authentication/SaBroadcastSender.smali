.class public Lcom/samsung/android/mdecservice/authentication/SaBroadcastSender;
.super Ljava/lang/Object;
.source "SaBroadcastSender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static sendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lb/l/a/a;->b(Landroid/content/Context;)Lb/l/a/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lb/l/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public static sendSamsungAccountError(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "errorType"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/authentication/SaBroadcastSender;->sendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static sendSamsungAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "userId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "accessToken"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "mcc"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "api_server_url"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "region_mcc"

    .line 6
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/authentication/SaBroadcastSender;->sendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method
