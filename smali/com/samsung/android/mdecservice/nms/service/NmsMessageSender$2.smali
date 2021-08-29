.class Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$2;
.super Ljava/lang/Object;
.source "NmsMessageSender.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$2;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "callback onServiceConnected Called !!!!"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$2;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {p2}, Lc/a/a/a/b$a;->F(Landroid/os/IBinder;)Lc/a/a/a/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1002(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;Lc/a/a/a/b;)Lc/a/a/a/b;

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$2;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1102(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;Z)Z

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$2;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1000(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Lc/a/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$2;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1000(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Lc/a/a/a/b;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$2;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mSnsCallback:Lc/a/a/a/c;

    invoke-interface {p1, p2}, Lc/a/a/a/b;->l(Lc/a/a/a/c;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "callback onServiceConnected mCallbackBinder is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "callback onServiceDisconnected Called !!!!"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$2;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1000(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Lc/a/a/a/b;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$2;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mSnsCallback:Lc/a/a/a/c;

    invoke-interface {p1, v0}, Lc/a/a/a/b;->t(Lc/a/a/a/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$2;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1002(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;Lc/a/a/a/b;)Lc/a/a/a/b;

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$2;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1102(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;Z)Z

    return-void
.end method
