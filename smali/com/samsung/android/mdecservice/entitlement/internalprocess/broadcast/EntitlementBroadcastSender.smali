.class public Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;
.super Ljava/lang/Object;
.source "EntitlementBroadcastSender.java"


# static fields
.field public static final BROADCAST_ACTION:Ljava/lang/String; = "com.samsung.android.mdec.entitlement.receiver.action"

.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SendAddDeviceFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v3, "adddevice"

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LINE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "DEVICE_ID"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    .line 6
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "REASON_CODE"

    .line 7
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendAddDeviceSuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v2, "adddevice"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LINE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "DEVICE_ID"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    const/4 p2, 0x1

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendAddLineFailed(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v3, "addline"

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LINE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    .line 5
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "REASON_CODE"

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendAddLineSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v2, "addline"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LINE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendAddProvisionedDeviceFailed(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v3, "addprovisioneddevice"

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEVICE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    .line 5
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "REASON_CODE"

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendAddProvisionedDeviceSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v2, "addprovisioneddevice"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEVICE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method private static SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.samsung.android.mdecservice.PERMISSION"

    invoke-static {p1, p0, v0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->sendBroadcastForCurrentUser(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->LOG_TAG:Ljava/lang/String;

    const-string p1, "context is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static SendGetAllInformationFailed(Landroid/content/Context;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v3, "getallinformation"

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "REASON"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "REASON_CODE"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendGetAllInformationSuccess(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v2, "getallinformation"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "REASON"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendGetProvisionedDeviceListFailed(Landroid/content/Context;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v3, "getprovisioneddevices"

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "REASON"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "REASON_CODE"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendGetProvisionedDeviceListSuccess(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v2, "getprovisioneddevices"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "REASON"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendGetUserInformationFailed(Landroid/content/Context;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v3, "getuserinfo"

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "REASON"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "REASON_CODE"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendGetUserInformationSuccess(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v2, "getuserinfo"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "REASON"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendMigrateLineFailed(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v3, "migrateline"

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LINE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    .line 5
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "REASON_CODE"

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendMigrateLineSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v2, "migrateline"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LINE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendRegisterPdpAgreementFailed(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v3, "registerpdpagreement"

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "GUID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    .line 5
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "REASON_CODE"

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendRegisterPdpAgreementSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v2, "registerpdpagreement"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "GUID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendRemoveDeviceFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v3, "removedevice"

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LINE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "DEVICE_ID"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    .line 6
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "REASON_CODE"

    .line 7
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendRemoveDeviceSuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v2, "removedevice"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LINE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "DEVICE_ID"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    const/4 p2, 0x1

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendRemoveLineFailed(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v3, "removeline"

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LINE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    .line 5
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "REASON_CODE"

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendRemoveLineSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v2, "removeline"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LINE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendRemoveProvisionedDeviceFailed(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v3, "removeprovisioneddevice"

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEVICE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    .line 5
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "REASON_CODE"

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendRemoveProvisionedDeviceSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v2, "removeprovisioneddevice"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEVICE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendUpdateDeviceInfoFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v3, "updatedeviceinfo"

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LINE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "DEVICE_ID"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    .line 6
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "REASON_CODE"

    .line 7
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendUpdateDeviceInfoSuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v2, "updatedeviceinfo"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LINE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "DEVICE_ID"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    const/4 p2, 0x1

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendUpdateLineInfoFailed(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v3, "updatelineinfo"

    .line 3
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LINE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    .line 5
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "REASON_CODE"

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static SendUpdateLineInfoSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdec.entitlement.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EVT_TYPE"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CMD"

    const-string v2, "updatelineinfo"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LINE_ID"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "REASON"

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/broadcast/EntitlementBroadcastSender;->SendBroadcast(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method
