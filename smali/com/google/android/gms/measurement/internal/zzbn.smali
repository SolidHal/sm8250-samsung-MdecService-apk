.class public final Lcom/google/android/gms/measurement/internal/zzbn;
.super Lcom/google/android/gms/measurement/internal/zzez;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzp;


# static fields
.field private static zzaon:I = 0xffff
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static zzaoo:I = 0x2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final zzaop:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzaoq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzaor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzaos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzgb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaot:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzaou:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzez;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;)V

    .line 2
    new-instance p1, Lb/d/a;

    invoke-direct {p1}, Lb/d/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaop:Ljava/util/Map;

    .line 3
    new-instance p1, Lb/d/a;

    invoke-direct {p1}, Lb/d/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaoq:Ljava/util/Map;

    .line 4
    new-instance p1, Lb/d/a;

    invoke-direct {p1}, Lb/d/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaor:Ljava/util/Map;

    .line 5
    new-instance p1, Lb/d/a;

    invoke-direct {p1}, Lb/d/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaos:Ljava/util/Map;

    .line 6
    new-instance p1, Lb/d/a;

    invoke-direct {p1}, Lb/d/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaou:Ljava/util/Map;

    .line 7
    new-instance p1, Lb/d/a;

    invoke-direct {p1}, Lb/d/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaot:Ljava/util/Map;

    return-void
.end method

.method private final zza(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/zzgb;
    .locals 4

    if-nez p2, :cond_0

    .line 71
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgb;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 72
    array-length v1, p2

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzyx;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzyx;

    move-result-object p2

    .line 73
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgb;-><init>()V

    .line 74
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzgb;->zza(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 76
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v1, "Parsed config. version, gmp_app_id"

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawe:Ljava/lang/Long;

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzgb;->zzafx:Ljava/lang/String;

    .line 77
    invoke-virtual {p2, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    .line 80
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Unable to merge remote config. appId"

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgb;-><init>()V

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzgb;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzgb;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/d/a;

    invoke-direct {v0}, Lb/d/a;-><init>()V

    if-eqz p0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawg:[Lcom/google/android/gms/internal/measurement/zzgc;

    if-eqz p0, :cond_1

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 4
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgc;->zzoj:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzgc;->value:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgb;)V
    .locals 9

    .line 5
    new-instance v0, Lb/d/a;

    invoke-direct {v0}, Lb/d/a;-><init>()V

    .line 6
    new-instance v1, Lb/d/a;

    invoke-direct {v1}, Lb/d/a;-><init>()V

    .line 7
    new-instance v2, Lb/d/a;

    invoke-direct {v2}, Lb/d/a;-><init>()V

    if-eqz p2, :cond_5

    .line 8
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzgb;->zzawh:[Lcom/google/android/gms/internal/measurement/zzga;

    if-eqz p2, :cond_5

    .line 9
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, p2, v4

    .line 10
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzga;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v5

    const-string v6, "EventConfig contained null event name"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_0
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzga;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zzal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 14
    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/zzga;->name:Ljava/lang/String;

    .line 15
    :cond_1
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzga;->name:Ljava/lang/String;

    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/zzga;->zzawb:Ljava/lang/Boolean;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzga;->name:Ljava/lang/String;

    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/zzga;->zzawc:Ljava/lang/Boolean;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzga;->zzawd:Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 18
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Lcom/google/android/gms/measurement/internal/zzbn;->zzaoo:I

    if-lt v6, v7, :cond_3

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzga;->zzawd:Ljava/lang/Integer;

    .line 19
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Lcom/google/android/gms/measurement/internal/zzbn;->zzaon:I

    if-le v6, v7, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzga;->name:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzga;->zzawd:Ljava/lang/Integer;

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 21
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v6

    .line 22
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/internal/measurement/zzga;->name:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzga;->zzawd:Ljava/lang/Integer;

    const-string v8, "Invalid sampling rate. Event name, sample rate"

    .line 23
    invoke-virtual {v6, v8, v7, v5}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 24
    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaoq:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaor:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaot:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zzce(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzaf()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzq;->zzbn(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaop:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaoq:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaor:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaos:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaou:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaot:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 12
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbn;->zza(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/zzgb;

    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaop:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbn;->zza(Lcom/google/android/gms/internal/measurement/zzgb;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbn;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgb;)V

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaos:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaou:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
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

.method protected final zza(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzaf()V

    .line 29
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/measurement/internal/zzbn;->zza(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/zzgb;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    .line 31
    :cond_0
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzbn;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgb;)V

    .line 32
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzbn;->zzaos:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzbn;->zzaou:Ljava/util/Map;

    move-object/from16 v5, p3

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzbn;->zzaop:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbn;->zza(Lcom/google/android/gms/internal/measurement/zzgb;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzjp()Lcom/google/android/gms/measurement/internal/zzj;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawi:[Lcom/google/android/gms/internal/measurement/zzfu;

    .line 36
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    array-length v6, v5

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    .line 38
    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/zzfu;->zzava:[Lcom/google/android/gms/internal/measurement/zzfv;

    array-length v10, v9

    move v11, v3

    :goto_1
    if-ge v11, v10, :cond_4

    aget-object v12, v9, v11

    .line 39
    iget-object v13, v12, Lcom/google/android/gms/internal/measurement/zzfv;->zzavf:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zzal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 40
    iput-object v13, v12, Lcom/google/android/gms/internal/measurement/zzfv;->zzavf:Ljava/lang/String;

    .line 41
    :cond_1
    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzfv;->zzavg:[Lcom/google/android/gms/internal/measurement/zzfw;

    array-length v13, v12

    move v14, v3

    :goto_2
    if-ge v14, v13, :cond_3

    aget-object v15, v12, v14

    .line 42
    iget-object v3, v15, Lcom/google/android/gms/internal/measurement/zzfw;->zzavn:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/AppMeasurement$Param;->zzal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 43
    iput-object v3, v15, Lcom/google/android/gms/internal/measurement/zzfw;->zzavn:Ljava/lang/String;

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 44
    :cond_4
    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/zzfu;->zzauz:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v8, v3

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_6

    aget-object v10, v3, v9

    .line 45
    iget-object v11, v10, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/String;

    .line 46
    invoke-static {v11}, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zzal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 47
    iput-object v11, v10, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/String;

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_0

    .line 48
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzey;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzfu;)V

    const/4 v3, 0x0

    .line 49
    :try_start_0
    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawi:[Lcom/google/android/gms/internal/measurement/zzfu;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzzg;->zzvu()I

    move-result v3

    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 51
    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzyy;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzyy;

    move-result-object v3

    .line 52
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzgb;->zza(Lcom/google/android/gms/internal/measurement/zzyy;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    .line 55
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Unable to serialize reduced-size config. Storing full config instead. appId"

    .line 56
    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v4, p2

    .line 57
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v3

    .line 58
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    .line 61
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "remote_config"

    .line 62
    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v4, 0x1

    .line 63
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzq;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "apps"

    const-string v7, "app_id = ?"

    new-array v8, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    .line 64
    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_8

    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v5, "Failed to update remote config (got 0). appId"

    .line 67
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 68
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    .line 70
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Error storing remote config. appId"

    invoke-virtual {v3, v5, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_5
    return v4
.end method

.method public final bridge synthetic zzaf()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method protected final zzcf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzaf()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbn;->zzce(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgb;

    return-object p1
.end method

.method protected final zzcg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzaf()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaou:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final zzch(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzaf()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaou:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final zzci(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzaf()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final zzcj(Ljava/lang/String;)J
    .locals 3

    const-string v0, "measurement.account.time_zone_offset_minutes"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Unable to parse timezone offset. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method final zzck(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_internal"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzcl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_public"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzaf()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbn;->zzce(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaop:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
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

.method public final bridge synthetic zzgc()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgc()V

    return-void
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

.method public final bridge synthetic zzjo()Lcom/google/android/gms/measurement/internal/zzfg;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzey;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjp()Lcom/google/android/gms/measurement/internal/zzj;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzey;->zzjp()Lcom/google/android/gms/measurement/internal/zzj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjq()Lcom/google/android/gms/measurement/internal/zzq;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzey;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method

.method final zzo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzaf()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbn;->zzce(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbn;->zzck(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbn;->zzcl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaoq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return v0

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method final zzp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzaf()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbn;->zzce(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaor:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    return v0

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method final zzq(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbn;->zzaf()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbn;->zzce(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbn;->zzaot:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method
