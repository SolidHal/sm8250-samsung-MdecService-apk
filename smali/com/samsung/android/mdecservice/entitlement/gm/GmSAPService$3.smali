.class Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$3;
.super Ljava/lang/Object;
.source "GmSAPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sendResponseMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

.field final synthetic val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

.field final synthetic val$reply:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$3;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    iput-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$3;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iput-object p3, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$3;->val$reply:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$3;->this$0:Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$3;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService$3;->val$reply:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/mdecservice/entitlement/gm/GmSAPService;->sendData(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)I

    return-void
.end method
