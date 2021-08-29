.class public final Lcom/google/android/gms/measurement/internal/zzfk;
.super Lcom/google/android/gms/measurement/internal/zzcp;


# static fields
.field private static final zzaui:[Ljava/lang/String;


# instance fields
.field private zzaed:I

.field private zzauj:Ljava/security/SecureRandom;

.field private final zzauk:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzaul:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "firebase_"

    const-string v1, "google_"

    const-string v2, "ga_"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaui:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcp;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaul:Ljava/lang/Integer;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method static getMessageDigest()Ljava/security/MessageDigest;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :try_start_0
    const-string v1, "MD5"

    .line 1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zza(ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 83
    :cond_0
    instance-of v1, p1, Ljava/lang/Long;

    if-nez v1, :cond_a

    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_1

    goto :goto_2

    .line 84
    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 85
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 86
    :cond_2
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_3

    .line 87
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 88
    :cond_3
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_4

    .line 89
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 90
    :cond_4
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 91
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_5
    const-wide/16 p0, 0x0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 92
    :cond_6
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 93
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 94
    :cond_7
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_9

    instance-of v1, p1, Ljava/lang/Character;

    if-nez v1, :cond_9

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    return-object v0

    .line 95
    :cond_9
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p1, p0, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_2
    return-object p1
.end method

.method public static zza(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    if-le v0, p1, :cond_1

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public static zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 191
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 194
    aget-object v2, p1, v1

    invoke-static {p0, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    aget-object p0, p2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 2

    .line 145
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 146
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v0, p1

    const-string p1, "_el"

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method static zza(Landroid/content/Context;Z)Z
    .locals 1

    .line 169
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    const-string p1, "com.google.android.gms.measurement.AppMeasurementJobService"

    .line 171
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string p1, "com.google.android.gms.measurement.AppMeasurementService"

    .line 172
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static zza(Landroid/os/Bundle;I)Z
    .locals 5

    const-string v0, "_err"

    .line 143
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    int-to-long v1, p1

    .line 144
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p4, :cond_0

    return v0

    .line 49
    :cond_0
    instance-of v1, p4, Ljava/lang/Long;

    if-nez v1, :cond_b

    instance-of v1, p4, Ljava/lang/Float;

    if-nez v1, :cond_b

    instance-of v1, p4, Ljava/lang/Integer;

    if-nez v1, :cond_b

    instance-of v1, p4, Ljava/lang/Byte;

    if-nez v1, :cond_b

    instance-of v1, p4, Ljava/lang/Short;

    if-nez v1, :cond_b

    instance-of v1, p4, Ljava/lang/Boolean;

    if-nez v1, :cond_b

    instance-of v1, p4, Ljava/lang/Double;

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 50
    :cond_1
    instance-of v1, p4, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    instance-of v1, p4, Ljava/lang/Character;

    if-nez v1, :cond_a

    instance-of v1, p4, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 51
    :cond_2
    instance-of p1, p4, Landroid/os/Bundle;

    if-eqz p1, :cond_3

    if-eqz p5, :cond_3

    return v0

    .line 52
    :cond_3
    instance-of p1, p4, [Landroid/os/Parcelable;

    if-eqz p1, :cond_6

    if-eqz p5, :cond_6

    .line 53
    check-cast p4, [Landroid/os/Parcelable;

    .line 54
    array-length p1, p4

    move p3, v2

    :goto_0
    if-ge p3, p1, :cond_5

    aget-object p5, p4, p3

    .line 55
    instance-of v1, p5, Landroid/os/Bundle;

    if-nez v1, :cond_4

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    .line 58
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string p4, "All Parcelable[] elements must be of type Bundle. Value type, name"

    .line 59
    invoke-virtual {p1, p4, p3, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    return v0

    .line 60
    :cond_6
    instance-of p1, p4, Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    if-eqz p5, :cond_9

    .line 61
    check-cast p4, Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p3, v2

    :cond_7
    if-ge p3, p1, :cond_8

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 p3, p3, 0x1

    .line 63
    instance-of v1, p5, Landroid/os/Bundle;

    if-nez v1, :cond_7

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    .line 66
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string p4, "All ArrayList elements must be of type Bundle. Value type, name"

    .line 67
    invoke-virtual {p1, p4, p3, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_8
    return v0

    :cond_9
    return v2

    .line 68
    :cond_a
    :goto_1
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 69
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    invoke-virtual {p4, v2, p5}, Ljava/lang/String;->codePointCount(II)I

    move-result p5

    if-le p5, p3, :cond_b

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    .line 71
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    .line 72
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "Value is too long; discarded. Value kind, name, value length"

    .line 73
    invoke-virtual {p3, p5, p1, p2, p4}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_b
    :goto_2
    return v0
.end method

.method static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 77
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 78
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v3

    .line 79
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v3

    :cond_5
    if-nez v0, :cond_9

    if-eqz v1, :cond_9

    .line 80
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v3

    .line 81
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    return v3

    :cond_8
    :goto_0
    return v2

    .line 82
    :cond_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_1

    :cond_a
    return v3

    :cond_b
    :goto_1
    return v2
.end method

.method static zza(Landroid/os/Parcelable;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 186
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 187
    :try_start_0
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static zzc(JJ)J
    .locals 2

    const-wide/32 v0, 0xea60

    mul-long/2addr p2, v0

    add-long/2addr p0, p2

    const-wide/32 p2, 0x5265c00

    .line 9
    div-long/2addr p0, p2

    return-wide p0
.end method

.method static zzc([B)J
    .locals 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const-wide/16 v3, 0x0

    .line 3
    array-length v0, p0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_1

    .line 4
    array-length v1, p0

    add-int/lit8 v1, v1, -0x8

    if-lt v0, v1, :cond_1

    .line 5
    aget-byte v1, p0, v0

    int-to-long v5, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    shl-long/2addr v5, v2

    add-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-wide v3
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 7
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 8
    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method static zzcq(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1

    const-string v1, "_ep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static zzct(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static zzcu(Ljava/lang/String;)I
    .locals 1

    const-string v0, "_ldl"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x800

    return p0

    :cond_0
    const-string v0, "_id"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x100

    return p0

    :cond_1
    const/16 p0, 0x24

    return p0
.end method

.method static zzcv(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static zzd(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "android.intent.extra.REFERRER_NAME"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://www.google.com"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android-app://com.google.appcrawler"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zze(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 15
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 16
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    const/16 v1, 0x40

    .line 17
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-lez p2, :cond_0

    .line 19
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    const-string p2, "X.509"

    .line 20
    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    .line 21
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 22
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 23
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v0, "Package name not found"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v0, "Error obtaining certificate"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method static zze(Ljava/lang/Object;)[Landroid/os/Bundle;
    .locals 2

    .line 1
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 2
    check-cast p0, Landroid/os/Bundle;

    aput-object p0, v0, v1

    return-object v0

    .line 3
    :cond_0
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, [Landroid/os/Parcelable;

    array-length v0, p0

    const-class v1, [Landroid/os/Bundle;

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzf(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 7
    new-instance v3, Landroid/os/Bundle;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 8
    :cond_2
    instance-of v1, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 9
    check-cast v2, [Landroid/os/Parcelable;

    .line 10
    :goto_1
    array-length v1, v2

    if-ge v3, v1, :cond_1

    .line 11
    aget-object v1, v2, v3

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 12
    new-instance v1, Landroid/os/Bundle;

    aget-object v4, v2, v3

    check-cast v4, Landroid/os/Bundle;

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v1, v2, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_4
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 14
    check-cast v2, Ljava/util/List;

    .line 15
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 17
    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_5

    .line 18
    new-instance v4, Landroid/os/Bundle;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method public static zzf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 19
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 20
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 21
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 23
    new-instance p0, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 24
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 27
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object p0, v0

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object p0, v0

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    :cond_1
    if-eqz p0, :cond_2

    .line 29
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    :cond_2
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-object v0
.end method

.method private final zzs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 4
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 5
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    const/16 v3, 0x5f

    if-nez v2, :cond_2

    if-eq v1, v3, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Name must start with a letter or _ (underscore). Type, name"

    .line 8
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 9
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 10
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_0
    if-ge v1, v2, :cond_4

    .line 11
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 12
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 15
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 16
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method static zzu(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "gclid"

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "utm_campaign"

    .line 2
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "utm_source"

    .line 3
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utm_medium"

    .line 4
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    .line 6
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    .line 10
    :cond_3
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "campaign"

    .line 12
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "source"

    .line 14
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "medium"

    .line 16
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 18
    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v1, "utm_term"

    .line 19
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "term"

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v1, "utm_content"

    .line 22
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "content"

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v1, "aclid"

    .line 25
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v1, "cp1"

    .line 28
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v1, "anid"

    .line 31
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 33
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-object v0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Install referrer url isn\'t a hierarchical URI"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v9, 0x0

    if-eqz v7, :cond_16

    .line 99
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    const/16 v15, 0x28

    const/4 v0, 0x3

    if-eqz v8, :cond_1

    .line 101
    invoke-interface {v8, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_6

    :cond_1
    :goto_1
    const/16 v1, 0xe

    const-string v2, "event param"

    if-eqz p5, :cond_4

    .line 102
    invoke-virtual {v6, v2, v14}, Lcom/google/android/gms/measurement/internal/zzfk;->zzr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    move v3, v0

    goto :goto_3

    .line 103
    :cond_2
    invoke-virtual {v6, v2, v9, v14}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    .line 104
    :cond_3
    invoke-virtual {v6, v2, v15, v14}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_8

    .line 105
    invoke-direct {v6, v2, v14}, Lcom/google/android/gms/measurement/internal/zzfk;->zzs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :goto_4
    move v1, v0

    goto :goto_5

    .line 106
    :cond_5
    invoke-virtual {v6, v2, v9, v14}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    .line 107
    :cond_6
    invoke-virtual {v6, v2, v15, v14}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_5
    move v3, v1

    :cond_8
    :goto_6
    const-string v5, "_ev"

    const/4 v4, 0x1

    if-eqz v3, :cond_a

    .line 108
    invoke-static {v10, v3}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Landroid/os/Bundle;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 109
    invoke-static {v14, v15, v4}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v10, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v0, :cond_9

    .line 111
    invoke-static {v10, v14}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 112
    :cond_9
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 113
    :cond_a
    invoke-virtual {v7, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    if-eqz p6, :cond_d

    .line 115
    instance-of v0, v3, [Landroid/os/Parcelable;

    if-eqz v0, :cond_b

    .line 116
    move-object v0, v3

    check-cast v0, [Landroid/os/Parcelable;

    array-length v0, v0

    goto :goto_7

    .line 117
    :cond_b
    instance-of v0, v3, Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 118
    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_7
    const/16 v1, 0x3e8

    if-le v0, v1, :cond_c

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Parameter array is too long; discarded. Value kind, name, array length"

    const-string v4, "param"

    .line 122
    invoke-virtual {v1, v2, v4, v14, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_8

    :cond_c
    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_d

    const/16 v0, 0x11

    move-object v12, v5

    const/4 v9, 0x1

    goto :goto_a

    .line 123
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzn;->zzay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 124
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 125
    :cond_e
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const/16 v16, 0x100

    const-string v1, "param"

    move-object/from16 v0, p0

    move-object v2, v14

    move-object/from16 v17, v3

    move/from16 v3, v16

    const/4 v9, 0x1

    move-object/from16 v4, v17

    move-object v12, v5

    move/from16 v5, p6

    .line 126
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Z)Z

    move-result v0

    goto :goto_9

    :cond_10
    move-object/from16 v17, v3

    move-object v12, v5

    const/4 v9, 0x1

    const/16 v3, 0x64

    const-string v1, "param"

    move-object/from16 v0, p0

    move-object v2, v14

    move-object/from16 v4, v17

    move/from16 v5, p6

    .line 127
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Z)Z

    move-result v0

    :goto_9
    if-eqz v0, :cond_11

    const/4 v0, 0x0

    goto :goto_a

    :cond_11
    const/4 v0, 0x4

    :goto_a
    if-eqz v0, :cond_13

    .line 128
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 129
    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 130
    invoke-static {v14, v15, v9}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v10, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v7, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 133
    :cond_12
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_b
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 134
    :cond_13
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    add-int/lit8 v13, v13, 0x1

    const/16 v0, 0x19

    if-le v13, v0, :cond_14

    const/16 v0, 0x30

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Event can\'t contain more than 25 params"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzan;->zzd(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 141
    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Landroid/os/Bundle;I)Z

    .line 142
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_b

    :cond_14
    move-object/from16 v3, p2

    goto :goto_b

    :cond_15
    move-object v9, v10

    goto :goto_c

    :cond_16
    const/4 v9, 0x0

    :goto_c
    return-object v9
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzad;
    .locals 7

    .line 173
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 174
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcr(Ljava/lang/String;)I

    move-result p7

    if-nez p7, :cond_2

    .line 175
    new-instance p7, Landroid/os/Bundle;

    if-eqz p3, :cond_1

    invoke-direct {p7, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    :goto_0
    move-object v3, p7

    const-string p3, "_o"

    .line 176
    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {p3}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 178
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object p1

    .line 179
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zze(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 180
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzad;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {v2, p1}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Landroid/os/Bundle;)V

    move-object v0, p3

    move-object v1, p2

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;J)V

    return-object p3

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    .line 183
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Invalid conditional property event name"

    .line 184
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zza(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 161
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method final zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 149
    :cond_0
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 150
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    .line 151
    :cond_1
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 152
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 153
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_2
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 155
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void

    :cond_3
    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    .line 156
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    .line 158
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->zzji()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/zzan;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not putting event parameter. Invalid value type. name, type"

    .line 160
    invoke-virtual {p3, v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method final zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 162
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 163
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Landroid/os/Bundle;I)Z

    .line 164
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p3, 0x6

    if-eq p2, p3, :cond_1

    const/4 p3, 0x7

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    :cond_1
    int-to-long p2, p5

    const-string p4, "_el"

    .line 166
    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 167
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    .line 168
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzge()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object p2

    const-string p3, "auto"

    const-string p4, "_err"

    invoke-virtual {p2, p3, p4, p1}, Lcom/google/android/gms/measurement/internal/zzcs;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method final zza(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 45
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p2, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "Name is too long. Type, maximum supported length, name"

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method final zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 36
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzaui:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 38
    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v1, "Name starts with reserved prefix. Type, name"

    invoke-virtual {p2, v1, p1, p3}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_3
    if-eqz p2, :cond_6

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    array-length v1, p2

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_5

    aget-object v3, p2, v2

    .line 42
    invoke-static {p3, v3}, Lcom/google/android/gms/measurement/internal/zzfk;->zzu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move p2, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move p2, v0

    :goto_3
    if-eqz p2, :cond_6

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v1, "Name is reserved. Type, name"

    invoke-virtual {p2, v1, p1, p3}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_6
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

.method final zzcr(Ljava/lang/String;)I
    .locals 3

    const-string v0, "event"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zzadk:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0xd

    return p1

    :cond_1
    const/16 v1, 0x28

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method final zzcs(Ljava/lang/String;)I
    .locals 3

    const-string v0, "user property"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zzado:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0xf

    return p1

    :cond_1
    const/16 v1, 0x18

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method final zzcw(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzn;->zzhy()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzd(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfk;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Could not get MD5 instance"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 11
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zze(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x40

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 14
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_1

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-lez p2, :cond_1

    .line 15
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzc([B)J

    move-result-wide v2

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Could not get signatures"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v0, "Package name not found"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    move-wide v2, v4

    :goto_0
    return-wide v2
.end method

.method final zze(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfk;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Param value can\'t be null"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
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

    const/4 v0, 0x1

    return v0
.end method

.method protected final zzgu()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 2
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Utils falling back to Random for random id"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method final zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "_ev"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x100

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-static {v1, p2, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcv(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    :goto_0
    const/4 p1, 0x0

    .line 4
    invoke-static {v1, p2, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final zzi(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 7

    const-string v0, "_ldl"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcu(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const-string v2, "user property referrer"

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Z)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcu(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    const-string v1, "user property"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Z)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x7

    return p1
.end method

.method final zzj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "_ldl"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcu(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcu(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzmc()J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iget v3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaed:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaed:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    .line 8
    monitor-exit v0

    return-wide v1

    :catchall_1
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method final zzmd()Ljava/security/SecureRandom;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauj:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauj:Ljava/security/SecureRandom;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauj:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public final zzme()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaul:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaul:Ljava/lang/Integer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaul:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method final zzmf()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmd()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v4, v3, v0

    const-string v0, "%032x"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 4
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 5
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Name must start with a letter. Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 7
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 8
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_0
    if-ge v1, v2, :cond_4

    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_3

    .line 10
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 13
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    .line 14
    :cond_3
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method final zzt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzct(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkj()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id"

    .line 7
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return v1

    .line 8
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzct(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Invalid gma_app_id. Analytics disabled."

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkj()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI"

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method final zzx(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Permission not granted"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
