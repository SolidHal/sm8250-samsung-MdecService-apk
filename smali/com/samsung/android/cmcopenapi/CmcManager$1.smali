.class Lcom/samsung/android/cmcopenapi/CmcManager$1;
.super Ljava/lang/Object;
.source "CmcManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcopenapi/CmcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcopenapi/CmcManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcopenapi/CmcManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/CmcManager$1;->this$0:Lcom/samsung/android/cmcopenapi/CmcManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "CmcManager"

    const-string v0, "serviceConnected."

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/cmcopenapi/INmsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcopenapi/INmsService;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/CmcManager;->access$002(Lcom/samsung/android/cmcopenapi/INmsService;)Lcom/samsung/android/cmcopenapi/INmsService;

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcopenapi/CmcManager$1;->this$0:Lcom/samsung/android/cmcopenapi/CmcManager;

    invoke-static {}, Lcom/samsung/android/cmcopenapi/CmcManager;->access$000()Lcom/samsung/android/cmcopenapi/INmsService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/cmcopenapi/CmcManager;->access$100(Lcom/samsung/android/cmcopenapi/CmcManager;Lcom/samsung/android/cmcopenapi/INmsService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "CmcManager"

    const-string v0, "serviceDisconnected."

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/cmcopenapi/CmcManager$1;->this$0:Lcom/samsung/android/cmcopenapi/CmcManager;

    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/CmcManager;->access$200(Lcom/samsung/android/cmcopenapi/CmcManager;)Lcom/samsung/android/cmcopenapi/CmcManager$ConnectionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcopenapi/CmcManager$1;->this$0:Lcom/samsung/android/cmcopenapi/CmcManager;

    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/CmcManager;->access$200(Lcom/samsung/android/cmcopenapi/CmcManager;)Lcom/samsung/android/cmcopenapi/CmcManager$ConnectionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/cmcopenapi/CmcManager$ConnectionListener;->onDisconnected()V

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/CmcManager;->access$002(Lcom/samsung/android/cmcopenapi/INmsService;)Lcom/samsung/android/cmcopenapi/INmsService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
