.class public Lcom/samsung/android/cmcsettings/services/CMCLifecycleListener;
.super Ljava/lang/Object;
.source "CMCLifecycleListener.java"

# interfaces
.implements Landroidx/lifecycle/i;


# instance fields
.field private mContext:Landroid/content/Context;

.field private startUIServiceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/services/CMCLifecycleListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onMoveToBackground()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/q;
        value = .enum Landroidx/lifecycle/g$a;->ON_STOP:Landroidx/lifecycle/g$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCLifecycleListener;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateCMCStatusLogging(Landroid/content/Context;)V

    const-string v0, "mdec/CMCLifecycleListener"

    const-string v1, "Stopping CMC ..."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCLifecycleListener;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/cmcsettings/services/CMCUIBackgroundService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCLifecycleListener;->startUIServiceIntent:Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCLifecycleListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCLifecycleListener;->startUIServiceIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onMoveToForeground()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/q;
        value = .enum Landroidx/lifecycle/g$a;->ON_START:Landroidx/lifecycle/g$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCLifecycleListener;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCLifecycleListener;->startUIServiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "mdec/CMCLifecycleListener"

    const-string v1, "Starting CMC ..."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/services/CMCLifecycleListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/services/CMCLifecycleListener;->startUIServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
