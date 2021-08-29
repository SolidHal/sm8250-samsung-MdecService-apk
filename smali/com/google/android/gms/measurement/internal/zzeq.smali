.class public final Lcom/google/android/gms/measurement/internal/zzeq;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field private handler:Landroid/os/Handler;

.field private zzasw:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzasx:Lcom/google/android/gms/measurement/internal/zzv;

.field private final zzasy:Lcom/google/android/gms/measurement/internal/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzer;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzer;-><init>(Lcom/google/android/gms/measurement/internal/zzeq;Lcom/google/android/gms/measurement/internal/zzcq;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasx:Lcom/google/android/gms/measurement/internal/zzv;

    .line 3
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzes;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzeq;Lcom/google/android/gms/measurement/internal/zzcq;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasy:Lcom/google/android/gms/measurement/internal/zzv;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasw:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzeq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzll()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzeq;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzal(J)V

    return-void
.end method

.method private final zzal(J)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzaf()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzli()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasw:J

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgf()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaj;->zzal()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzn;->zzbj(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzam(J)V

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasx:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzv;->cancel()V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasy:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzv;->cancel()V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->zzanq:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v0

    cmp-long p1, p1, v0

    const-wide/16 v0, 0x0

    if-lez p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzba;->zzanr:Lcom/google/android/gms/measurement/internal/zzbc;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzbc;->set(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzba;->zzanu:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzba;->zzanr:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbc;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasx:Lcom/google/android/gms/measurement/internal/zzv;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzba;->zzanp:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v2

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzba;->zzanu:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 17
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzv;->zzh(J)V

    return-void

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasy:Lcom/google/android/gms/measurement/internal/zzv;

    const-wide/32 v2, 0x36ee80

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzba;->zzanu:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzv;->zzh(J)V

    return-void
.end method

.method private final zzan(J)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzaf()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzli()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasx:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzv;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasy:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzv;->cancel()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasw:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->zzanu:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzba;->zzanu:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasw:J

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    :cond_0
    return-void
.end method

.method private final zzao(J)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Session started, time"

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgf()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzn;->zzbi(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v6, 0x3e8

    if-eqz v0, :cond_0

    .line 5
    div-long v0, p1, v6

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzge()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v1, "auto"

    const-string v4, "_sid"

    move-object v0, v2

    move-object v2, v4

    move-wide v4, p1

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzcs;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzge()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v0

    const/4 v3, 0x0

    const-string v1, "auto"

    const-string v2, "_sid"

    move-wide v4, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzcs;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->zzanr:Lcom/google/android/gms/measurement/internal/zzbc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbc;->set(Z)V

    .line 12
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgf()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzn;->zzbi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    div-long v0, p1, v6

    const-string v2, "_sid"

    .line 15
    invoke-virtual {v5, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzge()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v0

    const-string v1, "auto"

    const-string v2, "_s"

    move-wide v3, p1

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzcs;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzeq;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzan(J)V

    return-void
.end method

.method private final zzli()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdx;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdx;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->handler:Landroid/os/Handler;

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzll()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzaf()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzn(Z)Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgd()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zza;->zzq(J)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaf()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzaf()V

    return-void
.end method

.method final zzam(J)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzaf()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzli()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasx:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzv;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasy:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzv;->cancel()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->zzanq:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzba;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->zzanr:Lcom/google/android/gms/measurement/internal/zzbc;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzbc;->set(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->zzanu:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->zzanr:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbc;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzao(J)V

    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasy:Lcom/google/android/gms/measurement/internal/zzv;

    const-wide/32 v3, 0x36ee80

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzba;->zzanu:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzv;->zzh(J)V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzga()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzga()V

    return-void
.end method

.method public final bridge synthetic zzgb()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgb()V

    return-void
.end method

.method public final bridge synthetic zzgc()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgc()V

    return-void
.end method

.method public final bridge synthetic zzgd()Lcom/google/android/gms/measurement/internal/zza;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgd()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzge()Lcom/google/android/gms/measurement/internal/zzcs;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzge()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgf()Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgf()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgg()Lcom/google/android/gms/measurement/internal/zzdr;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgg()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgh()Lcom/google/android/gms/measurement/internal/zzdo;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgh()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgi()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgi()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgj()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgj()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    return-object v0
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

.method final zzlj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasx:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzv;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasy:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzv;->cancel()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasw:J

    return-void
.end method

.method protected final zzlk()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzao(J)V

    return-void
.end method

.method public final zzn(Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzba;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    .line 5
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasw:J

    sub-long v2, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzba;->zzanu:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Recording user engagement, ms"

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_et"

    .line 12
    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgh()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzdo;->zzla()Lcom/google/android/gms/measurement/internal/zzdn;

    move-result-object v2

    const/4 v3, 0x1

    .line 14
    invoke-static {v2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzdo;->zza(Lcom/google/android/gms/measurement/internal/zzdn;Landroid/os/Bundle;Z)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzge()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v2

    const-string v4, "auto"

    const-string v5, "_e"

    .line 16
    invoke-virtual {v2, v4, v5, p1}, Lcom/google/android/gms/measurement/internal/zzcs;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 17
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasw:J

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasy:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzv;->cancel()V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasy:Lcom/google/android/gms/measurement/internal/zzv;

    const-wide/16 v0, 0x0

    const-wide/32 v4, 0x36ee80

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzba;->zzanu:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzv;->zzh(J)V

    return v3
.end method
