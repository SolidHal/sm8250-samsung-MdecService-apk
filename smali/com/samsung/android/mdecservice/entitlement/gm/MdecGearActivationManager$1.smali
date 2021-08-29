.class Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager$1;
.super Ljava/lang/Object;
.source "MdecGearActivationManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgentAvailable(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SAAgentV2 onAgentAvailable!"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;

    check-cast p1, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->access$002(Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;)Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->access$100(Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "send intent to SAP service for sending indication message to gear(2nd)"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;

    invoke-virtual {p1}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->access$200(Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;Landroid/content/Context;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager$1;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->access$102(Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;Z)Z

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/gm/MdecGearActivationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAAgentV2 onError - code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
