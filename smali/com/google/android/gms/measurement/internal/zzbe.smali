.class public final Lcom/google/android/gms/measurement/internal/zzbe;
.super Ljava/lang/Object;


# instance fields
.field private final zzabv:J

.field private final synthetic zzany:Lcom/google/android/gms/measurement/internal/zzba;

.field private final zzaoa:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzaob:Ljava/lang/String;

.field private final zzaoc:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzany:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzaoa:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":count"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzaob:Ljava/lang/String;

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ":value"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzaoc:Ljava/lang/String;

    .line 7
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzabv:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/zzbb;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    return-void
.end method

.method private final zzfl()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzany:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzany:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzany:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzba;->zza(Lcom/google/android/gms/measurement/internal/zzba;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzaob:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzaoc:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzaoa:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final zzfn()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzany:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzba;->zza(Lcom/google/android/gms/measurement/internal/zzba;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzaoa:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;J)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzany:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbe;->zzfn()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-nez p2, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbe;->zzfl()V

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzany:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzba;->zza(Lcom/google/android/gms/measurement/internal/zzba;)Landroid/content/SharedPreferences;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzaob:Ljava/lang/String;

    invoke-interface {p2, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    cmp-long v0, p2, v0

    const-wide/16 v1, 0x1

    if-gtz v0, :cond_2

    .line 5
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzany:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzba;->zza(Lcom/google/android/gms/measurement/internal/zzba;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 6
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzaoc:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzaob:Ljava/lang/String;

    invoke-interface {p2, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzany:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmd()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    and-long/2addr v3, v5

    add-long/2addr p2, v1

    .line 10
    div-long/2addr v5, p2

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzany:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzba;->zza(Lcom/google/android/gms/measurement/internal/zzba;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzaoc:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzaob:Ljava/lang/String;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final zzfm()Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzany:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzany:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbe;->zzfn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbe;->zzfl()V

    move-wide v0, v2

    goto :goto_0

    .line 5
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzany:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzco;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 6
    :goto_0
    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzabv:J

    cmp-long v6, v0, v4

    const/4 v7, 0x0

    if-gez v6, :cond_1

    return-object v7

    :cond_1
    const/4 v6, 0x1

    shl-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbe;->zzfl()V

    return-object v7

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzany:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzba;->zza(Lcom/google/android/gms/measurement/internal/zzba;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzaoc:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzany:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzba;->zza(Lcom/google/android/gms/measurement/internal/zzba;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzbe;->zzaob:Ljava/lang/String;

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbe;->zzfl()V

    if-eqz v0, :cond_4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    new-instance v1, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 12
    :cond_4
    :goto_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzba;->zzanc:Landroid/util/Pair;

    return-object v0
.end method
