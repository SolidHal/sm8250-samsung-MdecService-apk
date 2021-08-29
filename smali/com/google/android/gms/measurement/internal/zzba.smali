.class final Lcom/google/android/gms/measurement/internal/zzba;
.super Lcom/google/android/gms/measurement/internal/zzcp;


# static fields
.field static final zzanc:Landroid/util/Pair;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzabr:Landroid/content/SharedPreferences;

.field public zzand:Lcom/google/android/gms/measurement/internal/zzbe;

.field public final zzane:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final zzanf:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final zzang:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final zzanh:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final zzani:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final zzanj:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final zzank:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final zzanl:Lcom/google/android/gms/measurement/internal/zzbf;

.field private zzanm:Ljava/lang/String;

.field private zzann:Z

.field private zzano:J

.field public final zzanp:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final zzanq:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final zzanr:Lcom/google/android/gms/measurement/internal/zzbc;

.field public final zzans:Lcom/google/android/gms/measurement/internal/zzbf;

.field public final zzant:Lcom/google/android/gms/measurement/internal/zzbd;

.field public final zzanu:Lcom/google/android/gms/measurement/internal/zzbd;

.field public zzanv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzba;->zzanc:Landroid/util/Pair;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcp;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "last_upload"

    const-wide/16 v1, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzane:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 3
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "last_upload_attempt"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanf:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 4
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "backoff"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzang:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 5
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "last_delete_stale"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanh:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 6
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "time_before_start"

    const-wide/16 v3, 0x2710

    invoke-direct {p1, p0, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanp:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 7
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "session_timeout"

    const-wide/32 v3, 0x1b7740

    invoke-direct {p1, p0, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanq:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 8
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbc;

    const-string v0, "start_new_session"

    const/4 v3, 0x1

    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanr:Lcom/google/android/gms/measurement/internal/zzbc;

    .line 9
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v0, "allow_ad_personalization"

    const/4 v3, 0x0

    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzans:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 10
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "last_pause_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzant:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 11
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "time_active"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanu:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 12
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "midnight_offset"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzani:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 13
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "first_open_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanj:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 14
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbd;

    const-string v0, "app_install_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzank:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 15
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v0, "app_instance_id"

    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanl:Lcom/google/android/gms/measurement/internal/zzbf;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzba;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private final zzjr()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzcl()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzabr:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method final setMeasurementEnabled(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Setting measurementEnabled"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "measurement_enabled"

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzby(Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanm:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzano:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 4
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanm:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzann:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v3

    .line 6
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzaf;->zzaje:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/measurement/internal/zzn;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 7
    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzano:J

    const/4 p1, 0x1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanm:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzann:Z

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanm:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanm:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Unable to get advertising id"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanm:Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    .line 17
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanm:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzann:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method final zzbz(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzba;->zzby(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfk;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {v5, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    const-string p1, "%032X"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zzca(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gmp_app_id"

    .line 3
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzcb(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "admob_app_id"

    .line 3
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzg(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Setting useService"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "use_service"

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected final zzgt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final zzgu()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzabr:Landroid/content/SharedPreferences;

    const-string v1, "has_been_opened"

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanv:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzabr:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbe;

    const-wide/16 v1, 0x0

    .line 7
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzaf;->zzajf:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 v8, 0x0

    const-string v5, "health_monitor"

    move-object v3, v0

    move-object v4, p0

    .line 8
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/zzbb;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzand:Lcom/google/android/gms/measurement/internal/zzbe;

    return-void
.end method

.method final zzh(Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method final zzi(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Updating deferred analytics collection"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deferred_analytics_collection"

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzjs()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gmp_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzjt()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "admob_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzju()Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_service"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method final zzjv()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Clearing collection preferences."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzba;->zzh(Z)Z

    move-result v1

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzba;->setMeasurementEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected final zzjw()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "previous_os_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgk()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzcl()V

    .line 5
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 8
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method

.method final zzjx()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjr()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "deferred_analytics_collection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method final zzjy()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzabr:Landroid/content/SharedPreferences;

    const-string v1, "deferred_analytics_collection"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
