.class Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;
.super Ljava/lang/Object;
.source "SAService.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgentCallbackImpl"
.end annotation


# instance fields
.field private mParams:Landroid/content/Intent;

.field private mRequestType:I

.field mService:Lcom/samsung/android/sdk/accessory/SAService;


# direct methods
.method public constructor <init>(ILandroid/content/Intent;Lcom/samsung/android/sdk/accessory/SAService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;->mRequestType:I

    .line 3
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;->mParams:Landroid/content/Intent;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;->mService:Lcom/samsung/android/sdk/accessory/SAService;

    return-void
.end method


# virtual methods
.method public onAgentAvailable(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;->mService:Lcom/samsung/android/sdk/accessory/SAService;

    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;->mRequestType:I

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;->mParams:Landroid/content/Intent;

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/sdk/accessory/SAService;->access$000(Lcom/samsung/android/sdk/accessory/SAService;ILcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/content/Intent;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Agent initialization error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". ErrorMsg: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[SA_SDK]SAService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;->mService:Lcom/samsung/android/sdk/accessory/SAService;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAService;->access$100(Lcom/samsung/android/sdk/accessory/SAService;)V

    return-void
.end method
