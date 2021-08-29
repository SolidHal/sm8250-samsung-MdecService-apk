.class public final Lcom/google/android/gms/measurement/internal/zzdr;
.super Lcom/google/android/gms/measurement/internal/zzf;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private final zzarz:Lcom/google/android/gms/measurement/internal/zzef;

.field private zzasa:Lcom/google/android/gms/measurement/internal/zzag;

.field private volatile zzasb:Ljava/lang/Boolean;

.field private final zzasc:Lcom/google/android/gms/measurement/internal/zzv;

.field private final zzasd:Lcom/google/android/gms/measurement/internal/zzev;

.field private final zzase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzasf:Lcom/google/android/gms/measurement/internal/zzv;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzase:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzev;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzev;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasd:Lcom/google/android/gms/measurement/internal/zzev;

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzef;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzef;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzarz:Lcom/google/android/gms/measurement/internal/zzef;

    .line 5
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzds;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzds;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzcq;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasc:Lcom/google/android/gms/measurement/internal/zzv;

    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzdx;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzcq;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasf:Lcom/google/android/gms/measurement/internal/zzv;

    return-void
.end method

.method private final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasa:Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasa:Lcom/google/android/gms/measurement/internal/zzag;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzdj()V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzag;)Lcom/google/android/gms/measurement/internal/zzag;
    .locals 0

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasa:Lcom/google/android/gms/measurement/internal/zzag;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzdr;)Lcom/google/android/gms/measurement/internal/zzef;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzarz:Lcom/google/android/gms/measurement/internal/zzef;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzdr;Landroid/content/ComponentName;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzdr;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzdr;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzlf()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/measurement/internal/zzdr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzcz()V

    return-void
.end method

.method private final zzcy()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasd:Lcom/google/android/gms/measurement/internal/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzev;->start()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasc:Lcom/google/android/gms/measurement/internal/zzv;

    .line 4
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzakj:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzv;->zzh(J)V

    return-void
.end method

.method private final zzcz()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->disconnect()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/measurement/internal/zzdr;)Lcom/google/android/gms/measurement/internal/zzag;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasa:Lcom/google/android/gms/measurement/internal/zzag;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/measurement/internal/zzdr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzcy()V

    return-void
.end method

.method private final zzf(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzase:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasf:Lcom/google/android/gms/measurement/internal/zzv;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzv;->zzh(J)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzdj()V

    return-void
.end method

.method private final zzld()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    const/4 v0, 0x1

    return v0
.end method

.method private final zzlf()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzase:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Processing queued up service tasks"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasf:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzv;->cancel()V

    return-void
.end method

.method private final zzm(Z)Lcom/google/android/gms/measurement/internal/zzh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgf()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjn()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzbr(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final disconnect()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->zzia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzarz:Lcom/google/android/gms/measurement/internal/zzef;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzef;->zzlg()V

    .line 5
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzarz:Lcom/google/android/gms/measurement/internal/zzef;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasa:Lcom/google/android/gms/measurement/internal/zzag;

    return-void
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasa:Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final resetAnalyticsData()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgb()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzm(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgi()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->resetAnalyticsData()V

    .line 7
    :cond_0
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzdt;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/measurement/internal/zzag;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasa:Lcom/google/android/gms/measurement/internal/zzag;

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzcy()V

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzlf()V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 11
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgb()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzld()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    move v3, v1

    move v4, v2

    :goto_0
    const/16 v5, 0x3e9

    if-ge v3, v5, :cond_6

    if-ne v4, v2, :cond_6

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgi()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzr(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 7
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    if-eqz p2, :cond_1

    if-ge v5, v2, :cond_1

    .line 9
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    .line 11
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz v9, :cond_2

    .line 12
    :try_start_0
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzad;

    invoke-interface {p1, v8, p3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v9

    const-string v10, "Failed to send event to the service"

    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 14
    :cond_2
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzfh;

    if-eqz v9, :cond_3

    .line 15
    :try_start_1
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-interface {p1, v8, p3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v9

    const-string v10, "Failed to send attribute to the service"

    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 17
    :cond_3
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzl;

    if-eqz v9, :cond_4

    .line 18
    :try_start_2
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzl;

    invoke-interface {p1, v8, p3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v8

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v9

    const-string v10, "Failed to send conditional property to the service"

    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v8

    const-string v9, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final zza(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzm(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdu;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzdu;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzl;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzm(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v7

    .line 24
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeb;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzeb;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfh;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzm(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v8

    .line 28
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzec;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zzec;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfh;",
            ">;>;Z)V"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzm(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzee;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzee;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzh;Z)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic zzaf()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzaf()V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzld()Z

    move-result v2

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgi()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzad;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    .line 6
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzm(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v5

    .line 7
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzdz;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzdz;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;ZZLcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/zzdr;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/measurement/internal/zzdn;)V
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 16
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzdw;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzdn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/measurement/internal/zzfh;)V
    .locals 3

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzld()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgi()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzfh;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->zzm(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzed;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzed;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;ZLcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzdr;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method protected final zzd(Lcom/google/android/gms/measurement/internal/zzl;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgi()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzc(Lcom/google/android/gms/measurement/internal/zzl;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    .line 6
    :goto_0
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzl;

    invoke-direct {v6, p1}, Lcom/google/android/gms/measurement/internal/zzl;-><init>(Lcom/google/android/gms/measurement/internal/zzl;)V

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->zzm(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v7

    .line 8
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzea;

    const/4 v4, 0x1

    move-object v2, v0

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzea;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;ZZLcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/measurement/internal/zzl;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzdj()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasb:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_e

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzba;->zzju()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto/16 :goto_7

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgf()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzjb()I

    move-result v0

    if-ne v0, v2, :cond_2

    :goto_0
    move v0, v2

    :goto_1
    move v3, v0

    goto/16 :goto_6

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Checking service availability"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    .line 13
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v3

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0xbdfcb8

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/16 v3, 0x9

    if-eq v0, v3, :cond_4

    const/16 v3, 0x12

    if-eq v0, v3, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "Unexpected service status"

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Service updating"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Service invalid"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Service disabled"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    :goto_2
    move v0, v1

    goto :goto_1

    .line 19
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Service container out of date"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzme()I

    move-result v0

    const/16 v3, 0x32c8

    if-ge v0, v3, :cond_7

    goto :goto_5

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzba;->zzju()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    :goto_3
    move v0, v2

    :goto_4
    move v3, v1

    goto :goto_6

    .line 23
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Service missing"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    :goto_5
    move v0, v1

    move v3, v2

    goto :goto_6

    .line 24
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Service available"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_6
    if-nez v0, :cond_c

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzn;->zzib()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    move v3, v1

    :cond_c
    if-eqz v3, :cond_d

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzba;->zzg(Z)V

    .line 28
    :cond_d
    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasb:Ljava/lang/Boolean;

    .line 29
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzarz:Lcom/google/android/gms/measurement/internal/zzef;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzef;->zzlh()V

    return-void

    .line 31
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzn;->zzib()Z

    move-result v0

    if-nez v0, :cond_12

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 34
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    .line 35
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    move v1, v2

    :cond_10
    if-eqz v1, :cond_11

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v1, Landroid/content/ComponentName;

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    .line 41
    invoke-direct {v1, v2, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzarz:Lcom/google/android/gms/measurement/internal/zzef;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzef;->zzc(Landroid/content/Intent;)V

    return-void

    .line 44
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    :cond_12
    return-void
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

.method protected final zzkz()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzm(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzdv;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzlc()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzm(Z)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzdy;-><init>(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzh;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzle()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdr;->zzasb:Ljava/lang/Boolean;

    return-object v0
.end method
