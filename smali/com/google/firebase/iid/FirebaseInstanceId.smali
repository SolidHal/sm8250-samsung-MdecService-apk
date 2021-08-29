.class public Lcom/google/firebase/iid/FirebaseInstanceId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/FirebaseInstanceId$zza;
    }
.end annotation


# static fields
.field private static final zzai:J

.field private static zzaj:Lcom/google/firebase/iid/zzaw;

.field private static zzak:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "FirebaseInstanceId.class"
    .end annotation
.end field


# instance fields
.field private final zzal:Ljava/util/concurrent/Executor;

.field private final zzam:Lcom/google/firebase/FirebaseApp;

.field private final zzan:Lcom/google/firebase/iid/zzan;

.field private zzao:Lcom/google/firebase/iid/MessagingChannel;

.field private final zzap:Lcom/google/firebase/iid/zzaq;

.field private final zzaq:Lcom/google/firebase/iid/zzba;

.field private zzar:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzas:Lcom/google/firebase/iid/FirebaseInstanceId$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzai:J

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/events/Subscriber;)V
    .locals 6

    .line 1
    new-instance v2, Lcom/google/firebase/iid/zzan;

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/firebase/iid/zzan;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/google/firebase/iid/zzi;->zzf()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/google/firebase/iid/zzi;->zzf()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzan;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/Subscriber;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzan;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/Subscriber;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzar:Z

    .line 8
    invoke-static {p1}, Lcom/google/firebase/iid/zzan;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaj:Lcom/google/firebase/iid/zzaw;

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/google/firebase/iid/zzaw;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/iid/zzaw;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaj:Lcom/google/firebase/iid/zzaw;

    .line 12
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzam:Lcom/google/firebase/FirebaseApp;

    .line 14
    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzan:Lcom/google/firebase/iid/zzan;

    .line 15
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzao:Lcom/google/firebase/iid/MessagingChannel;

    if-nez v0, :cond_2

    .line 16
    const-class v0, Lcom/google/firebase/iid/MessagingChannel;

    invoke-virtual {p1, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/MessagingChannel;

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {v0}, Lcom/google/firebase/iid/MessagingChannel;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzao:Lcom/google/firebase/iid/MessagingChannel;

    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Lcom/google/firebase/iid/zzr;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/iid/zzr;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzan;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzao:Lcom/google/firebase/iid/MessagingChannel;

    .line 20
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzao:Lcom/google/firebase/iid/MessagingChannel;

    .line 21
    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzao:Lcom/google/firebase/iid/MessagingChannel;

    .line 22
    iput-object p4, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzal:Ljava/util/concurrent/Executor;

    .line 23
    new-instance p1, Lcom/google/firebase/iid/zzba;

    sget-object p2, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaj:Lcom/google/firebase/iid/zzaw;

    invoke-direct {p1, p2}, Lcom/google/firebase/iid/zzba;-><init>(Lcom/google/firebase/iid/zzaw;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaq:Lcom/google/firebase/iid/zzba;

    .line 24
    new-instance p1, Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-direct {p1, p0, p5}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/events/Subscriber;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzas:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    .line 25
    new-instance p1, Lcom/google/firebase/iid/zzaq;

    invoke-direct {p1, p3}, Lcom/google/firebase/iid/zzaq;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzap:Lcom/google/firebase/iid/zzaq;

    .line 26
    iget-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzas:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 27
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzg()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 29
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/iid/FirebaseInstanceId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final declared-synchronized startSync()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzar:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/iid/InstanceIdResult;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14
    new-instance v6, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v6}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 15
    iget-object v7, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzal:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/google/firebase/iid/zzn;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/zzn;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzam:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)TT;"
        }
    .end annotation

    const-wide/16 v0, 0x7530

    .line 17
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 18
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 20
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "INSTANCE_ID_RESET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzm()V

    .line 23
    :cond_0
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 24
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 25
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 26
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static zza(Ljava/lang/Runnable;J)V
    .locals 5

    .line 8
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzak:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v4, "FirebaseInstanceId"

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzak:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 11
    :cond_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzak:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzax;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaj:Lcom/google/firebase/iid/zzaw;

    const-string v1, ""

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/firebase/iid/zzaw;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzax;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzg()V

    return-void
.end method

.method private static zzd(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "*"

    return-object p0
.end method

.method private final zzg()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()Lcom/google/firebase/iid/zzax;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzo()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzan:Lcom/google/firebase/iid/zzan;

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/iid/zzan;->zzad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzax;->zzj(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaq:Lcom/google/firebase/iid/zzba;

    .line 4
    invoke-virtual {v0}, Lcom/google/firebase/iid/zzba;->zzaq()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    :cond_1
    return-void
.end method

.method private static zzi()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaj:Lcom/google/firebase/iid/zzaw;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaw;->zzg(Ljava/lang/String;)Lcom/google/firebase/iid/zzz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzz;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/zzan;->zza(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static zzl()Z
    .locals 4

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public deleteInstanceId()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzao:Lcom/google/firebase/iid/MessagingChannel;

    invoke-interface {v1, v0}, Lcom/google/firebase/iid/MessagingChannel;->deleteInstanceId(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzm()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzax;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/google/firebase/iid/zzax;->zza(Lcom/google/firebase/iid/zzax;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzao:Lcom/google/firebase/iid/MessagingChannel;

    invoke-interface {v2, v0, v1, p1, p2}, Lcom/google/firebase/iid/MessagingChannel;->deleteToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaj:Lcom/google/firebase/iid/zzaw;

    const-string v1, ""

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/iid/zzaw;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCreationTime()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaj:Lcom/google/firebase/iid/zzaw;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaw;->zzg(Ljava/lang/String;)Lcom/google/firebase/iid/zzz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzz;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzg()V

    .line 2
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceId()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/iid/InstanceIdResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzam:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzan;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()Lcom/google/firebase/iid/zzax;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzan:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzan;->zzad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzax;->zzj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, v0, Lcom/google/firebase/iid/zzax;->zzbq:Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/iid/InstanceIdResult;

    invoke-interface {p1}, Lcom/google/firebase/iid/InstanceIdResult;->getToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaq:Lcom/google/firebase/iid/zzba;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzba;->zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 28
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzao:Lcom/google/firebase/iid/MessagingChannel;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/firebase/iid/MessagingChannel;->getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final declared-synchronized zza(J)V
    .locals 11

    monitor-enter p0

    const-wide/16 v0, 0x1e

    const/4 v2, 0x1

    shl-long v3, p1, v2

    .line 3
    :try_start_0
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v3, Lcom/google/firebase/iid/FirebaseInstanceId;->zzai:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 4
    new-instance v0, Lcom/google/firebase/iid/zzay;

    iget-object v7, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzan:Lcom/google/firebase/iid/zzan;

    iget-object v8, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaq:Lcom/google/firebase/iid/zzba;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/firebase/iid/zzay;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/zzan;Lcom/google/firebase/iid/zzba;J)V

    .line 5
    invoke-static {v0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/Runnable;J)V

    .line 6
    iput-boolean v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzar:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V
    .locals 9

    .line 30
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-static {p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzax;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 32
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzan:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzan;->zzad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/iid/zzax;->zzj(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance p1, Lcom/google/firebase/iid/zzx;

    iget-object p2, p2, Lcom/google/firebase/iid/zzax;->zzbq:Ljava/lang/String;

    invoke-direct {p1, v6, p2}, Lcom/google/firebase/iid/zzx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    .line 34
    :cond_0
    invoke-static {p2}, Lcom/google/firebase/iid/zzax;->zza(Lcom/google/firebase/iid/zzax;)Ljava/lang/String;

    move-result-object v3

    .line 35
    iget-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzap:Lcom/google/firebase/iid/zzaq;

    new-instance v7, Lcom/google/firebase/iid/zzo;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/zzo;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2, p1, p4, v7}, Lcom/google/firebase/iid/zzaq;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/iid/zzas;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    iget-object v7, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzal:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/google/firebase/iid/zzp;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/zzp;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2, v7, v8}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method final synthetic zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 6

    .line 38
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaj:Lcom/google/firebase/iid/zzaw;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzan:Lcom/google/firebase/iid/zzan;

    .line 41
    invoke-virtual {v1}, Lcom/google/firebase/iid/zzan;->zzad()Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/iid/zzaw;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance p1, Lcom/google/firebase/iid/zzx;

    invoke-direct {p1, p4, p5}, Lcom/google/firebase/iid/zzx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    .line 44
    :cond_0
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method final declared-synchronized zza(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzar:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final zzb(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()Lcom/google/firebase/iid/zzax;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzan:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzan;->zzad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzax;->zzj(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v0, v0, Lcom/google/firebase/iid/zzax;->zzbq:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzao:Lcom/google/firebase/iid/MessagingChannel;

    invoke-interface {v2, v1, v0, p1}, Lcom/google/firebase/iid/MessagingChannel;->subscribeToTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "token not available"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Z)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzas:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->setEnabled(Z)V

    return-void
.end method

.method final zzc(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()Lcom/google/firebase/iid/zzax;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzan:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzan;->zzad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzax;->zzj(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzao:Lcom/google/firebase/iid/MessagingChannel;

    iget-object v0, v0, Lcom/google/firebase/iid/zzax;->zzbq:Ljava/lang/String;

    invoke-interface {v2, v1, v0, p1}, Lcom/google/firebase/iid/MessagingChannel;->unsubscribeFromTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "token not available"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzh()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzam:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method final zzj()Lcom/google/firebase/iid/zzax;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzam:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzan;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-static {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzax;

    move-result-object v0

    return-object v0
.end method

.method final zzk()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzam:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzan;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final declared-synchronized zzm()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaj:Lcom/google/firebase/iid/zzaw;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzaw;->zzal()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzas:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final zzn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzao:Lcom/google/firebase/iid/MessagingChannel;

    invoke-interface {v0}, Lcom/google/firebase/iid/MessagingChannel;->isAvailable()Z

    move-result v0

    return v0
.end method

.method final zzo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzao:Lcom/google/firebase/iid/MessagingChannel;

    invoke-interface {v0}, Lcom/google/firebase/iid/MessagingChannel;->isChannelBuilt()Z

    move-result v0

    return v0
.end method

.method final zzp()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()Lcom/google/firebase/iid/zzax;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/google/firebase/iid/zzax;->zza(Lcom/google/firebase/iid/zzax;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzao:Lcom/google/firebase/iid/MessagingChannel;

    invoke-interface {v2, v0, v1}, Lcom/google/firebase/iid/MessagingChannel;->buildChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void
.end method

.method final zzq()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaj:Lcom/google/firebase/iid/zzaw;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzaw;->zzh(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    return-void
.end method

.method public final zzr()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzas:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->isEnabled()Z

    move-result v0

    return v0
.end method
