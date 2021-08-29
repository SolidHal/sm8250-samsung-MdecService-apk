.class Lcom/samsung/android/mdecservice/authentication/SaService$1;
.super Ljava/lang/Object;
.source "SaService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/authentication/SaService;->connectToSamsungAccountService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/authentication/SaService;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/authentication/SaService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string p1, ")"

    const-string v0, "8f9l37bswj"

    .line 1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-static {p2}, Lc/d/a/a/b$a;->F(Landroid/os/IBinder;)Lc/d/a/a/b;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$002(Lcom/samsung/android/mdecservice/authentication/SaService;Lc/d/a/a/b;)Lc/d/a/a/b;

    .line 2
    iget-object p2, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$000(Lcom/samsung/android/mdecservice/authentication/SaService;)Lc/d/a/a/b;

    move-result-object p2

    if-nez p2, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mISaService is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    new-instance v1, Lcom/samsung/android/mdecservice/authentication/SaService$SACallback;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/mdecservice/authentication/SaService$SACallback;-><init>(Lcom/samsung/android/mdecservice/authentication/SaService;Lcom/samsung/android/mdecservice/authentication/SaService$1;)V

    invoke-static {p2, v1}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$202(Lcom/samsung/android/mdecservice/authentication/SaService;Lc/d/a/a/a;)Lc/d/a/a/a;

    .line 5
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$000(Lcom/samsung/android/mdecservice/authentication/SaService;)Lc/d/a/a/b;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/authentication/SaService;->mAppSecret:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-virtual {v2}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$200(Lcom/samsung/android/mdecservice/authentication/SaService;)Lc/d/a/a/a;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lc/d/a/a/b;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/d/a/a/a;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regiCode from SA("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 7
    iget-object p2, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$000(Lcom/samsung/android/mdecservice/authentication/SaService;)Lc/d/a/a/b;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/authentication/SaService;->mAppSecret:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-virtual {v2}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$200(Lcom/samsung/android/mdecservice/authentication/SaService;)Lc/d/a/a/a;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lc/d/a/a/b;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/d/a/a/a;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "re-register callback to SA : regiCode from SA("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$402(Lcom/samsung/android/mdecservice/authentication/SaService;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$500(Lcom/samsung/android/mdecservice/authentication/SaService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected to SA"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$000(Lcom/samsung/android/mdecservice/authentication/SaService;)Lc/d/a/a/b;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mISaService is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$000(Lcom/samsung/android/mdecservice/authentication/SaService;)Lc/d/a/a/b;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$400(Lcom/samsung/android/mdecservice/authentication/SaService;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lc/d/a/a/b;->p(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/authentication/SaService$1;->this$0:Lcom/samsung/android/mdecservice/authentication/SaService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/authentication/SaService;->access$002(Lcom/samsung/android/mdecservice/authentication/SaService;Lc/d/a/a/b;)Lc/d/a/a/b;

    return-void
.end method
