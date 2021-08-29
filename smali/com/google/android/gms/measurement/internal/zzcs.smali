.class public final Lcom/google/android/gms/measurement/internal/zzcs;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field protected zzaqv:Lcom/google/android/gms/measurement/internal/zzdm;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzaqw:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

.field private final zzaqx:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzaqy:Z

.field private final zzaqz:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected zzara:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqx:Ljava/util/Set;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzcs;->zzara:Z

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqz:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 8

    .line 166
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 167
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iput-wide v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    .line 172
    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    .line 173
    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    .line 174
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcs(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    .line 177
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid conditional user property name"

    .line 178
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzi(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Invalid conditional user property value"

    .line 183
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    .line 187
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unable to normalize conditional user property value"

    .line 188
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 189
    :cond_2
    iput-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    .line 190
    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    .line 191
    iget-object v3, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    .line 192
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, 0x1

    const-wide v6, 0x39ef8b000L

    if-nez v3, :cond_4

    cmp-long v3, v1, v6

    if-gtz v3, :cond_3

    cmp-long v3, v1, v4

    if-gez v3, :cond_4

    .line 193
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    .line 195
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Invalid conditional user property timeout"

    .line 197
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 198
    :cond_4
    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    cmp-long v3, v1, v6

    if-gtz v3, :cond_6

    cmp-long v3, v1, v4

    if-gez v3, :cond_5

    goto :goto_0

    .line 199
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzda;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzda;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    .line 200
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V

    return-void

    .line 201
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    .line 203
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Invalid conditional user property time to live"

    .line 205
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzcs;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzky()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzcs;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzb(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    .line 218
    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/measurement/internal/zzcs;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzcs;Z)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzk(Z)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v6, p2

    move-object/from16 v5, p5

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzaf()V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 14
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_0
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqy:Z

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_1

    .line 17
    iput-boolean v7, v1, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqy:Z

    :try_start_0
    const-string v0, "com.google.android.gms.tagmanager.TagManagerService"

    .line 18
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "initialize"

    new-array v4, v7, [Ljava/lang/Class;

    .line 19
    const-class v9, Landroid/content/Context;

    aput-object v9, v4, v16

    .line 20
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 23
    :catch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjj()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/16 v0, 0x28

    if-eqz p8, :cond_6

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    const-string v3, "_iap"

    .line 25
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 26
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v3

    const-string v4, "event"

    .line 27
    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzfk;->zzr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x2

    if-nez v9, :cond_2

    goto :goto_1

    .line 28
    :cond_2
    sget-object v9, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zzadk:[Ljava/lang/String;

    invoke-virtual {v3, v4, v9, v6}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const/16 v10, 0xd

    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {v3, v4, v0, v6}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move/from16 v10, v16

    :goto_1
    if-eqz v10, :cond_6

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjf()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid public event name. Event will not be logged (FE)"

    .line 33
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    .line 36
    invoke-static {v6, v0, v7}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v6, :cond_5

    .line 37
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v16

    :cond_5
    move/from16 v2, v16

    .line 38
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 39
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v3

    const-string v4, "_ev"

    .line 40
    invoke-virtual {v3, v10, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 41
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgh()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzdo;->zzla()Lcom/google/android/gms/measurement/internal/zzdn;

    move-result-object v3

    const-string v4, "_sc"

    if-eqz v3, :cond_7

    .line 43
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 44
    iput-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzdn;->zzarn:Z

    :cond_7
    if-eqz p6, :cond_8

    if-eqz p8, :cond_8

    move v9, v7

    goto :goto_2

    :cond_8
    move/from16 v9, v16

    .line 45
    :goto_2
    invoke-static {v3, v5, v9}, Lcom/google/android/gms/measurement/internal/zzdo;->zza(Lcom/google/android/gms/measurement/internal/zzdn;Landroid/os/Bundle;Z)V

    const-string v9, "am"

    .line 46
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 47
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcv(Ljava/lang/String;)Z

    move-result v9

    if-eqz p6, :cond_9

    .line 48
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqw:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-eqz v10, :cond_9

    if-nez v9, :cond_9

    if-nez v17, :cond_9

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzan;->zzd(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Passing event to registered event handler (FE)"

    .line 53
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqw:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-wide/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;->interceptEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    .line 55
    :cond_9
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkr()Z

    move-result v9

    if-nez v9, :cond_a

    return-void

    .line 56
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcr(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_c

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjf()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event name. Event will not be logged (FE)"

    .line 60
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {v6, v0, v7}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v6, :cond_b

    .line 62
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v16

    .line 63
    :cond_b
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 64
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v2

    const-string v3, "_ev"

    move-object/from16 p1, v2

    move-object/from16 p2, p9

    move/from16 p3, v9

    move-object/from16 p4, v3

    move-object/from16 p5, v0

    move/from16 p6, v16

    .line 65
    invoke-virtual/range {p1 .. p6}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_c
    const-string v0, "_o"

    const-string v15, "_sn"

    const-string v14, "_si"

    .line 66
    filled-new-array {v0, v15, v4, v14}, [Ljava/lang/String;

    move-result-object v9

    .line 67
    invoke-static {v9}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v9

    const/16 v19, 0x1

    move-object/from16 v10, p9

    move-object/from16 v11, p2

    move-object/from16 v12, p5

    move-object/from16 v13, v18

    move-object v2, v14

    move/from16 v14, p8

    move-object v7, v15

    move/from16 v15, v19

    .line 69
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v15

    if-eqz v15, :cond_e

    .line 70
    invoke-virtual {v15, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 71
    invoke-virtual {v15, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_3

    .line 72
    :cond_d
    invoke-virtual {v15, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-virtual {v15, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 75
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzdn;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v9, v7, v4, v10, v11}, Lcom/google/android/gms/measurement/internal/zzdn;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object v2, v9

    goto :goto_4

    :cond_e
    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_f

    goto :goto_5

    :cond_f
    move-object v3, v2

    .line 76
    :goto_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmd()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v13

    .line 79
    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Landroid/os/Bundle;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 80
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 81
    array-length v4, v2

    move/from16 v5, v16

    move v12, v5

    :goto_6
    const-string v11, "_eid"

    if-ge v5, v4, :cond_12

    aget-object v10, v2, v5

    .line 82
    invoke-virtual {v15, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzfk;->zze(Ljava/lang/Object;)[Landroid/os/Bundle;

    move-result-object v9

    move-object/from16 p5, v2

    if-eqz v9, :cond_11

    .line 84
    array-length v2, v9

    invoke-virtual {v15, v10, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move/from16 v19, v4

    move/from16 v2, v16

    .line 85
    :goto_7
    array-length v4, v9

    if-ge v2, v4, :cond_10

    .line 86
    aget-object v4, v9, v2

    move-object/from16 p6, v15

    const/4 v15, 0x1

    .line 87
    invoke-static {v3, v4, v15}, Lcom/google/android/gms/measurement/internal/zzdo;->zza(Lcom/google/android/gms/measurement/internal/zzdn;Landroid/os/Bundle;Z)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v20

    const/16 v21, 0x0

    const-string v22, "_ep"

    move-object/from16 v23, v9

    move-object/from16 v9, v20

    move-object/from16 v24, v10

    move-object/from16 v10, p9

    move-object/from16 v25, v11

    move-object/from16 v11, v22

    move/from16 v26, v12

    move-object v12, v4

    move-object/from16 v20, v3

    move-wide v3, v13

    move-object/from16 v13, v18

    move/from16 v14, p8

    move-object/from16 v1, p6

    move/from16 v22, v15

    move/from16 v15, v21

    .line 89
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "_en"

    .line 90
    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, v25

    .line 91
    invoke-virtual {v9, v10, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v11, "_gn"

    move-object/from16 v12, v24

    .line 92
    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, v23

    .line 93
    array-length v13, v11

    const-string v14, "_ll"

    invoke-virtual {v9, v14, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "_i"

    .line 94
    invoke-virtual {v9, v13, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object v15, v1

    move-wide v13, v3

    move-object v9, v11

    move-object/from16 v3, v20

    move-object/from16 v1, p0

    move-object v11, v10

    move-object v10, v12

    move/from16 v12, v26

    goto :goto_7

    :cond_10
    move-object/from16 v20, v3

    move-object v11, v9

    move/from16 v26, v12

    move-wide v3, v13

    move-object v1, v15

    const/16 v22, 0x1

    .line 96
    array-length v2, v11

    move/from16 v9, v26

    add-int v12, v9, v2

    goto :goto_8

    :cond_11
    move-object/from16 v20, v3

    move/from16 v19, v4

    move v9, v12

    move-wide v3, v13

    move-object v1, v15

    const/16 v22, 0x1

    :goto_8
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p5

    move-object v15, v1

    move-wide v13, v3

    move/from16 v4, v19

    move-object/from16 v3, v20

    move-object/from16 v1, p0

    goto/16 :goto_6

    :cond_12
    move-object v10, v11

    move v9, v12

    move-wide v3, v13

    move-object v1, v15

    const/16 v22, 0x1

    if-eqz v9, :cond_13

    .line 97
    invoke-virtual {v1, v10, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "_epc"

    .line 98
    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_13
    move/from16 v1, v16

    .line 99
    :goto_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 100
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-eqz v1, :cond_14

    move/from16 v15, v22

    goto :goto_a

    :cond_14
    move/from16 v15, v16

    :goto_a
    if-eqz v15, :cond_15

    const-string v3, "_ep"

    goto :goto_b

    :cond_15
    move-object v3, v6

    .line 101
    :goto_b
    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_16

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zze(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    :cond_16
    move-object v9, v2

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/zzan;->zzd(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "Logging event (FE)"

    .line 107
    invoke-virtual {v2, v10, v4, v5}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzad;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {v4, v9}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Landroid/os/Bundle;)V

    move-object v2, v10

    move-object/from16 v5, p1

    move-object v11, v6

    move-object v12, v7

    move/from16 v13, v22

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;J)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgg()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v2

    move-object/from16 v14, p9

    invoke-virtual {v2, v10, v14}, Lcom/google/android/gms/measurement/internal/zzdr;->zzb(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)V

    move-object/from16 v10, p0

    if-nez v17, :cond_17

    .line 110
    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqx:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;

    .line 111
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v6, p3

    .line 112
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_c

    :cond_17
    add-int/lit8 v1, v1, 0x1

    move-object v6, v11

    move-object v7, v12

    move/from16 v22, v13

    goto/16 :goto_9

    :cond_18
    move-object/from16 v10, p0

    move-object v11, v6

    move/from16 v13, v22

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgh()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdo;->zzla()Lcom/google/android/gms/measurement/internal/zzdn;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v0, "_ae"

    .line 115
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgj()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzeq;->zzn(Z)Z

    :cond_19
    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzcv;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzcv;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 140
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 206
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 207
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    .line 209
    iput-object p1, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    .line 210
    iput-object p2, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    .line 211
    iput-wide v0, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    if-eqz p3, :cond_0

    .line 212
    iput-object p3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    .line 213
    iput-object p4, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzdb;

    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/measurement/internal/zzdb;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    .line 215
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzak(J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzcy;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 8
    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Interrupted waiting for app instance id"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzkb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Cannot get user properties from analytics worker thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 25
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzk;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Cannot get user properties from main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 28
    :cond_1
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 29
    monitor-enter v7

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzde;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzde;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 p1, 0x1388

    .line 33
    :try_start_1
    invoke-virtual {v7, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Interrupted waiting for get user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    :goto_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Timed out waiting for get user properties"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 39
    :cond_2
    new-instance p2, Lb/d/a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Lb/d/a;-><init>(I)V

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/measurement/internal/zzfh;

    .line 41
    iget-object p4, p3, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object p2

    :catchall_0
    move-exception p1

    .line 42
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private final zzb(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 24

    move-object/from16 v0, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzaf()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    .line 11
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Conditional property not sent since collection is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_0
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 14
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    iget-object v13, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 15
    invoke-virtual/range {v9 .. v17}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v14

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 17
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v11

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v15

    iget-object v3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 19
    invoke-virtual/range {v15 .. v23}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzl;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-wide v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    move-object/from16 v18, v10

    iget-wide v9, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-object v3, v15

    move-object v6, v2

    move-wide/from16 v19, v9

    const/4 v0, 0x0

    move v9, v0

    move-object/from16 v10, v18

    move-object v0, v15

    move-wide/from16 v15, v19

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/zzl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfh;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;JLcom/google/android/gms/measurement/internal/zzad;JLcom/google/android/gms/measurement/internal/zzad;)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgg()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzd(Lcom/google/android/gms/measurement/internal/zzl;)V

    :catch_0
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzcs;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzc(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 13

    .line 1
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/measurement/internal/zzfk;->zzf(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v11

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzcu;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/measurement/internal/zzcu;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 3
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 22

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzaf()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v1, p0

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Conditional property not cleared since collection is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 8
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    iget-object v13, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v14, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 9
    invoke-virtual/range {v9 .. v17}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzl;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-boolean v9, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-wide v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    const/4 v14, 0x0

    move-wide/from16 v18, v12

    iget-wide v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-object v3, v15

    move-object v6, v2

    move-wide/from16 v20, v11

    const/4 v0, 0x0

    move-object v11, v0

    move-wide/from16 v12, v18

    move-object v0, v15

    move-wide/from16 v15, v20

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/zzl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfh;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;JLcom/google/android/gms/measurement/internal/zzad;JLcom/google/android/gms/measurement/internal/zzad;)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgg()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzd(Lcom/google/android/gms/measurement/internal/zzl;)V

    :catch_0
    return-void
.end method

.method private final zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzkb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzk;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 10
    monitor-enter v6

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzdc;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzdc;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 p2, 0x1388

    .line 14
    :try_start_1
    invoke-virtual {v6, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 15
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    const-string v0, "Interrupted waiting for get conditional user properties"

    .line 17
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Timed out waiting for get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 22
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/measurement/internal/zzl;

    .line 24
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    .line 25
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    .line 26
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->origin:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    .line 27
    iget-wide v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->creationTimestamp:J

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    .line 28
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    .line 30
    iget-boolean v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->active:Z

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    .line 31
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->triggerEventName:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    .line 32
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->zzahc:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz v1, :cond_3

    .line 33
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    .line 34
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v1, :cond_3

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaa;->zziv()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    .line 36
    :cond_3
    iget-wide v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->triggerTimeout:J

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    .line 37
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->zzahd:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz v1, :cond_4

    .line 38
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    .line 39
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v1, :cond_4

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaa;->zziv()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    .line 41
    :cond_4
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-wide v1, v1, Lcom/google/android/gms/measurement/internal/zzfh;->zzaue:J

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    .line 42
    iget-wide v1, p3, Lcom/google/android/gms/measurement/internal/zzl;->timeToLive:J

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    .line 43
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzl;->zzahe:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz p3, :cond_5

    .line 44
    iget-object v1, p3, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    .line 45
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz p3, :cond_5

    .line 46
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaa;->zziv()Landroid/os/Bundle;

    move-result-object p3

    iput-object p3, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    .line 47
    :cond_5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    .line 48
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private final zzk(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Setting app measurement enabled (FE)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzba;->setMeasurementEnabled(Z)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzky()V

    return-void
.end method

.method private final zzky()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgf()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzal()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaf;->zzalj:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzn;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzj(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgf()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzn;->zzbd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->zzara:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Recording app launch after enabling measurement for the first time (FE)"

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzkz()V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Updating Scion state (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgg()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzlc()V

    return-void
.end method


# virtual methods
.method public final clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzcs;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final clearConditionalUserPropertyAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzga()V

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzcs;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzcs;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getConditionalUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzga()V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzcs;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentScreenClass()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgh()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdo;->zzlb()Lcom/google/android/gms/measurement/internal/zzdn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdn;->zzarl:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrentScreenName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgh()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdo;->zzlb()Lcom/google/android/gms/measurement/internal/zzdn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdn;->zzuw:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGmpAppId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkk()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkk()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->getGoogleAppId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "getGoogleAppId failed with exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzcs;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final getUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzga()V

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzcs;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zzcs;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 12

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    if-nez p1, :cond_0

    const-string v0, "app"

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-nez p3, :cond_1

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p3

    :goto_1
    const/4 v0, 0x1

    move-object v11, p0

    if-eqz p5, :cond_3

    .line 4
    iget-object v1, v11, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqw:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-eqz v1, :cond_3

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcv(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    move v8, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v0

    :goto_3
    xor-int/lit8 v9, p4, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-wide/from16 v4, p6

    move/from16 v7, p5

    .line 6
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzcs;->zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final registerOnMeasurementEventListener(Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqx:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "OnEventListener already registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final resetAnalyticsData(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzalk:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzn;->zza(Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzcm(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcz;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzcz;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;J)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setConditionalUserProperty(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    .line 4
    iget-object p1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v1, "Package name should be null when calling setConditionalUserProperty"

    .line 7
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzcs;->zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public final setConditionalUserPropertyAs(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzga()V

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzcs;->zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public final setEventInterceptor(Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqw:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-eq p1, v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "EventInterceptor already set."

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqw:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    return-void
.end method

.method public final setMeasurementEnabled(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzdi;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Z)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setMinimumSessionDuration(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdk;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzdk;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;J)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setSessionTimeoutDuration(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdl;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzdl;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;J)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final unregisterOnMeasurementEventListener(Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqx:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "OnEventListener had not been registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 11

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzaf()V

    move-object v10, p0

    .line 7
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqw:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v7, v0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    .line 8
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzcs;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzaf()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzcs;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzcs;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 7

    .line 141
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzaf()V

    .line 144
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgf()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzal()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaf;->zzalj:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzn;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result v0

    const-string v1, "_ap"

    if-eqz v0, :cond_4

    .line 147
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "auto"

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 149
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 150
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v4, v2

    .line 151
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 152
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->zzans:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 153
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "false"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbf;->zzcc(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    if-nez p3, :cond_5

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->zzans:Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v1, "unset"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbf;->zzcc(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzcw;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;)V

    .line 156
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 157
    :cond_4
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :goto_3
    move-object v5, p3

    .line 158
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbt;->isEnabled()Z

    move-result p3

    if-nez p3, :cond_6

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "User property not set since app measurement is disabled"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    return-void

    .line 160
    :cond_6
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkr()Z

    move-result p3

    if-nez p3, :cond_7

    return-void

    .line 161
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    .line 162
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setting user property (FE)"

    invoke-virtual {p3, v1, v0, v5}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzfh;

    move-object v1, p3

    move-object v2, p2

    move-wide v3, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgg()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/zzdr;->zzb(Lcom/google/android/gms/measurement/internal/zzfh;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "app"

    :cond_0
    move-object v1, p1

    const/4 p1, 0x6

    const/4 v0, 0x0

    const/16 v2, 0x18

    if-nez p4, :cond_5

    const-string p4, "_ap"

    .line 117
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object p4

    const-string v3, "user property"

    .line 119
    invoke-virtual {p4, v3, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 120
    :cond_2
    sget-object v4, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zzado:[Ljava/lang/String;

    invoke-virtual {p4, v3, v4, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 p1, 0xf

    goto :goto_1

    .line 121
    :cond_3
    invoke-virtual {p4, v3, v2, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_4

    goto :goto_1

    :cond_4
    move p1, v0

    goto :goto_1

    .line 122
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcs(Ljava/lang/String;)I

    move-result p1

    :goto_1
    const-string p4, "_ev"

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_6

    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 125
    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 126
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object p2

    .line 127
    invoke-virtual {p2, p1, p4, p3, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_7
    if-eqz p3, :cond_c

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfk;->zzi(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_a

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    .line 130
    instance-of p5, p3, Ljava/lang/String;

    if-nez p5, :cond_8

    instance-of p5, p3, Ljava/lang/CharSequence;

    if-eqz p5, :cond_9

    .line 131
    :cond_8
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 132
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 133
    :cond_9
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 134
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object p3

    .line 135
    invoke-virtual {p3, p1, p4, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 136
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfk;->zzj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p5

    .line 137
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzcs;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_b
    return-void

    :cond_c
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p5

    .line 138
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzcs;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic zzaf()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzaf()V

    return-void
.end method

.method public final zzaj(J)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzkb()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Cannot retrieve app instance id from analytics worker thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    return-object p2

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzk;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Cannot retrieve app instance id from main thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    return-object p2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/32 v0, 0x1d4c0

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzak(J)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, p1

    if-nez v2, :cond_2

    cmp-long p1, v3, v0

    if-gez p1, :cond_2

    sub-long/2addr v0, v3

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzak(J)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 8

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzcs;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzcm(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqz:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzdj;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Z)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzfx()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqz:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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

.method public final zzks()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcs;->zzaqv:Lcom/google/android/gms/measurement/internal/zzdm;

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final zzkt()Ljava/lang/Boolean;
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzct;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzct;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "boolean test flag value"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzbo;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzku()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzdd;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzdd;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "String test flag value"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzbo;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzkv()Ljava/lang/Long;
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzdf;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzdf;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "long test flag value"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzbo;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final zzkw()Ljava/lang/Integer;
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzdg;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzdg;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "int test flag value"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzbo;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzkx()Ljava/lang/Double;
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzdh;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzdh;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    const-string v4, "double test flag value"

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzbo;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final zzkz()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgg()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdr;->zzkz()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzcs;->zzara:Z

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzba;->zzjw()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgk()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzcl()V

    .line 11
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_po"

    .line 14
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "auto"

    const-string v2, "_ou"

    .line 15
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzcs;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final zzl(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfh;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgb()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Fetching user attributes (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzkb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Cannot get all user properties from analytics worker thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzk;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Cannot get all user properties from main thread"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzcx;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzcx;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    .line 14
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x1388

    .line 15
    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Interrupted waiting for get user properties"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Timed out waiting for get user properties"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 21
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
