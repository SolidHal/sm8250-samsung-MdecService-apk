.class final Lcom/google/android/gms/measurement/internal/zzeg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaso:Lcom/google/android/gms/measurement/internal/zzag;

.field private final synthetic zzasp:Lcom/google/android/gms/measurement/internal/zzef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzef;Lcom/google/android/gms/measurement/internal/zzag;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasp:Lcom/google/android/gms/measurement/internal/zzef;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzaso:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasp:Lcom/google/android/gms/measurement/internal/zzef;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasp:Lcom/google/android/gms/measurement/internal/zzef;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->zza(Lcom/google/android/gms/measurement/internal/zzef;Z)Z

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasp:Lcom/google/android/gms/measurement/internal/zzef;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzef;->zzasg:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzdr;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasp:Lcom/google/android/gms/measurement/internal/zzef;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzef;->zzasg:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Connected to service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasp:Lcom/google/android/gms/measurement/internal/zzef;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzef;->zzasg:Lcom/google/android/gms/measurement/internal/zzdr;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzaso:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzdr;->zza(Lcom/google/android/gms/measurement/internal/zzag;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
