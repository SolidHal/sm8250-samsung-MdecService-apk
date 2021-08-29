.class Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$1;
.super Ljava/lang/Object;
.source "PreciseAlarmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    iget-object v4, v4, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;

    if-eqz v5, :cond_1

    .line 7
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->access$100(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_2

    const-string v6, "PreciseAlarmManager"

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expiring message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v8

    iget v8, v8, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " timeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->access$100(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-static {v6, v7}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    iget-object v6, v6, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 14
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 15
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const-string v5, "PreciseAlarmManager"

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remaining timers "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    iget-object v7, v7, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    :goto_2
    const-string v5, "PreciseAlarmManager"

    const-string v6, "message is wrong do not handle"

    .line 17
    invoke-static {v5, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 19
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 20
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->access$200(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;)V

    .line 21
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0xfa

    .line 22
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 24
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 25
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
