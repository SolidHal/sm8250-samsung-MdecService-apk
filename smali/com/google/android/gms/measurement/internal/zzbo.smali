.class public final Lcom/google/android/gms/measurement/internal/zzbo;
.super Lcom/google/android/gms/measurement/internal/zzcp;


# static fields
.field private static final zzape:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private zzaea:Ljava/util/concurrent/ExecutorService;

.field private zzaov:Lcom/google/android/gms/measurement/internal/zzbs;

.field private zzaow:Lcom/google/android/gms/measurement/internal/zzbs;

.field private final zzaox:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/measurement/internal/zzbr<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzaoy:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/measurement/internal/zzbr<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzaoz:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzapa:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzapb:Ljava/lang/Object;

.field private final zzapc:Ljava/util/concurrent/Semaphore;

.field private volatile zzapd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzbo;->zzape:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcp;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzapb:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzapc:Ljava/util/concurrent/Semaphore;

    .line 4
    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaox:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaoy:Ljava/util/concurrent/BlockingQueue;

    .line 6
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbq;

    const-string v0, "Thread death: Uncaught exception on worker thread"

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzbq;-><init>(Lcom/google/android/gms/measurement/internal/zzbo;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaoz:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 7
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbq;

    const-string v0, "Thread death: Uncaught exception on network thread"

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzbq;-><init>(Lcom/google/android/gms/measurement/internal/zzbo;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzapa:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzbo;Lcom/google/android/gms/measurement/internal/zzbs;)Lcom/google/android/gms/measurement/internal/zzbs;
    .locals 0

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaov:Lcom/google/android/gms/measurement/internal/zzbs;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzbo;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzapc:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzbr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/zzbr<",
            "*>;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzapb:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaox:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaov:Lcom/google/android/gms/measurement/internal/zzbs;

    if-nez p1, :cond_0

    .line 13
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbs;

    const-string v1, "Measurement Worker"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaox:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbs;-><init>(Lcom/google/android/gms/measurement/internal/zzbo;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaov:Lcom/google/android/gms/measurement/internal/zzbs;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaoz:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaov:Lcom/google/android/gms/measurement/internal/zzbs;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaov:Lcom/google/android/gms/measurement/internal/zzbs;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbs;->zzke()V

    .line 17
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzbo;Lcom/google/android/gms/measurement/internal/zzbs;)Lcom/google/android/gms/measurement/internal/zzbs;
    .locals 0

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaow:Lcom/google/android/gms/measurement/internal/zzbs;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzbo;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzapd:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/measurement/internal/zzbo;)Ljava/lang/Object;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzapb:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/measurement/internal/zzbo;)Lcom/google/android/gms/measurement/internal/zzbs;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaov:Lcom/google/android/gms/measurement/internal/zzbs;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/measurement/internal/zzbo;)Lcom/google/android/gms/measurement/internal/zzbs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaow:Lcom/google/android/gms/measurement/internal/zzbs;

    return-object p0
.end method

.method static synthetic zzkd()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbo;->zzape:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;J",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 p2, 0x3a98

    .line 3
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Timed out waiting for "

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p3, p4

    :goto_0
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    :cond_1
    return-object p1

    .line 7
    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Interrupted waiting for "

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p3, p4

    :goto_1
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 8
    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 9
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public final zzaf()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaov:Lcom/google/android/gms/measurement/internal/zzbs;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzcl()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbr;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbr;-><init>(Lcom/google/android/gms/measurement/internal/zzbo;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaov:Lcom/google/android/gms/measurement/internal/zzbs;

    if-ne p1, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaox:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v1, "Callable skipped the worker queue."

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zza(Lcom/google/android/gms/measurement/internal/zzbr;)V

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzcl()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbr;

    const/4 v1, 0x1

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbr;-><init>(Lcom/google/android/gms/measurement/internal/zzbo;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaov:Lcom/google/android/gms/measurement/internal/zzbs;

    if-ne p1, v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zza(Lcom/google/android/gms/measurement/internal/zzbr;)V

    :goto_0
    return-object v0
.end method

.method public final zzc(Ljava/lang/Runnable;)V
    .locals 3

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzcl()V

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbr;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbr;-><init>(Lcom/google/android/gms/measurement/internal/zzbo;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zza(Lcom/google/android/gms/measurement/internal/zzbr;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzcl()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbr;

    const-string v1, "Task exception on network thread"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/android/gms/measurement/internal/zzbr;-><init>(Lcom/google/android/gms/measurement/internal/zzbo;Ljava/lang/Runnable;ZLjava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzapb:Ljava/lang/Object;

    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaoy:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaow:Lcom/google/android/gms/measurement/internal/zzbs;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbs;

    const-string v1, "Measurement Network"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaoy:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbs;-><init>(Lcom/google/android/gms/measurement/internal/zzbo;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaow:Lcom/google/android/gms/measurement/internal/zzbs;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzapa:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaow:Lcom/google/android/gms/measurement/internal/zzbs;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaow:Lcom/google/android/gms/measurement/internal/zzbs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbs;->zzke()V

    .line 11
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic zzga()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzga()V

    return-void
.end method

.method public final bridge synthetic zzgb()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgb()V

    return-void
.end method

.method public final zzgc()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaow:Lcom/google/android/gms/measurement/internal/zzbs;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic zzgk()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgk()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgl()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgm()Lcom/google/android/gms/measurement/internal/zzfk;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgn()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgo()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzk;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgt()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzkb()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaov:Lcom/google/android/gms/measurement/internal/zzbs;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzkc()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzapb:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaea:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaea:Ljava/util/concurrent/ExecutorService;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaea:Ljava/util/concurrent/ExecutorService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
