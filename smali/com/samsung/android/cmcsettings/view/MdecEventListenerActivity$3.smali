.class Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$3;
.super Landroid/database/ContentObserver;
.source "MdecEventListenerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$3;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$3;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mMessageAppChangeObserver"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$3;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->showToastForDefaultApps(Landroid/content/Context;)V

    return-void
.end method
