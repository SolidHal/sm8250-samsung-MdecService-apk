.class public final Lcom/google/android/gms/measurement/internal/zzaj;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field private zzafx:Ljava/lang/String;

.field private zzage:Ljava/lang/String;

.field private zzagh:J

.field private zzagk:Ljava/lang/String;

.field private zzagy:I

.field private zzalo:I

.field private zzalp:J

.field private zztr:Ljava/lang/String;

.field private zzts:Ljava/lang/String;

.field private zztt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    return-void
.end method

.method private final zziz()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_1
    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 4
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    :try_start_2
    const-string v3, "getFirebaseInstanceId"

    new-array v4, v6, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 8
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzji()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    return-object v0

    .line 9
    :catch_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjh()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    :catch_2
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

.method final getGmpAppId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzafx:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic zzaf()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzaf()V

    return-void
.end method

.method final zzal()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zztt:Ljava/lang/String;

    return-object v0
.end method

.method final zzbr(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;
    .locals 29

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzaf()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgb()V

    .line 3
    new-instance v25, Lcom/google/android/gms/measurement/internal/zzh;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzal()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->getGmpAppId()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 7
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaj;->zzts:Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzja()I

    move-result v1

    int-to-long v5, v1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 10
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzaj;->zzage:Ljava/lang/String;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzn;->zzhc()J

    move-result-wide v8

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzaf()V

    .line 14
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzaj;->zzalp:J

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-nez v1, :cond_0

    .line 15
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/measurement/internal/zzfk;->zzd(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzaj;->zzalp:J

    .line 16
    :cond_0
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzaj;->zzalp:J

    .line 17
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->isEnabled()Z

    move-result v13

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/measurement/internal/zzba;->zzanv:Z

    const/4 v12, 0x1

    xor-int/lit8 v14, v1, 0x1

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzaf()V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgb()V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v1

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/zzaj;->zztt:Ljava/lang/String;

    invoke-virtual {v1, v15}, Lcom/google/android/gms/measurement/internal/zzn;->zzbc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 24
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zziz()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v15, v1

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    move/from16 v16, v14

    move-object/from16 v17, v15

    .line 26
    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/zzaj;->zzagh:J

    .line 27
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkp()J

    move-result-wide v18

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzjb()I

    move-result v20

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzn;->zzgb()V

    const-string v12, "google_analytics_adid_collection_enabled"

    .line 32
    invoke-virtual {v1, v12}, Lcom/google/android/gms/measurement/internal/zzn;->zzau(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 33
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzn;->zzgb()V

    const-string v12, "google_analytics_ssaid_collection_enabled"

    .line 37
    invoke-virtual {v1, v12}, Lcom/google/android/gms/measurement/internal/zzn;->zzau(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 38
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v12, 0x1

    :goto_4
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzba;->zzjx()Z

    move-result v23

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgw()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v1, v25

    move-object/from16 v12, p1

    move-wide/from16 v27, v14

    move/from16 v14, v16

    move-object/from16 v15, v17

    move-wide/from16 v16, v27

    move/from16 v21, v26

    invoke-direct/range {v1 .. v24}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;)V

    return-object v25
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

    const/4 v0, 0x1

    return v0
.end method

.method protected final zzgu()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "Unknown"

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "unknown"

    const/high16 v6, -0x80000000

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 6
    invoke-virtual {v1, v8, v7}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v1, v2

    goto/16 :goto_4

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v7

    .line 9
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v7

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v5, :cond_2

    const-string v5, "manual_install"

    goto :goto_1

    :cond_2
    const-string v7, "com.android.vending"

    .line 11
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v5, v3

    .line 12
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 13
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 14
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 16
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_4
    move-object v1, v2

    .line 17
    :goto_2
    :try_start_2
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 18
    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_3

    :catch_2
    move-object v1, v2

    .line 19
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v7

    .line 20
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v7

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving package info. appId, appName"

    .line 22
    invoke-virtual {v7, v9, v8, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 23
    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zztt:Ljava/lang/String;

    .line 24
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzage:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzts:Ljava/lang/String;

    .line 26
    iput v6, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzalo:I

    .line 27
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zztr:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 28
    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzalp:J

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/GoogleServices;->initialize(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 31
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v6

    goto :goto_5

    :cond_5
    move v7, v4

    .line 32
    :goto_5
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 33
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkk()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "am"

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 34
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v6

    goto :goto_6

    :cond_6
    move v8, v4

    :goto_6
    or-int/2addr v7, v8

    if-nez v7, :cond_8

    if-nez v5, :cond_7

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v5

    const-string v8, "GoogleService failed to initialize (no status)"

    invoke-virtual {v5, v8}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    goto :goto_7

    .line 36
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v8

    .line 37
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v8

    .line 38
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 39
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v5

    const-string v11, "GoogleService failed to initialize, status"

    .line 40
    invoke-virtual {v8, v11, v10, v5}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_7
    if-eqz v7, :cond_c

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzn;->zzhv()Ljava/lang/Boolean;

    move-result-object v5

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzn;->zzhu()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 43
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkj()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    .line 45
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->zzjj()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v5

    const-string v6, "Collection disabled with firebase_analytics_collection_deactivated=1"

    .line 46
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    if-eqz v5, :cond_a

    .line 47
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_a

    .line 48
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkj()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    .line 50
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->zzjj()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v5

    const-string v6, "Collection disabled with firebase_analytics_collection_enabled=0"

    .line 51
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    if-nez v5, :cond_b

    .line 52
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->isMeasurementExplicitlyDisabled()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->zzjj()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v5

    const-string v6, "Collection disabled with google_app_measurement_enable=0"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    goto :goto_8

    .line 54
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v5

    const-string v7, "Collection enabled"

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    :goto_8
    move v6, v4

    .line 55
    :goto_9
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzafx:Ljava/lang/String;

    .line 56
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzagk:Ljava/lang/String;

    .line 57
    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzagh:J

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkk()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzagk:Ljava/lang/String;

    .line 62
    :cond_d
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->getGoogleAppId()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_a

    :cond_e
    move-object v3, v1

    :goto_a
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzafx:Ljava/lang/String;

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 65
    new-instance v1, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    const-string v2, "gma_app_id"

    .line 66
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzagk:Ljava/lang/String;

    :cond_f
    if-eqz v6, :cond_10

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "App package, google app id"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zztt:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzafx:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception v1

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    .line 70
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "getGoogleAppId or isMeasurementEnabled failed with exception. appId"

    .line 71
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    :cond_10
    :goto_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzagy:I

    return-void

    .line 74
    :cond_11
    iput v4, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzagy:I

    return-void
.end method

.method final zzgw()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzagk:Ljava/lang/String;

    return-object v0
.end method

.method final zzja()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 2
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzalo:I

    return v0
.end method

.method final zzjb()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 2
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzagy:I

    return v0
.end method
