.class final Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest$2;
.super Ljava/lang/Thread;
.source "EntitlementCommonRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->doGetAllInformation(Landroid/content/Context;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->getProvisionedDevice(Landroid/content/Context;ZLandroid/os/ResultReceiver;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonRequest;->access$102(Z)Z

    return-void
.end method
