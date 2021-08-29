.class public Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;
.super Ljava/lang/Object;
.source "PreciseAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;
    }
.end annotation


# static fields
.field protected static final INTENT_ALARM_TIMEOUT:Ljava/lang/String; = "com.samsung.android.mdecservice.alarmmanager"

.field private static final LOG_TAG:Ljava/lang/String; = "PreciseAlarmManager"

.field private static final PRECISION:I = 0xfa

.field private static final WAKE_LOCK_TIMEOUT:I = 0x2710

.field private static volatile sInstance:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mThread:Ljava/lang/Thread;

.field mTimers:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mContext:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mThread:Ljava/lang/Thread;

    .line 4
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$2;-><init>(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mContext:Landroid/content/Context;

    .line 7
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.mdecservice.alarmmanager"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->createWakelock()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->registerAlarmManager()V

    return-void
.end method

.method private createWakelock()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "NmsService"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;
    .locals 2

    const-class v0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->sInstance:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    if-nez v1, :cond_1

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v1, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->sInstance:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->sInstance:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->isRoboUnitTest()Z

    move-result p0

    if-nez p0, :cond_0

    .line 6
    sget-object p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->sInstance:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->start()V

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->sInstance:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isRoboUnitTest()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "robolectric"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private registerAlarmManager()V
    .locals 11

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-lez v2, :cond_3

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;

    if-eqz v5, :cond_2

    .line 6
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "PreciseAlarmManager"

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "next the soonest timer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v7

    iget v7, v7, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->access$000(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " timeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->access$100(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " after msec="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->access$100(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-static {v2, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.android.mdecservice.alarmmanager"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 14
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 15
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->access$100(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 16
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mContext:Landroid/content/Context;

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    goto :goto_1

    :cond_1
    move-wide v2, v5

    :goto_1
    invoke-static {v4, v0, v2, v3}, Lcom/samsung/android/mdecservice/nms/util/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    goto :goto_3

    :cond_2
    :goto_2
    const-string v5, "PreciseAlarmManager"

    const-string v6, "message is wrong do not handle"

    .line 17
    invoke-static {v5, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "PreciseAlarmManager"

    const-string v5, "No pended alarm Timer. remove the registered timer from alarmManager."

    .line 18
    invoke-static {v2, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.android.mdecservice.alarmmanager"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 21
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 23
    :cond_4
    :goto_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private start()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$1;-><init>(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mThread:Ljava/lang/Thread;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public declared-synchronized removeMessage(Landroid/os/Message;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "PreciseAlarmManager"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v2, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;

    const-wide/16 v3, 0x0

    invoke-direct {v2, p1, v3, v4}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;-><init>(Landroid/os/Message;J)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->registerAlarmManager()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p3

    invoke-direct {v1, p2, v2, v3}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;-><init>(Landroid/os/Message;J)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    .line 3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "PreciseAlarmManager"

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendMessageDelayed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", remaining timers:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mTimers:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    invoke-virtual {p3}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->registerAlarmManager()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p2

    .line 9
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
