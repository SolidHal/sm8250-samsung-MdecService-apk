.class Lcom/samsung/android/mdecservice/entitlement/EntitlementService$1;
.super Landroid/os/ResultReceiver;
.source "EntitlementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/entitlement/EntitlementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/entitlement/EntitlementService;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/EntitlementService;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 2
    sget-object p2, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--> onReceiveResult(conditions before sending rest) : resultCode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->getConditionResultString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/EntitlementService;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->access$210(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;)I

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/EntitlementService;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->access$200(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;)I

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/EntitlementService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->access$302(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;Z)Z

    .line 8
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/EntitlementService;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->access$400(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;)V

    goto :goto_0

    .line 9
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/EntitlementService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->access$302(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;Z)Z

    .line 10
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/EntitlementService;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->access$400(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;)V

    goto :goto_0

    .line 11
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/EntitlementService;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->access$000(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;)Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/samsung/android/mdecservice/entitlement/checkservices/CheckServerInfo;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    iget-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/EntitlementService;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->access$100(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;)Landroid/os/ResultReceiver;

    move-result-object p2

    const-string v0, "receiver"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    iget-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/EntitlementService$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/EntitlementService;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/entitlement/EntitlementService;->access$000(Lcom/samsung/android/mdecservice/entitlement/EntitlementService;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementUtils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
