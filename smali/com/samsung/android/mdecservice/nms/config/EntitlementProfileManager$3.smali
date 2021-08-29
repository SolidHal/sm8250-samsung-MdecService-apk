.class Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$3;
.super Landroid/database/ContentObserver;
.source "EntitlementProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$3;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default Sms App changed. Uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$3;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$400(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isSemSmsPackageDefault(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$3;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$300(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->notifyDefaultSmsAppChanged()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$500()Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;->DEACTIVATED:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$EntitlementState;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$3;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$200(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V

    :cond_1
    return-void
.end method
