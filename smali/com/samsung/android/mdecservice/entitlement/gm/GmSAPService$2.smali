.class Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$2;
.super Ljava/lang/Object;
.source "GmSAPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sendIndicateMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$2;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    iput-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$2;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iput-object p3, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$2;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$2;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$2;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sendData(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)I

    return-void
.end method
