.class Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$1;
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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceConnected to Background Message Service"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {p2}, Lc/a/a/a/a$a;->F(Landroid/os/IBinder;)Lc/a/a/a/a;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mServiceBinder:Lc/a/a/a/a;

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$102(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;Z)Z

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mServiceBinder:Lc/a/a/a/a;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mServiceBinder:Lc/a/a/a/a;

    invoke-interface {p1}, Lc/a/a/a/a;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$200(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceDisconnected to Background Message Service"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mServiceBinder:Lc/a/a/a/a;

    invoke-interface {p1}, Lc/a/a/a/a;->i()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mServiceBinder:Lc/a/a/a/a;

    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$102(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;Z)Z

    return-void
.end method
