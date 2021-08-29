.class Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$2;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$2;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$700(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)Ljava/util/Set;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$2;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$700(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkStateListener;

    const-string v2, "NwkEvtHandler"

    const-string v3, "onAvailable:"

    .line 3
    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkStateListener;->onWifiConnected()V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$2;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$700(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)Ljava/util/Set;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$2;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$700(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkStateListener;

    const-string v2, "NwkEvtHandler"

    const-string v3, "onLost:"

    .line 3
    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkStateListener;->onWifiDisconnected()V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
