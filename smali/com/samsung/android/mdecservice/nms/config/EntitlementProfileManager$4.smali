.class Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$4;
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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$4;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

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

    const-string v1, "Setting Db Updated. Uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->AIRPLANE_MODE_ON:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$4;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$400(Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/systemconfig/SystemConfigHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p1

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAirplaneModeSettingChanged: now ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$4;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->setSearchRequiredAfterAirplaneOff(Z)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager$4;->this$0:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->updateEntitlementState()V

    return-void
.end method
