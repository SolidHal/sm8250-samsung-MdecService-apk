.class Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SIMSelectBaseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment$1;->this$0:Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment$1;->this$0:Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->access$000(Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment$1;->this$0:Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->access$000(Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceive: DEFAULT_DATA_SUBSCRIPTION_CHANGE"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment$1;->this$0:Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;->access$100(Lcom/samsung/android/cmcsettings/view/dialogFragments/SIMSelectBaseDialogFragment;)V

    :cond_0
    return-void
.end method
