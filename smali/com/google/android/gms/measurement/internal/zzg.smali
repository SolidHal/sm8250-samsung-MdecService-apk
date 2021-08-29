.class final Lcom/google/android/gms/measurement/internal/zzg;
.super Ljava/lang/Object;


# instance fields
.field private final zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

.field private zzadt:J

.field private zzafw:Ljava/lang/String;

.field private zzafx:Ljava/lang/String;

.field private zzafy:Ljava/lang/String;

.field private zzafz:Ljava/lang/String;

.field private zzaga:J

.field private zzagb:J

.field private zzagc:J

.field private zzagd:J

.field private zzage:Ljava/lang/String;

.field private zzagf:J

.field private zzagg:Z

.field private zzagh:J

.field private zzagi:Z

.field private zzagj:Z

.field private zzagk:Ljava/lang/String;

.field private zzagl:J

.field private zzagm:J

.field private zzagn:J

.field private zzago:J

.field private zzagp:J

.field private zzagq:J

.field private zzagr:Ljava/lang/String;

.field private zzags:Z

.field private zzagt:J

.field private zzagu:J

.field private zzts:Ljava/lang/String;

.field private final zztt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzg;->zztt:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    return-void
.end method


# virtual methods
.method public final getAppInstanceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafw:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirebaseInstanceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafz:Ljava/lang/String;

    return-object v0
.end method

.method public final getGmpAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafx:Ljava/lang/String;

    return-object v0
.end method

.method public final isMeasurementEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagg:Z

    return v0
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzts:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzts:Ljava/lang/String;

    return-void
.end method

.method public final setMeasurementEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagg:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagg:Z

    return-void
.end method

.method public final zzaa(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagl:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagl:J

    return-void
.end method

.method public final zzab(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagm:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagm:J

    return-void
.end method

.method public final zzac(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagn:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagn:J

    return-void
.end method

.method public final zzad(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzago:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzago:J

    return-void
.end method

.method public final zzae(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagq:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagq:J

    return-void
.end method

.method public final zzaf(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagp:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagp:J

    return-void
.end method

.method public final zzag(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagh:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagh:J

    return-void
.end method

.method public final zzak()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzts:Ljava/lang/String;

    return-object v0
.end method

.method public final zzal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zztt:Ljava/lang/String;

    return-object v0
.end method

.method public final zzam(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafw:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafw:Ljava/lang/String;

    return-void
.end method

.method public final zzan(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafx:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafx:Ljava/lang/String;

    return-void
.end method

.method public final zzao(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagk:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagk:Ljava/lang/String;

    return-void
.end method

.method public final zzap(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafy:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafy:Ljava/lang/String;

    return-void
.end method

.method public final zzaq(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafz:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafz:Ljava/lang/String;

    return-void
.end method

.method public final zzar(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzage:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzage:Ljava/lang/String;

    return-void
.end method

.method public final zzas(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagr:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagr:Ljava/lang/String;

    return-void
.end method

.method public final zze(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagi:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagi:Z

    return-void
.end method

.method public final zzf(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagj:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagj:Z

    return-void
.end method

.method public final zzgv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    return-void
.end method

.method public final zzgw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagk:Ljava/lang/String;

    return-object v0
.end method

.method public final zzgx()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzafy:Ljava/lang/String;

    return-object v0
.end method

.method public final zzgy()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagb:J

    return-wide v0
.end method

.method public final zzgz()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagc:J

    return-wide v0
.end method

.method public final zzha()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:J

    return-wide v0
.end method

.method public final zzhb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzage:Ljava/lang/String;

    return-object v0
.end method

.method public final zzhc()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadt:J

    return-wide v0
.end method

.method public final zzhd()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagf:J

    return-wide v0
.end method

.method public final zzhe()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaga:J

    return-wide v0
.end method

.method public final zzhf()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagt:J

    return-wide v0
.end method

.method public final zzhg()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagu:J

    return-wide v0
.end method

.method public final zzhh()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaga:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zztt:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Bundle index overflow. appId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaga:J

    return-void
.end method

.method public final zzhi()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagl:J

    return-wide v0
.end method

.method public final zzhj()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagm:J

    return-wide v0
.end method

.method public final zzhk()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagn:J

    return-wide v0
.end method

.method public final zzhl()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzago:J

    return-wide v0
.end method

.method public final zzhm()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagq:J

    return-wide v0
.end method

.method public final zzhn()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagp:J

    return-wide v0
.end method

.method public final zzho()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagr:Ljava/lang/String;

    return-object v0
.end method

.method public final zzhp()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagr:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzas(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzhq()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagh:J

    return-wide v0
.end method

.method public final zzhr()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagi:Z

    return v0
.end method

.method public final zzhs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagj:Z

    return v0
.end method

.method public final zzs(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagb:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagb:J

    return-void
.end method

.method public final zzt(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagc:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagc:J

    return-void
.end method

.method public final zzu(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagd:J

    return-void
.end method

.method public final zzv(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadt:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadt:J

    return-void
.end method

.method public final zzw(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagf:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagf:J

    return-void
.end method

.method public final zzx(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaga:J

    cmp-long v3, v3, p1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 5
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzaga:J

    return-void
.end method

.method public final zzy(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagt:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagt:J

    return-void
.end method

.method public final zzz(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagu:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzags:Z

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzg;->zzagu:J

    return-void
.end method
