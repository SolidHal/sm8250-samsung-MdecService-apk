.class public abstract Lcom/google/android/gms/internal/measurement/zzzg;
.super Ljava/lang/Object;


# instance fields
.field protected volatile zzcfm:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfm:I

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/measurement/zzzg;[B)Lcom/google/android/gms/internal/measurement/zzzg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzzg;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzzg;->zzb(Lcom/google/android/gms/internal/measurement/zzzg;[BII)Lcom/google/android/gms/internal/measurement/zzzg;

    move-result-object p0

    return-object p0
.end method

.method public static final zza(Lcom/google/android/gms/internal/measurement/zzzg;[BII)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyy;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzyy;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzg;->zza(Lcom/google/android/gms/internal/measurement/zzyy;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyy;->zzyt()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final zzb(Lcom/google/android/gms/internal/measurement/zzzg;[BII)Lcom/google/android/gms/internal/measurement/zzzg;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzzg;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyx;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzyx;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzg;->zza(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzyx;->zzan(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzzf; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 5
    throw p0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzg;->zzyu()Lcom/google/android/gms/internal/measurement/zzzg;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzzh;->zzc(Lcom/google/android/gms/internal/measurement/zzzg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
.end method

.method public zza(Lcom/google/android/gms/internal/measurement/zzyy;)V
    .locals 0

    return-void
.end method

.method protected zzf()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzvu()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzg;->zzf()I

    move-result v0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfm:I

    return v0
.end method

.method public zzyu()Lcom/google/android/gms/internal/measurement/zzzg;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzzg;

    return-object v0
.end method

.method public final zzza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfm:I

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzg;->zzvu()I

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzg;->zzcfm:I

    return v0
.end method
