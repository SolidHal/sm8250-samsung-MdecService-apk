.class public final Lcom/google/android/gms/internal/measurement/zzfv;
.super Lcom/google/android/gms/internal/measurement/zzza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzza<",
        "Lcom/google/android/gms/internal/measurement/zzfv;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzavd:[Lcom/google/android/gms/internal/measurement/zzfv;


# instance fields
.field public zzavb:Ljava/lang/Boolean;

.field public zzavc:Ljava/lang/Boolean;

.field public zzave:Ljava/lang/Integer;

.field public zzavf:Ljava/lang/String;

.field public zzavg:[Lcom/google/android/gms/internal/measurement/zzfw;

.field private zzavh:Ljava/lang/Boolean;

.field public zzavi:Lcom/google/android/gms/internal/measurement/zzfx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzza;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzave:Ljava/lang/Integer;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavf:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->zzmk()[Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavg:[Lcom/google/android/gms/internal/measurement/zzfw;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavh:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavi:Lcom/google/android/gms/internal/measurement/zzfx;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavb:Ljava/lang/Boolean;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavc:Ljava/lang/Boolean;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfm:I

    return-void
.end method

.method public static zzmj()[Lcom/google/android/gms/internal/measurement/zzfv;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavd:[Lcom/google/android/gms/internal/measurement/zzfv;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzze;->zzcfl:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavd:[Lcom/google/android/gms/internal/measurement/zzfv;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzfv;

    .line 4
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavd:[Lcom/google/android/gms/internal/measurement/zzfv;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavd:[Lcom/google/android/gms/internal/measurement/zzfv;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzfv;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfv;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzave:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzave:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    return v2

    .line 5
    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzave:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavf:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavf:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v2

    .line 8
    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavf:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 9
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavg:[Lcom/google/android/gms/internal/measurement/zzfw;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavg:[Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzze;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 10
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavh:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    .line 11
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavh:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    return v2

    .line 12
    :cond_7
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavh:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 13
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavi:Lcom/google/android/gms/internal/measurement/zzfx;

    if-nez v1, :cond_9

    .line 14
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavi:Lcom/google/android/gms/internal/measurement/zzfx;

    if-eqz v1, :cond_a

    return v2

    .line 15
    :cond_9
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavi:Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzfx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 16
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavb:Ljava/lang/Boolean;

    if-nez v1, :cond_b

    .line 17
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavb:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    return v2

    .line 18
    :cond_b
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavb:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 19
    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavc:Ljava/lang/Boolean;

    if-nez v1, :cond_d

    .line 20
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavc:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    return v2

    .line 21
    :cond_d
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfv;->zzavc:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 22
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_0

    .line 23
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 24
    :cond_10
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzc;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_1

    :cond_11
    return v2

    :cond_12
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzfv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzave:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavf:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavg:[Lcom/google/android/gms/internal/measurement/zzfw;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzze;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavh:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavi:Lcom/google/android/gms/internal/measurement/zzfx;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    .line 8
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfx;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavb:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavc:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    .line 12
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzza;->zzcfc:Lcom/google/android/gms/internal/measurement/zzzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzc;->hashCode()I

    move-result v2

    :cond_7
    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
    .locals 5

    .line 18
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->zzug()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b

    const/16 v1, 0x12

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_6

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    .line 19
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzza;->zza(Lcom/google/android/gms/internal/measurement/zzyx;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->zzum()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavc:Ljava/lang/Boolean;

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->zzum()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavb:Ljava/lang/Boolean;

    goto :goto_0

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavi:Lcom/google/android/gms/internal/measurement/zzfx;

    if-nez v0, :cond_4

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavi:Lcom/google/android/gms/internal/measurement/zzfx;

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavi:Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzyx;->zza(Lcom/google/android/gms/internal/measurement/zzzg;)V

    goto :goto_0

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->zzum()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavh:Ljava/lang/Boolean;

    goto :goto_0

    .line 26
    :cond_6
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(Lcom/google/android/gms/internal/measurement/zzyx;I)I

    move-result v0

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavg:[Lcom/google/android/gms/internal/measurement/zzfw;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_1

    :cond_7
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 28
    new-array v3, v0, [Lcom/google/android/gms/internal/measurement/zzfw;

    if-eqz v1, :cond_8

    .line 29
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavg:[Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_9

    .line 30
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfw;-><init>()V

    aput-object v2, v3, v1

    .line 31
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzyx;->zza(Lcom/google/android/gms/internal/measurement/zzzg;)V

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->zzug()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 33
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfw;-><init>()V

    aput-object v0, v3, v1

    .line 34
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzyx;->zza(Lcom/google/android/gms/internal/measurement/zzzg;)V

    .line 35
    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavg:[Lcom/google/android/gms/internal/measurement/zzfw;

    goto/16 :goto_0

    .line 36
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavf:Ljava/lang/String;

    goto/16 :goto_0

    .line 37
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyx;->zzuy()I

    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzave:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_c
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzyy;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzave:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->zzd(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavf:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->zzb(ILjava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavg:[Lcom/google/android/gms/internal/measurement/zzfw;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavg:[Lcom/google/android/gms/internal/measurement/zzfw;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 7
    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 8
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->zza(ILcom/google/android/gms/internal/measurement/zzzg;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavh:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->zzb(IZ)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavi:Lcom/google/android/gms/internal/measurement/zzfx;

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->zza(ILcom/google/android/gms/internal/measurement/zzzg;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavb:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v1, 0x6

    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->zzb(IZ)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavc:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    const/4 v1, 0x7

    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->zzb(IZ)V

    .line 17
    :cond_7
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzza;->zza(Lcom/google/android/gms/internal/measurement/zzyy;)V

    return-void
.end method

.method protected final zzf()I
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzza;->zzf()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzave:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->zzh(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavf:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 5
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavg:[Lcom/google/android/gms/internal/measurement/zzfw;

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavg:[Lcom/google/android/gms/internal/measurement/zzfw;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 8
    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    .line 9
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzyy;->zzb(ILcom/google/android/gms/internal/measurement/zzzg;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavh:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    const/4 v3, 0x4

    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzyy;->zzbb(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavi:Lcom/google/android/gms/internal/measurement/zzfx;

    if-eqz v1, :cond_5

    const/4 v3, 0x5

    .line 14
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzyy;->zzb(ILcom/google/android/gms/internal/measurement/zzzg;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavb:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    const/4 v3, 0x6

    .line 16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzyy;->zzbb(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 18
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfv;->zzavc:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    const/4 v3, 0x7

    .line 19
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzyy;->zzbb(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method
