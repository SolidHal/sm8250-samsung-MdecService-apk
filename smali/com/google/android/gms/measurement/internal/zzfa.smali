.class public Lcom/google/android/gms/measurement/internal/zzfa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzcq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zzfa$zza;
    }
.end annotation


# static fields
.field private static volatile zzatc:Lcom/google/android/gms/measurement/internal/zzfa;


# instance fields
.field private final zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

.field private zzatd:Lcom/google/android/gms/measurement/internal/zzbn;

.field private zzate:Lcom/google/android/gms/measurement/internal/zzat;

.field private zzatf:Lcom/google/android/gms/measurement/internal/zzq;

.field private zzatg:Lcom/google/android/gms/measurement/internal/zzay;

.field private zzath:Lcom/google/android/gms/measurement/internal/zzew;

.field private zzati:Lcom/google/android/gms/measurement/internal/zzj;

.field private final zzatj:Lcom/google/android/gms/measurement/internal/zzfg;

.field private zzatk:Z

.field private zzatl:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzatm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzatn:I

.field private zzato:I

.field private zzatp:Z

.field private zzatq:Z

.field private zzatr:Z

.field private zzats:Ljava/nio/channels/FileLock;

.field private zzatt:Ljava/nio/channels/FileChannel;

.field private zzatu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzatv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzatw:J

.field private zzvz:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzff;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfa;-><init>(Lcom/google/android/gms/measurement/internal/zzff;Lcom/google/android/gms/measurement/internal/zzbt;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzff;Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzvz:Z

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzff;->zzri:Landroid/content/Context;

    const/4 v0, 0x0

    .line 6
    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zza(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzak;)Lcom/google/android/gms/measurement/internal/zzbt;

    move-result-object p2

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatw:J

    .line 9
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfg;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzez;->zzq()V

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatj:Lcom/google/android/gms/measurement/internal/zzfg;

    .line 12
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzat;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;)V

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzez;->zzq()V

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzate:Lcom/google/android/gms/measurement/internal/zzat;

    .line 15
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzbn;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzbn;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;)V

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzez;->zzq()V

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatd:Lcom/google/android/gms/measurement/internal/zzbn;

    .line 18
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p2

    .line 19
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzfb;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;Lcom/google/android/gms/measurement/internal/zzff;)V

    .line 20
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .locals 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 152
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 153
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    .line 154
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 155
    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 156
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    .line 159
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 160
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    .line 163
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfa;Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;
    .locals 0

    .line 380
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzg(Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZJLjava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const-string v1, "Unknown"

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 181
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "PackageManager is null, can not log app install information"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    return-object v4

    .line 183
    :cond_0
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 185
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    .line 186
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Error retrieving installer package name. appId"

    invoke-virtual {v3, v6, v5}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v3, v1

    :goto_0
    if-nez v3, :cond_1

    const-string v3, "manual_install"

    goto :goto_1

    :cond_1
    const-string v5, "com.android.vending"

    .line 187
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, ""

    :cond_2
    :goto_1
    move-object v7, v3

    .line 188
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 189
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 190
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 191
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    :cond_3
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 193
    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v1

    move-object v4, v5

    goto :goto_2

    :cond_4
    const/high16 v3, -0x80000000

    move-object v4, v1

    :goto_2
    const-wide/16 v16, 0x0

    .line 194
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    const-wide/16 v5, 0x0

    .line 195
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v1

    .line 196
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzn;->zzbe(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-wide/from16 v18, p7

    goto :goto_3

    :cond_5
    move-wide/from16 v18, v5

    .line 197
    :goto_3
    new-instance v25, Lcom/google/android/gms/measurement/internal/zzh;

    move-object/from16 v1, v25

    int-to-long v5, v3

    .line 198
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v3

    .line 199
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzn;->zzhc()J

    move-result-wide v8

    .line 200
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v3

    move-object/from16 v10, p1

    .line 201
    invoke-virtual {v3, v10, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzd(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const-string v15, ""

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v13, p4

    move/from16 v21, p5

    move/from16 v22, p6

    move-object/from16 v24, p9

    invoke-direct/range {v1 .. v24}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;)V

    return-object v25

    .line 202
    :catch_1
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 203
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    .line 204
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Error retrieving newly installed package info. appId, appName"

    .line 205
    invoke-virtual {v3, v5, v2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zzez;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfa;Lcom/google/android/gms/measurement/internal/zzff;)V
    .locals 0

    .line 379
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Lcom/google/android/gms/measurement/internal/zzff;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzff;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzq;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzq()V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatf:Lcom/google/android/gms/measurement/internal/zzq;

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatd:Lcom/google/android/gms/measurement/internal/zzbn;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzn;->zza(Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 8
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzj;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzq()V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzati:Lcom/google/android/gms/measurement/internal/zzj;

    .line 11
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzew;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzew;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->zzq()V

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzath:Lcom/google/android/gms/measurement/internal/zzew;

    .line 14
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzay;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;)V

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatg:Lcom/google/android/gms/measurement/internal/zzay;

    .line 16
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatn:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzato:I

    if-eq p1, v0, :cond_0

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatn:I

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzato:I

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    .line 21
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzvz:Z

    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .locals 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 165
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 166
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 167
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 168
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 169
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    .line 170
    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 171
    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    .line 172
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 173
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    .line 176
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 177
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 178
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;)Z
    .locals 13

    .line 26
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    const-string v1, "currency"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaa;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    const-string v2, "ecommerce_purchase"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "value"

    if-eqz v1, :cond_2

    .line 28
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzaa;->zzbq(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    const-wide/16 v8, 0x0

    cmpl-double v1, v4, v8

    if-nez v1, :cond_0

    .line 29
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzaa;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    mul-double v4, v3, v6

    :cond_0
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_1

    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_1

    .line 30
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    goto :goto_0

    .line 31
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "Data lost. Currency value is too big. appId"

    .line 35
    invoke-virtual {p2, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    .line 36
    :cond_2
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzaa;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 37
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_6

    .line 38
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Z]{3}"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "_ltv_"

    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v9, v0

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0, p1, v9}, Lcom/google/android/gms/measurement/internal/zzq;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 42
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_4

    goto :goto_2

    .line 43
    :cond_4
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 44
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v8, p2, Lcom/google/android/gms/measurement/internal/zzad;->origin:Ljava/lang/String;

    .line 45
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 46
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v0, v3

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_4

    .line 48
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v1

    .line 50
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzaf;->zzakh:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v1, p1, v6}, Lcom/google/android/gms/measurement/internal/zzn;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)I

    move-result v1

    sub-int/2addr v1, v5

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    .line 54
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    aput-object p1, v8, v2

    aput-object p1, v8, v5

    const/4 v2, 0x2

    .line 55
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v2

    .line 56
    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "Error pruning currencies. appId"

    invoke-virtual {v0, v6, v2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    :goto_3
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v8, p2, Lcom/google/android/gms/measurement/internal/zzad;->origin:Ljava/lang/String;

    .line 59
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 60
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 61
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzfj;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 62
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 63
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    .line 64
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    .line 66
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzfj;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    const-string v3, "Too many unique user properties are set. Ignoring user property. appId"

    .line 67
    invoke-virtual {p2, v3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v6

    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    .line 69
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_6
    return v5
.end method

.method private final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzgl;[Lcom/google/android/gms/internal/measurement/zzgf;)[Lcom/google/android/gms/internal/measurement/zzgd;
    .locals 1

    .line 88
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjp()Lcom/google/android/gms/measurement/internal/zzj;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzj;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzgf;[Lcom/google/android/gms/internal/measurement/zzgl;)[Lcom/google/android/gms/internal/measurement/zzgd;

    move-result-object p1

    return-object p1
.end method

.method private static zza([Lcom/google/android/gms/internal/measurement/zzgg;I)[Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 73
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Lcom/google/android/gms/internal/measurement/zzgg;

    if-lez p1, :cond_0

    const/4 v2, 0x0

    .line 74
    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-ge p1, v0, :cond_1

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 75
    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v1
.end method

.method private static zza([Lcom/google/android/gms/internal/measurement/zzgg;ILjava/lang/String;)[Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 76
    :goto_0
    array-length v2, p0

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    .line 77
    aget-object v2, p0, v1

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Lcom/google/android/gms/internal/measurement/zzgg;

    .line 79
    array-length v4, p0

    invoke-static {p0, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    .line 81
    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    int-to-long v3, p1

    .line 82
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    .line 83
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    const-string v0, "_ev"

    .line 84
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    .line 85
    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzamp:Ljava/lang/String;

    add-int/lit8 p2, v1, -0x2

    .line 86
    aput-object p0, v2, p2

    add-int/lit8 v1, v1, -0x1

    .line 87
    aput-object p1, v2, v1

    return-object v2
.end method

.method private static zza([Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/String;)[Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 70
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 71
    aget-object v1, p0, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-gez v0, :cond_2

    return-object p0

    .line 72
    :cond_2
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zza([Lcom/google/android/gms/internal/measurement/zzgg;I)[Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object p0

    return-object p0
.end method

.method private final zzaf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzg;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->zzic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzgw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzfa;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->zzic()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzgw()Ljava/lang/String;

    move-result-object v2

    .line 11
    :cond_2
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzaf;->zzajh:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzaf;->zzaji:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    .line 13
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "config/app/"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 14
    :goto_0
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->getAppInstanceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_instance_id"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v4, "android"

    .line 16
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzn;->zzhc()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "gmp_version"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 18
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbn;->zzcf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    move-result-object v1

    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzbn;->zzcg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_4

    .line 24
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 25
    new-instance v1, Lb/d/a;

    invoke-direct {v1}, Lb/d/a;-><init>()V

    const-string v2, "If-Modified-Since"

    .line 26
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    goto :goto_1

    :cond_4
    move-object v6, v2

    :goto_1
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatp:Z

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlo()Lcom/google/android/gms/measurement/internal/zzat;

    move-result-object v2

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzfd;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/zzfd;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;)V

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzat;->zzaf()V

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    .line 32
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzat;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzax;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Lcom/google/android/gms/measurement/internal/zzat;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzav;)V

    .line 35
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzbo;->zzd(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 36
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 39
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;
    .locals 5

    .line 128
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzha()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 131
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzha()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    .line 132
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 137
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzco(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zzbl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v15

    const/4 v1, 0x0

    if-eqz v15, :cond_2

    .line 2
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {v0, v15}, Lcom/google/android/gms/measurement/internal/zzfa;->zzc(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 8
    :cond_1
    new-instance v25, Lcom/google/android/gms/measurement/internal/zzh;

    move-object/from16 v1, v25

    .line 9
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzha()J

    move-result-wide v5

    .line 12
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhc()J

    move-result-wide v8

    .line 14
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhd()J

    move-result-wide v10

    const/4 v12, 0x0

    .line 15
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->isMeasurementEnabled()Z

    move-result v13

    const/4 v14, 0x0

    .line 16
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    .line 17
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzg;->zzhq()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    .line 18
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzg;->zzhr()Z

    move-result v21

    .line 19
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzg;->zzhs()Z

    move-result v22

    const/16 v23, 0x0

    .line 20
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzg;->zzgw()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v24}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;)V

    return-object v25

    .line 21
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "No app data available; dropping"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final zzd(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 6
    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->zze(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 8
    :cond_0
    iget-boolean v5, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagg:Z

    if-nez v5, :cond_1

    .line 9
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzg(Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 10
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    invoke-virtual {v5, v15, v6}, Lcom/google/android/gms/measurement/internal/zzbn;->zzo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const-string v6, "_err"

    const/16 v20, 0x1

    if-eqz v5, :cond_6

    .line 11
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    .line 13
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 14
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    .line 15
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Dropping blacklisted event. appId"

    .line 16
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/zzbn;->zzck(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 18
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/zzbn;->zzcl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move/from16 v14, v20

    :goto_1
    if-nez v14, :cond_4

    .line 19
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 20
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v5

    const/16 v7, 0xb

    .line 21
    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v8, "_ev"

    move-object v6, v15

    .line 22
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v14, :cond_5

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzq;->zzbl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhg()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 25
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    .line 26
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 28
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzaf;->zzakc:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 29
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Fetching config for blacklisted app"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 31
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_5
    return-void

    .line 32
    :cond_6
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    const/4 v13, 0x2

    .line 33
    invoke-virtual {v5, v13}, Lcom/google/android/gms/measurement/internal/zzap;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 34
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    .line 35
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v5

    .line 36
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v7

    .line 37
    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzb(Lcom/google/android/gms/measurement/internal/zzad;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Logging event"

    invoke-virtual {v5, v8, v7}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzq;->beginTransaction()V

    .line 39
    :try_start_0
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzg(Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;

    const-string v5, "_iap"

    .line 40
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "ecommerce_purchase"

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    .line 41
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 42
    :cond_8
    invoke-direct {v1, v15, v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    return-void

    .line 45
    :cond_9
    :try_start_1
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcq(Ljava/lang/String;)Z

    move-result v16

    .line 46
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    .line 48
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzls()J

    move-result-wide v6

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/16 v18, 0x0

    move-object v8, v15

    move/from16 v10, v16

    move/from16 v12, v17

    move/from16 v13, v18

    .line 49
    invoke-virtual/range {v5 .. v13}, Lcom/google/android/gms/measurement/internal/zzq;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v5

    .line 50
    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/zzr;->zzahr:J

    .line 51
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzaf;->zzajn:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    const-wide/16 v12, 0x0

    cmp-long v8, v6, v12

    const-wide/16 v9, 0x3e8

    const-wide/16 v18, 0x1

    if-lez v8, :cond_b

    .line 52
    rem-long/2addr v6, v9

    cmp-long v0, v6, v18

    if-nez v0, :cond_a

    .line 53
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Data loss. Too many events logged. appId, count"

    .line 55
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v5, Lcom/google/android/gms/measurement/internal/zzr;->zzahr:J

    .line 56
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 57
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    return-void

    :cond_b
    if-eqz v16, :cond_d

    .line 60
    :try_start_2
    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/zzr;->zzahq:J

    .line 61
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzaf;->zzajp:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v22, v15

    int-to-long v14, v8

    sub-long/2addr v6, v14

    cmp-long v8, v6, v12

    if-lez v8, :cond_e

    .line 62
    rem-long/2addr v6, v9

    cmp-long v2, v6, v18

    if-nez v2, :cond_c

    .line 63
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Data loss. Too many public events logged. appId, count"

    .line 65
    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v5, Lcom/google/android/gms/measurement/internal/zzr;->zzahq:J

    .line 66
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 67
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    :cond_c
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v5

    const/16 v7, 0x10

    const-string v8, "_ev"

    .line 69
    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v6, v22

    .line 70
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    return-void

    :cond_d
    move-object/from16 v22, v15

    :cond_e
    if-eqz v17, :cond_10

    .line 73
    :try_start_3
    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/zzr;->zzaht:J

    .line 74
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v8

    .line 75
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 76
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzaf;->zzajo:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzn;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)I

    move-result v8

    const v9, 0xf4240

    .line 77
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v14, 0x0

    .line 78
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    cmp-long v8, v6, v12

    if-lez v8, :cond_11

    cmp-long v0, v6, v18

    if-nez v0, :cond_f

    .line 79
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Too many error events logged. appId, count"

    .line 81
    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v5, Lcom/google/android/gms/measurement/internal/zzr;->zzaht:J

    .line 82
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 83
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    return-void

    :cond_10
    const/4 v14, 0x0

    .line 86
    :cond_11
    :try_start_4
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaa;->zziv()Landroid/os/Bundle;

    move-result-object v15

    .line 87
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v5

    const-string v6, "_o"

    .line 88
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzad;->origin:Ljava/lang/String;

    .line 89
    invoke-virtual {v5, v15, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v5

    move-object/from16 v10, v22

    .line 91
    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcw(Ljava/lang/String;)Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v11, "_r"

    if-eqz v5, :cond_12

    .line 92
    :try_start_5
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v5

    const-string v6, "_dbg"

    .line 93
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v15, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v5

    .line 95
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v15, v11, v6}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/zzq;->zzbm(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v12

    if-lez v7, :cond_13

    .line 97
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v7

    .line 98
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v7

    const-string v8, "Data lost. Too many events stored on disk, deleted. appId"

    .line 99
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 100
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 101
    invoke-virtual {v7, v8, v9, v5}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    :cond_13
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzad;->origin:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzad;->zzaip:J

    const-wide/16 v21, 0x0

    move-object v5, v9

    move-object v0, v8

    move-object v8, v10

    move-wide/from16 v23, v3

    move-object v3, v9

    move-object v9, v0

    move-object v0, v10

    move-object v4, v11

    move-wide v10, v12

    move-wide/from16 v12, v21

    move/from16 v21, v14

    move-object v14, v15

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzy;->name:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lcom/google/android/gms/measurement/internal/zzq;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v5

    if-nez v5, :cond_15

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzbp(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    cmp-long v5, v5, v7

    if-ltz v5, :cond_14

    if-eqz v16, :cond_14

    .line 105
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v4, "Too many event names used, ignoring event. appId, name, supported count"

    .line 107
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 108
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v6

    .line 109
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzy;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x1f4

    .line 110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 111
    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v0

    .line 113
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    return-void

    .line 115
    :cond_14
    :try_start_6
    new-instance v22, Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzy;->name:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    iget-wide v12, v3, Lcom/google/android/gms/measurement/internal/zzy;->timestamp:J

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v5, v22

    move-object v6, v0

    invoke-direct/range {v5 .. v19}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v9, v3

    goto :goto_2

    .line 116
    :cond_15
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/zzz;->zzaig:J

    invoke-virtual {v3, v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzbt;J)Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v9

    .line 117
    iget-wide v6, v9, Lcom/google/android/gms/measurement/internal/zzy;->timestamp:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzz;->zzai(J)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v22

    :goto_2
    move-object/from16 v0, v22

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzz;)V

    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 121
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzy;->zztt:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzy;->zztt:Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 125
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>()V

    .line 126
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxa:Ljava/lang/Integer;

    const-string v0, "android"

    .line 127
    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxi:Ljava/lang/String;

    .line 128
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    .line 129
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzage:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzage:Ljava/lang/String;

    .line 130
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzts:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzts:Ljava/lang/String;

    .line 131
    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagd:J

    const-wide/32 v7, -0x80000000

    cmp-long v0, v5, v7

    const/4 v5, 0x0

    if-nez v0, :cond_16

    move-object v0, v5

    goto :goto_3

    :cond_16
    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagd:J

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxu:Ljava/lang/Integer;

    .line 132
    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzadt:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:Ljava/lang/Long;

    .line 133
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzafx:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzafx:Ljava/lang/String;

    .line 134
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagk:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzawj:Ljava/lang/String;

    .line 135
    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagf:J

    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-nez v0, :cond_17

    move-object v0, v5

    goto :goto_4

    :cond_17
    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagf:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_4
    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxq:Ljava/lang/Long;

    .line 136
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    .line 137
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzba;->zzby(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 138
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 139
    iget-boolean v6, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagi:Z

    if-eqz v6, :cond_1b

    .line 140
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/String;

    .line 141
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxp:Ljava/lang/Boolean;

    goto :goto_6

    .line 142
    :cond_18
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgk()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    .line 143
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbt;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 144
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzx;->zzl(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagj:Z

    if-eqz v0, :cond_1b

    .line 145
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "android_id"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    .line 147
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v6, "null secure ID. appId"

    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "null"

    goto :goto_5

    .line 149
    :cond_19
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 150
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v6

    .line 151
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v6

    const-string v7, "empty secure ID. appId"

    iget-object v8, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_1a
    :goto_5
    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxx:Ljava/lang/String;

    .line 153
    :cond_1b
    :goto_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgk()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzcl()V

    .line 155
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 156
    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxk:Ljava/lang/String;

    .line 157
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgk()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzcl()V

    .line 159
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 160
    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxj:Ljava/lang/String;

    .line 161
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgk()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzis()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxl:Ljava/lang/Integer;

    .line 163
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgk()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaia:Ljava/lang/String;

    .line 165
    iput-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    .line 166
    iput-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxd:Ljava/lang/Long;

    .line 167
    iput-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxe:Ljava/lang/Long;

    .line 168
    iput-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxf:Ljava/lang/Long;

    .line 169
    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagh:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxz:Ljava/lang/Long;

    .line 170
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->zzhz()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 171
    iput-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaya:Ljava/lang/String;

    .line 172
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzq;->zzbl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 173
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;Ljava/lang/String;)V

    .line 174
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v5

    .line 175
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmf()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzam(Ljava/lang/String;)V

    .line 176
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzafz:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzaq(Ljava/lang/String;)V

    .line 177
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzafx:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzan(Ljava/lang/String;)V

    .line 178
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v5

    .line 179
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzba;->zzbz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 180
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzap(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzx(J)V

    .line 182
    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 183
    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzt(J)V

    .line 184
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzts:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->setAppVersion(Ljava/lang/String;)V

    .line 185
    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagd:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(J)V

    .line 186
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzar(Ljava/lang/String;)V

    .line 187
    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzadt:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzv(J)V

    .line 188
    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagf:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzw(J)V

    .line 189
    iget-boolean v5, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagg:Z

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->setMeasurementEnabled(Z)V

    .line 190
    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagh:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzag(J)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 192
    :cond_1d
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->getAppInstanceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzafw:Ljava/lang/String;

    .line 193
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzafz:Ljava/lang/String;

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zzbk(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzgl;

    iput-object v2, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    move/from16 v14, v21

    .line 196
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_1e

    .line 197
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgl;-><init>()V

    .line 198
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    aput-object v2, v5, v14

    .line 199
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfj;->name:Ljava/lang/String;

    iput-object v5, v2, Lcom/google/android/gms/internal/measurement/zzgl;->name:Ljava/lang/String;

    .line 200
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-wide v5, v5, Lcom/google/android/gms/measurement/internal/zzfj;->zzaue:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzayl:Ljava/lang/Long;

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v5

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    invoke-virtual {v5, v2, v6}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Lcom/google/android/gms/internal/measurement/zzgl;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 202
    :cond_1e
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/internal/measurement/zzgi;)J

    move-result-wide v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 203
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    .line 204
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzy;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v5, :cond_21

    .line 205
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzy;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaa;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 206
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    :goto_8
    move/from16 v14, v20

    goto :goto_9

    .line 207
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzy;->zztt:Ljava/lang/String;

    iget-object v6, v9, Lcom/google/android/gms/measurement/internal/zzy;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzbn;->zzp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v25

    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzls()J

    move-result-wide v26

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzy;->zztt:Ljava/lang/String;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v28, v5

    invoke-virtual/range {v25 .. v33}, Lcom/google/android/gms/measurement/internal/zzq;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v5

    if-eqz v4, :cond_21

    .line 210
    iget-wide v4, v5, Lcom/google/android/gms/measurement/internal/zzr;->zzahu:J

    .line 211
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v6

    .line 212
    iget-object v7, v9, Lcom/google/android/gms/measurement/internal/zzy;->zztt:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzn;->zzat(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_21

    goto :goto_8

    :cond_21
    move/from16 v14, v21

    .line 213
    :goto_9
    invoke-virtual {v0, v9, v2, v3, v14}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzy;JZ)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 214
    iput-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatl:J

    goto :goto_a

    :catch_0
    move-exception v0

    .line 215
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v4, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    .line 217
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 218
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    :cond_22
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V

    .line 220
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    const/4 v2, 0x2

    .line 221
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzap;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 222
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Event recorded"

    .line 224
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    .line 225
    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 226
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlv()V

    .line 228
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    .line 230
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v23

    const-wide/32 v4, 0x7a120

    add-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Background event processing time, ms"

    .line 231
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    throw v0
.end method

.method private final zzd(Ljava/lang/String;J)Z
    .locals 41

    move-object/from16 v1, p0

    const-string v2, "_lte"

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzq;->beginTransaction()V

    .line 234
    :try_start_0
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzfa$zza;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;Lcom/google/android/gms/measurement/internal/zzfb;)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatw:J

    .line 236
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 238
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-wide/16 v9, -0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 239
    :try_start_1
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzq;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 240
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v16, ""

    if-eqz v14, :cond_3

    cmp-long v14, v6, v9

    if-eqz v14, :cond_0

    :try_start_2
    new-array v8, v11, [Ljava/lang/String;

    .line 241
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v8, v12

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v8, v13
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v8, v4

    goto/16 :goto_6

    :cond_0
    :try_start_3
    new-array v8, v13, [Ljava/lang/String;

    .line 242
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v8, v12
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v14, :cond_1

    :try_start_4
    const-string v16, "rowid <= ? and "
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    move-object/from16 v14, v16

    .line 243
    :try_start_5
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0x94

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual {v15, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 245
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v8, :cond_2

    if-eqz v4, :cond_c

    .line 246
    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/16 :goto_7

    .line 247
    :cond_2
    :try_start_8
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 248
    :try_start_9
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 249
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2

    :cond_3
    cmp-long v4, v6, v9

    if-eqz v4, :cond_4

    const/4 v8, 0x2

    :try_start_a
    new-array v11, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v8, v11, v12

    .line 250
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v13

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 251
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v11

    :goto_1
    if-eqz v4, :cond_5

    const-string v16, " and rowid <= ?"

    :cond_5
    move-object/from16 v4, v16

    .line 252
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x54

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " order by rowid limit 1;"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-virtual {v15, v4, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 254
    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-nez v8, :cond_6

    if-eqz v4, :cond_c

    .line 255
    :try_start_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto/16 :goto_7

    .line 256
    :cond_6
    :try_start_d
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 257
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    const/4 v8, 0x0

    :goto_2
    :try_start_e
    const-string v16, "raw_events_metadata"

    const-string v14, "metadata"

    .line 258
    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "app_id = ? and metadata_fingerprint = ?"

    const/4 v14, 0x2

    new-array v9, v14, [Ljava/lang/String;

    aput-object v8, v9, v12

    aput-object v11, v9, v13

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "rowid"

    const-string v22, "2"

    move-object v14, v15

    move-object v10, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v9

    .line 259
    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 260
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_7

    .line 261
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v6

    .line 262
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v6

    const-string v7, "Raw event metadata record is missing. appId"

    .line 263
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v4, :cond_c

    .line 264
    :try_start_f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto/16 :goto_7

    .line 265
    :cond_7
    :try_start_10
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 266
    array-length v14, v9

    invoke-static {v9, v12, v14}, Lcom/google/android/gms/internal/measurement/zzyx;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzyx;

    move-result-object v9

    .line 267
    new-instance v14, Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-direct {v14}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 268
    :try_start_11
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 269
    :try_start_12
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 270
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v9

    .line 271
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v9

    const-string v15, "Get multiple raw event metadata records, expected one. appId"

    .line 272
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 273
    invoke-virtual {v9, v15, v13}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 275
    invoke-interface {v3, v14}, Lcom/google/android/gms/measurement/internal/zzs;->zzb(Lcom/google/android/gms/internal/measurement/zzgi;)V

    const-wide/16 v13, -0x1

    cmp-long v9, v6, v13

    if-eqz v9, :cond_9

    const-string v9, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/String;

    aput-object v8, v14, v12

    const/4 v13, 0x1

    aput-object v11, v14, v13

    .line 276
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v14, v7

    move-object/from16 v17, v9

    move-object/from16 v18, v14

    goto :goto_3

    :cond_9
    const-string v6, "app_id = ? and metadata_fingerprint = ?"

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/String;

    aput-object v8, v9, v12

    const/4 v7, 0x1

    aput-object v11, v9, v7

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    :goto_3
    const-string v15, "raw_events"

    const-string v6, "rowid"

    const-string v7, "name"

    const-string v9, "timestamp"

    const-string v11, "data"

    .line 277
    filled-new-array {v6, v7, v9, v11}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "rowid"

    const/16 v22, 0x0

    move-object v14, v10

    .line 278
    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 279
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_a

    .line 280
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v6

    .line 281
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v6

    const-string v7, "Raw event data disappeared while in transaction. appId"

    .line 282
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 283
    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v4, :cond_c

    .line 284
    :try_start_13
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto/16 :goto_7

    .line 285
    :cond_a
    :try_start_14
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v9, 0x3

    .line 286
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 287
    array-length v9, v10

    invoke-static {v10, v12, v9}, Lcom/google/android/gms/internal/measurement/zzyx;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzyx;

    move-result-object v9

    .line 288
    new-instance v10, Lcom/google/android/gms/internal/measurement/zzgf;

    invoke-direct {v10}, Lcom/google/android/gms/internal/measurement/zzgf;-><init>()V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 289
    :try_start_15
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/measurement/zzgf;->zza(Lcom/google/android/gms/internal/measurement/zzyx;)Lcom/google/android/gms/internal/measurement/zzzg;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    const/4 v9, 0x1

    .line 290
    :try_start_16
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    const/4 v9, 0x2

    .line 291
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v10, Lcom/google/android/gms/internal/measurement/zzgf;->zzawu:Ljava/lang/Long;

    .line 292
    invoke-interface {v3, v6, v7, v10}, Lcom/google/android/gms/measurement/internal/zzs;->zza(JLcom/google/android/gms/internal/measurement/zzgf;)Z

    move-result v6
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    if-nez v6, :cond_b

    if-eqz v4, :cond_c

    .line 293
    :try_start_17
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v6, v0

    .line 294
    :try_start_18
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v7

    .line 295
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v7

    const-string v9, "Data loss. Failed to merge raw event. appId"

    .line 296
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v9, v10, v6}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    if-nez v6, :cond_a

    if-eqz v4, :cond_c

    .line 298
    :try_start_19
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v6, v0

    .line 299
    :try_start_1a
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v7

    .line 300
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v7

    const-string v9, "Data loss. Failed to merge raw event metadata. appId"

    .line 301
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 302
    invoke-virtual {v7, v9, v10, v6}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    if-eqz v4, :cond_c

    .line 303
    :try_start_1b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v6, v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v6, v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v5, v1

    const/4 v4, 0x0

    :goto_4
    move-object v1, v0

    goto/16 :goto_41

    :catch_5
    move-exception v0

    move-object v6, v0

    const/4 v4, 0x0

    :goto_5
    const/4 v8, 0x0

    .line 304
    :goto_6
    :try_start_1c
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    .line 305
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v5

    const-string v7, "Data loss. Error selecting raw event. appId"

    .line 306
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    if-eqz v4, :cond_c

    .line 307
    :try_start_1d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 308
    :cond_c
    :goto_7
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzauc:Ljava/util/List;

    if-eqz v4, :cond_e

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzauc:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_8

    :cond_d
    move v4, v12

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v4, 0x1

    :goto_9
    if-nez v4, :cond_71

    .line 309
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    .line 310
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzauc:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/zzgf;

    iput-object v5, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    .line 311
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v5

    .line 312
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzn;->zzax(Ljava/lang/String;)Z

    move-result v5

    move v8, v12

    move v9, v8

    move v10, v9

    const-wide/16 v13, 0x0

    .line 313
    :goto_a
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzauc:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_3b

    .line 314
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzauc:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzgf;

    .line 315
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    iget-object v15, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v15}, Lcom/google/android/gms/measurement/internal/zzbn;->zzo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    const-string v7, "_err"

    if-eqz v6, :cond_12

    .line 316
    :try_start_1e
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v6

    .line 317
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v6

    const-string v15, "Dropping blacklisted raw event. appId"

    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    .line 318
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    move/from16 v19, v10

    .line 319
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v10

    move-object/from16 v20, v2

    .line 320
    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {v6, v15, v12, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object v2

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzbn;->zzck(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object v2

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzbn;->zzcl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_b

    :cond_f
    const/4 v2, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    const/4 v2, 0x1

    :goto_c
    if-nez v2, :cond_11

    .line 324
    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 325
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v23

    .line 326
    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    const/16 v25, 0xb

    const-string v26, "_ev"

    iget-object v6, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v24, v2

    move-object/from16 v27, v6

    .line 327
    invoke-virtual/range {v23 .. v28}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_11
    move/from16 v24, v8

    move/from16 v10, v19

    const/4 v12, 0x3

    goto/16 :goto_24

    :cond_12
    move-object/from16 v20, v2

    move/from16 v19, v10

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object v2

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    iget-object v10, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v10}, Lcom/google/android/gms/measurement/internal/zzbn;->zzp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    const-string v6, "_c"

    if-nez v2, :cond_1a

    .line 329
    :try_start_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    .line 330
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v15

    const v10, 0x171c4

    if-eq v15, v10, :cond_15

    const v10, 0x17331

    if-eq v15, v10, :cond_14

    const v10, 0x17333

    if-eq v15, v10, :cond_13

    goto :goto_d

    :cond_13
    const-string v10, "_ui"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    goto :goto_e

    :cond_14
    const-string v10, "_ug"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x2

    goto :goto_e

    :cond_15
    const-string v10, "_in"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x0

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v10, -0x1

    :goto_e
    if-eqz v10, :cond_17

    const/4 v12, 0x1

    if-eq v10, v12, :cond_17

    const/4 v12, 0x2

    if-eq v10, v12, :cond_17

    const/4 v10, 0x0

    goto :goto_f

    :cond_17
    const/4 v10, 0x1

    :goto_f
    if-eqz v10, :cond_18

    goto :goto_11

    :cond_18
    move/from16 v24, v8

    move/from16 v23, v9

    move-wide/from16 v25, v13

    :cond_19
    :goto_10
    move/from16 v10, v19

    goto/16 :goto_19

    .line 332
    :cond_1a
    :goto_11
    iget-object v10, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    if-nez v10, :cond_1b

    const/4 v10, 0x0

    new-array v12, v10, [Lcom/google/android/gms/internal/measurement/zzgg;

    .line 333
    iput-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    .line 334
    :cond_1b
    iget-object v10, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    array-length v12, v10
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    move/from16 v24, v8

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_12
    const-string v8, "_r"

    if-ge v15, v12, :cond_1e

    move/from16 v25, v12

    :try_start_20
    aget-object v12, v10, v15

    move-object/from16 v26, v10

    .line 335
    iget-object v10, v12, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const-wide/16 v17, 0x1

    .line 336
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v12, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    const/16 v23, 0x1

    goto :goto_13

    .line 337
    :cond_1c
    iget-object v10, v12, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    const-wide/16 v17, 0x1

    .line 338
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v12, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    const/16 v22, 0x1

    :cond_1d
    :goto_13
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v25

    move-object/from16 v10, v26

    goto :goto_12

    :cond_1e
    if-nez v23, :cond_1f

    if-eqz v2, :cond_1f

    .line 339
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v10

    .line 340
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v10

    const-string v12, "Marking event as conversion"

    .line 341
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v15

    move/from16 v23, v9

    .line 342
    iget-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    invoke-virtual {v15, v9}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 343
    invoke-virtual {v10, v12, v9}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    iget-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v10, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    array-length v10, v10

    const/4 v12, 0x1

    add-int/2addr v10, v12

    .line 345
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/gms/internal/measurement/zzgg;

    .line 346
    new-instance v10, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {v10}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    .line 347
    iput-object v6, v10, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    const-wide/16 v17, 0x1

    .line 348
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v10, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    .line 349
    array-length v12, v9

    const/4 v15, 0x1

    sub-int/2addr v12, v15

    aput-object v10, v9, v12

    .line 350
    iput-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    goto :goto_14

    :cond_1f
    move/from16 v23, v9

    :goto_14
    if-nez v22, :cond_20

    .line 351
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v9

    .line 352
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v9

    const-string v10, "Marking event as real-time"

    .line 353
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v12

    .line 354
    iget-object v15, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    invoke-virtual {v12, v15}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 355
    invoke-virtual {v9, v10, v12}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    iget-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v10, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    array-length v10, v10

    const/4 v12, 0x1

    add-int/2addr v10, v12

    .line 357
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/gms/internal/measurement/zzgg;

    .line 358
    new-instance v10, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {v10}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    .line 359
    iput-object v8, v10, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    const-wide/16 v17, 0x1

    .line 360
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v10, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    .line 361
    array-length v12, v9

    const/4 v15, 0x1

    sub-int/2addr v12, v15

    aput-object v10, v9, v12

    .line 362
    iput-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    .line 363
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v25

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzls()J

    move-result-wide v26

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    move-object/from16 v28, v9

    .line 365
    invoke-virtual/range {v25 .. v33}, Lcom/google/android/gms/measurement/internal/zzq;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v9

    .line 366
    iget-wide v9, v9, Lcom/google/android/gms/measurement/internal/zzr;->zzahu:J

    .line 367
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v12

    .line 368
    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v15, v15, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    invoke-virtual {v12, v15}, Lcom/google/android/gms/measurement/internal/zzn;->zzat(Ljava/lang/String;)I

    move-result v12

    move-wide/from16 v25, v13

    int-to-long v12, v12

    cmp-long v9, v9, v12

    if-lez v9, :cond_24

    const/4 v9, 0x0

    .line 369
    :goto_15
    iget-object v10, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    array-length v10, v10

    if-ge v9, v10, :cond_25

    .line 370
    iget-object v10, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    aget-object v10, v10, v9

    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 371
    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    array-length v8, v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    new-array v10, v8, [Lcom/google/android/gms/internal/measurement/zzgg;

    if-lez v9, :cond_21

    .line 372
    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    const/4 v13, 0x0

    invoke-static {v12, v13, v10, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_21
    if-ge v9, v8, :cond_22

    .line 373
    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    add-int/lit8 v13, v9, 0x1

    sub-int/2addr v8, v9

    invoke-static {v12, v13, v10, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    :cond_22
    iput-object v10, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    goto :goto_16

    :cond_23
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_24
    const/16 v19, 0x1

    .line 375
    :cond_25
    :goto_16
    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcq(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    if-eqz v2, :cond_19

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v27

    .line 377
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzls()J

    move-result-wide v28

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v30, v8

    .line 378
    invoke-virtual/range {v27 .. v35}, Lcom/google/android/gms/measurement/internal/zzq;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v8

    .line 379
    iget-wide v8, v8, Lcom/google/android/gms/measurement/internal/zzr;->zzahs:J

    .line 380
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v10

    .line 381
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    .line 382
    sget-object v13, Lcom/google/android/gms/measurement/internal/zzaf;->zzajq:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/measurement/internal/zzn;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)I

    move-result v10

    int-to-long v12, v10

    cmp-long v8, v8, v12

    if-lez v8, :cond_19

    .line 383
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v8

    .line 384
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v8

    const-string v9, "Too many conversions. Not logging as conversion. appId"

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    .line 385
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 386
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_17
    if-ge v10, v9, :cond_28

    aget-object v14, v8, v10

    .line 388
    iget-object v15, v14, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_26

    move-object v12, v14

    goto :goto_18

    .line 389
    :cond_26
    iget-object v14, v14, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_27

    const/4 v13, 0x1

    :cond_27
    :goto_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_28
    if-eqz v13, :cond_29

    if-eqz v12, :cond_29

    .line 390
    iget-object v7, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    const/4 v8, 0x1

    new-array v9, v8, [Lcom/google/android/gms/internal/measurement/zzgg;

    const/4 v8, 0x0

    aput-object v12, v9, v8

    invoke-static {v7, v9}, Lcom/google/android/gms/common/util/ArrayUtils;->removeAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/android/gms/internal/measurement/zzgg;

    iput-object v7, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    goto/16 :goto_10

    :cond_29
    if-eqz v12, :cond_2a

    .line 391
    iput-object v7, v12, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    const-wide/16 v7, 0xa

    .line 392
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v12, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    goto/16 :goto_10

    .line 393
    :cond_2a
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v7

    .line 394
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v7

    const-string v8, "Did not find conversion parameter. appId"

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    .line 395
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 396
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 397
    :goto_19
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v7

    .line 398
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzn;->zzbf(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    if-eqz v2, :cond_36

    .line 399
    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 400
    :goto_1a
    array-length v12, v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    const-string v13, "currency"

    const-string v14, "value"

    if-ge v7, v12, :cond_2d

    .line 401
    :try_start_21
    aget-object v12, v2, v7

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    move v8, v7

    goto :goto_1b

    .line 402
    :cond_2b
    aget-object v12, v2, v7

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c

    move v9, v7

    :cond_2c
    :goto_1b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_2d
    const/4 v7, -0x1

    if-eq v8, v7, :cond_2e

    .line 403
    aget-object v7, v2, v8

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    if-nez v7, :cond_2f

    aget-object v7, v2, v8

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgg;->zzauh:Ljava/lang/Double;

    if-nez v7, :cond_2f

    .line 404
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v7

    .line 405
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzji()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v7

    const-string v9, "Value must be specified with a numeric type."

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 406
    invoke-static {v2, v8}, Lcom/google/android/gms/measurement/internal/zzfa;->zza([Lcom/google/android/gms/internal/measurement/zzgg;I)[Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v2

    .line 407
    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzfa;->zza([Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/String;)[Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v2

    const/16 v6, 0x12

    .line 408
    invoke-static {v2, v6, v14}, Lcom/google/android/gms/measurement/internal/zzfa;->zza([Lcom/google/android/gms/internal/measurement/zzgg;ILjava/lang/String;)[Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v2

    :cond_2e
    const/4 v12, 0x3

    goto :goto_1f

    :cond_2f
    const/4 v7, -0x1

    if-ne v9, v7, :cond_30

    const/4 v7, 0x1

    const/4 v12, 0x3

    goto :goto_1e

    .line 409
    :cond_30
    aget-object v7, v2, v9

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgg;->zzamp:Ljava/lang/String;

    if-eqz v7, :cond_34

    .line 410
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v12, 0x3

    if-eq v9, v12, :cond_31

    goto :goto_1d

    :cond_31
    const/4 v9, 0x0

    .line 411
    :goto_1c
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v9, v14, :cond_33

    .line 412
    invoke-virtual {v7, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v14

    .line 413
    invoke-static {v14}, Ljava/lang/Character;->isLetter(I)Z

    move-result v15

    if-nez v15, :cond_32

    goto :goto_1d

    .line 414
    :cond_32
    invoke-static {v14}, Ljava/lang/Character;->charCount(I)I

    move-result v14

    add-int/2addr v9, v14

    goto :goto_1c

    :cond_33
    const/4 v7, 0x0

    goto :goto_1e

    :cond_34
    const/4 v12, 0x3

    :goto_1d
    const/4 v7, 0x1

    :goto_1e
    if-eqz v7, :cond_35

    .line 415
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v7

    .line 416
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzji()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v7

    const-string v9, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 417
    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 418
    invoke-static {v2, v8}, Lcom/google/android/gms/measurement/internal/zzfa;->zza([Lcom/google/android/gms/internal/measurement/zzgg;I)[Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v2

    .line 419
    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzfa;->zza([Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/String;)[Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v2

    const/16 v6, 0x13

    .line 420
    invoke-static {v2, v6, v13}, Lcom/google/android/gms/measurement/internal/zzfa;->zza([Lcom/google/android/gms/internal/measurement/zzgg;ILjava/lang/String;)[Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v2

    .line 421
    :cond_35
    :goto_1f
    iput-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    goto :goto_20

    :cond_36
    const/4 v12, 0x3

    :goto_20
    if-eqz v5, :cond_3a

    const-string v2, "_e"

    .line 422
    iget-object v6, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 423
    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    if-eqz v2, :cond_39

    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    array-length v2, v2

    if-nez v2, :cond_37

    goto :goto_21

    .line 424
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    const-string v2, "_et"

    invoke-static {v11, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->zzb(Lcom/google/android/gms/internal/measurement/zzgf;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_38

    .line 425
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v6, "Engagement event does not include duration. appId"

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    .line 427
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 428
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_22

    .line 429
    :cond_38
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long v13, v25, v6

    goto :goto_23

    .line 430
    :cond_39
    :goto_21
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 431
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v6, "Engagement event does not contain any parameters. appId"

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    .line 432
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 433
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3a
    :goto_22
    move-wide/from16 v13, v25

    .line 434
    :goto_23
    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    add-int/lit8 v9, v23, 0x1

    aput-object v11, v2, v23

    :goto_24
    add-int/lit8 v8, v24, 0x1

    move-object/from16 v2, v20

    const/4 v12, 0x0

    goto/16 :goto_a

    :cond_3b
    move-object/from16 v20, v2

    move/from16 v23, v9

    move/from16 v19, v10

    move-wide/from16 v25, v13

    .line 435
    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzauc:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v12, v23

    if-ge v12, v2, :cond_3c

    .line 436
    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/measurement/zzgf;

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    :cond_3c
    if-eqz v5, :cond_42

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    move-object/from16 v6, v20

    .line 438
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzq;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 439
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    if-nez v5, :cond_3d

    goto :goto_25

    .line 440
    :cond_3d
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    const-string v9, "auto"

    const-string v10, "_lte"

    .line 441
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    .line 442
    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v11

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 443
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long v13, v13, v25

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_26

    .line 444
    :cond_3e
    :goto_25
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    const-string v29, "auto"

    const-string v30, "_lte"

    .line 445
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    .line 446
    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v31

    .line 447
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v27, v5

    move-object/from16 v28, v2

    invoke-direct/range {v27 .. v33}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 448
    :goto_26
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgl;-><init>()V

    .line 449
    iput-object v6, v2, Lcom/google/android/gms/internal/measurement/zzgl;->name:Ljava/lang/String;

    .line 450
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    .line 451
    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzayl:Ljava/lang/Long;

    .line 452
    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    iput-object v7, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzawx:Ljava/lang/Long;

    const/4 v7, 0x0

    .line 453
    :goto_27
    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    array-length v8, v8

    if-ge v7, v8, :cond_40

    .line 454
    iget-object v8, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzgl;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 455
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    aput-object v2, v6, v7

    const/4 v6, 0x1

    goto :goto_28

    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_40
    const/4 v6, 0x0

    :goto_28
    if-nez v6, :cond_41

    .line 456
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    array-length v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 457
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/measurement/zzgl;

    iput-object v6, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    .line 458
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aput-object v2, v6, v7

    :cond_41
    const-wide/16 v6, 0x0

    cmp-long v2, v25, v6

    if-lez v2, :cond_42

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzfj;)Z

    .line 460
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 461
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v6, "Updated lifetime engagement user property with value. Value"

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    .line 462
    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 463
    :cond_42
    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    .line 464
    invoke-direct {v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzgl;[Lcom/google/android/gms/internal/measurement/zzgf;)[Lcom/google/android/gms/internal/measurement/zzgd;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxt:[Lcom/google/android/gms/internal/measurement/zzgd;

    .line 465
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v2

    .line 466
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzn;->zzaw(Ljava/lang/String;)Z

    move-result v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    if-eqz v2, :cond_60

    .line 467
    :try_start_22
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 468
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    array-length v5, v5

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/zzgf;

    .line 469
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v6

    .line 470
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmd()Ljava/security/SecureRandom;

    move-result-object v6

    .line 471
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_29
    if-ge v9, v8, :cond_5e

    aget-object v11, v7, v9

    .line 472
    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    const-string v13, "_ep"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    const-string v13, "_efs"

    const-string v14, "_sr"

    if-eqz v12, :cond_47

    .line 473
    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    const-string v12, "_en"

    invoke-static {v11, v12}, Lcom/google/android/gms/measurement/internal/zzfg;->zzb(Lcom/google/android/gms/internal/measurement/zzgf;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 474
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzz;

    if-nez v15, :cond_43

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v15

    move-object/from16 v20, v7

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    invoke-virtual {v15, v7, v12}, Lcom/google/android/gms/measurement/internal/zzq;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v15

    .line 476
    invoke-interface {v2, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_43
    move-object/from16 v20, v7

    .line 477
    :goto_2a
    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzz;->zzaij:Ljava/lang/Long;

    if-nez v7, :cond_46

    .line 478
    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzz;->zzaik:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-wide/16 v17, 0x1

    cmp-long v7, v21, v17

    if-lez v7, :cond_44

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    iget-object v7, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v12, v15, Lcom/google/android/gms/measurement/internal/zzz;->zzaik:Ljava/lang/Long;

    .line 480
    invoke-static {v7, v14, v12}, Lcom/google/android/gms/measurement/internal/zzfg;->zza([Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v7

    iput-object v7, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    .line 481
    :cond_44
    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzz;->zzail:Ljava/lang/Boolean;

    if-eqz v7, :cond_45

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/zzz;->zzail:Ljava/lang/Boolean;

    .line 482
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_45

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    iget-object v7, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    const-wide/16 v14, 0x1

    .line 484
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 485
    invoke-static {v7, v13, v12}, Lcom/google/android/gms/measurement/internal/zzfg;->zza([Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v7

    iput-object v7, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    :cond_45
    add-int/lit8 v7, v10, 0x1

    .line 486
    aput-object v11, v5, v10
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    move-object/from16 v22, v4

    move-object/from16 v26, v6

    move v10, v7

    :goto_2b
    move/from16 v21, v8

    move/from16 v23, v9

    :goto_2c
    const-wide/16 v8, 0x1

    move-object v4, v2

    move-object v6, v3

    goto/16 :goto_36

    :cond_46
    move-object/from16 v22, v4

    move-object/from16 v26, v6

    goto :goto_2b

    :cond_47
    move-object/from16 v20, v7

    .line 487
    :try_start_24
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object v7

    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    move v15, v8

    .line 488
    invoke-virtual {v7, v12}, Lcom/google/android/gms/measurement/internal/zzbn;->zzcj(Ljava/lang/String;)J

    move-result-wide v7

    .line 489
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    .line 490
    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawu:Ljava/lang/Long;

    move-object/from16 p1, v13

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfk;->zzc(JJ)J

    move-result-wide v12

    move/from16 v21, v15

    const-string v15, "_dbg"

    move-object/from16 v22, v4

    const-wide/16 v17, 0x1

    .line 491
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 492
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    if-nez v23, :cond_4d

    if-nez v4, :cond_48

    goto :goto_2e

    :cond_48
    move/from16 v23, v9

    .line 493
    :try_start_25
    iget-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    move-wide/from16 v24, v7

    array-length v7, v9

    const/4 v8, 0x0

    :goto_2d
    if-ge v8, v7, :cond_4e

    move/from16 v26, v7

    aget-object v7, v9, v8

    move-object/from16 v27, v9

    .line 494
    iget-object v9, v7, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4c

    .line 495
    instance-of v8, v4, Ljava/lang/Long;

    if-eqz v8, :cond_49

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/zzgg;->zzawx:Ljava/lang/Long;

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4b

    :cond_49
    instance-of v8, v4, Ljava/lang/String;

    if-eqz v8, :cond_4a

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/zzgg;->zzamp:Ljava/lang/String;

    .line 496
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4b

    :cond_4a
    instance-of v8, v4, Ljava/lang/Double;

    if-eqz v8, :cond_4e

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgg;->zzauh:Ljava/lang/Double;

    .line 497
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    :cond_4b
    const/4 v4, 0x1

    goto :goto_2f

    :cond_4c
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v26

    move-object/from16 v9, v27

    goto :goto_2d

    :cond_4d
    :goto_2e
    move-wide/from16 v24, v7

    move/from16 v23, v9

    :cond_4e
    const/4 v4, 0x0

    :goto_2f
    if-nez v4, :cond_4f

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object v4

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzbn;->zzq(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_30

    :cond_4f
    const/4 v4, 0x1

    :goto_30
    if-gtz v4, :cond_51

    .line 499
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v7

    .line 500
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v7

    const-string v8, "Sample rate must be positive. event, rate"

    iget-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    .line 501
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v8, v9, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v4, v10, 0x1

    .line 502
    aput-object v11, v5, v10
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    :cond_50
    :goto_31
    move v10, v4

    move-object/from16 v26, v6

    goto/16 :goto_2c

    .line 503
    :cond_51
    :try_start_26
    iget-object v7, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzz;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    if-nez v7, :cond_52

    .line 504
    :try_start_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    iget-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzq;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v7

    if-nez v7, :cond_52

    .line 505
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v7

    .line 506
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v7

    const-string v8, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    iget-object v15, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    .line 507
    invoke-virtual {v7, v8, v9, v15}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    iget-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    const-wide/16 v29, 0x1

    const-wide/16 v31, 0x1

    iget-object v15, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawu:Ljava/lang/Long;

    .line 509
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    invoke-direct/range {v26 .. v40}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    .line 510
    :cond_52
    :try_start_28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    const-string v8, "_eid"

    invoke-static {v11, v8}, Lcom/google/android/gms/measurement/internal/zzfg;->zzb(Lcom/google/android/gms/internal/measurement/zzgf;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_53

    const/4 v9, 0x1

    goto :goto_32

    :cond_53
    const/4 v9, 0x0

    .line 511
    :goto_32
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    const/4 v15, 0x1

    if-ne v4, v15, :cond_55

    add-int/lit8 v4, v10, 0x1

    .line 512
    :try_start_29
    aput-object v11, v5, v10

    .line 513
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_50

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzz;->zzaij:Ljava/lang/Long;

    if-nez v8, :cond_54

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzz;->zzaik:Ljava/lang/Long;

    if-nez v8, :cond_54

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzz;->zzail:Ljava/lang/Boolean;

    if-eqz v8, :cond_50

    :cond_54
    const/4 v8, 0x0

    .line 514
    invoke-virtual {v7, v8, v8, v8}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v7

    .line 515
    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_4

    goto/16 :goto_31

    .line 516
    :cond_55
    :try_start_2a
    invoke-virtual {v6, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v15
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    if-nez v15, :cond_57

    .line 517
    :try_start_2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    move-object v15, v3

    int-to-long v3, v4

    move-object/from16 v26, v6

    .line 518
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 519
    invoke-static {v8, v14, v6}, Lcom/google/android/gms/measurement/internal/zzfg;->zza([Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v6

    iput-object v6, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    add-int/lit8 v6, v10, 0x1

    .line 520
    aput-object v11, v5, v10

    .line 521
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_56

    .line 522
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v7, v4, v3, v4}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v7

    .line 523
    :cond_56
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    iget-object v4, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawu:Ljava/lang/Long;

    .line 524
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzz;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v4

    .line 525
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_4

    move-object v4, v2

    move v10, v6

    move-object v6, v15

    const-wide/16 v8, 0x1

    goto/16 :goto_36

    :cond_57
    move-object v15, v3

    move-object/from16 v26, v6

    .line 526
    :try_start_2c
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v3

    move-object v6, v15

    .line 527
    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v15, v15, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzn;->zzbh(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 528
    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/zzz;->zzaii:Ljava/lang/Long;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    if-eqz v3, :cond_58

    .line 529
    :try_start_2d
    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/zzz;->zzaii:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    move-object v15, v2

    move-object v3, v8

    move-object/from16 v27, v9

    goto :goto_33

    .line 530
    :cond_58
    :try_start_2e
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    .line 531
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawv:Ljava/lang/Long;

    move-object v15, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v3, v8

    move-object/from16 v27, v9

    move-wide/from16 v8, v24

    invoke-static {v1, v2, v8, v9}, Lcom/google/android/gms/measurement/internal/zzfk;->zzc(JJ)J

    move-result-wide v24

    :goto_33
    cmp-long v1, v24, v12

    if-eqz v1, :cond_59

    :goto_34
    const/4 v1, 0x1

    goto :goto_35

    :cond_59
    const/4 v1, 0x0

    goto :goto_35

    :cond_5a
    move-object v15, v2

    move-object v3, v8

    move-object/from16 v27, v9

    .line 532
    iget-wide v1, v7, Lcom/google/android/gms/measurement/internal/zzz;->zzaih:J

    .line 533
    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawu:Ljava/lang/Long;

    .line 534
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v8, 0x5265c00

    cmp-long v1, v1, v8

    if-ltz v1, :cond_59

    goto :goto_34

    :goto_35
    if-eqz v1, :cond_5c

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    const-wide/16 v8, 0x1

    .line 536
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, p1

    .line 537
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->zza([Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    int-to-long v2, v4

    .line 539
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 540
    invoke-static {v1, v14, v4}, Lcom/google/android/gms/measurement/internal/zzfg;->zza([Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    add-int/lit8 v1, v10, 0x1

    .line 541
    aput-object v11, v5, v10

    .line 542
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 543
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-virtual {v7, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v7

    .line 544
    :cond_5b
    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzgf;->zzawu:Ljava/lang/Long;

    .line 545
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4, v12, v13}, Lcom/google/android/gms/measurement/internal/zzz;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v3

    move-object v4, v15

    .line 546
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v1

    goto :goto_36

    :cond_5c
    move-object v4, v15

    const-wide/16 v8, 0x1

    .line 547
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 548
    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    const/4 v2, 0x0

    .line 549
    invoke-virtual {v7, v3, v2, v2}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v3

    .line 550
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    :goto_36
    add-int/lit8 v1, v23, 0x1

    move v9, v1

    move-object v2, v4

    move-object v3, v6

    move-object/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v4, v22

    move-object/from16 v6, v26

    move-object/from16 v1, p0

    goto/16 :goto_29

    :cond_5e
    move-object v6, v3

    move-object v1, v4

    move-object v4, v2

    .line 551
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    array-length v2, v2

    if-ge v10, v2, :cond_5f

    .line 552
    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/measurement/zzgf;

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    .line 553
    :cond_5f
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzz;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzz;)V

    goto :goto_37

    :cond_60
    move-object v6, v3

    move-object v1, v4

    :cond_61
    const-wide v2, 0x7fffffffffffffffL

    .line 555
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxe:Ljava/lang/Long;

    const-wide/high16 v2, -0x8000000000000000L

    .line 556
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxf:Ljava/lang/Long;

    const/4 v2, 0x0

    .line 557
    :goto_38
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    array-length v3, v3

    if-ge v2, v3, :cond_64

    .line 558
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    aget-object v3, v3, v2

    .line 559
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgf;->zzawu:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxe:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-gez v4, :cond_62

    .line 560
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgf;->zzawu:Ljava/lang/Long;

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxe:Ljava/lang/Long;

    .line 561
    :cond_62
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgf;->zzawu:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxf:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-lez v4, :cond_63

    .line 562
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzgf;->zzawu:Ljava/lang/Long;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxf:Ljava/lang/Long;

    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 563
    :cond_64
    iget-object v2, v6, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zzbl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1

    if-nez v3, :cond_65

    move-object/from16 v5, p0

    .line 565
    :try_start_2f
    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 566
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "Bundling raw events w/o app info. appId"

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    .line 567
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 568
    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3c

    :cond_65
    move-object/from16 v5, p0

    .line 569
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    array-length v4, v4

    if-lez v4, :cond_69

    .line 570
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzgz()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-eqz v4, :cond_66

    .line 571
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_39

    :cond_66
    const/4 v4, 0x0

    :goto_39
    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxh:Ljava/lang/Long;

    .line 572
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzgy()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v4, v9, v11

    if-nez v4, :cond_67

    goto :goto_3a

    :cond_67
    move-wide v7, v9

    :goto_3a
    cmp-long v4, v7, v11

    if-eqz v4, :cond_68

    .line 573
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_3b

    :cond_68
    const/4 v8, 0x0

    :goto_3b
    iput-object v8, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxg:Ljava/lang/Long;

    .line 574
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzhh()V

    .line 575
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzhe()J

    move-result-wide v7

    long-to-int v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxr:Ljava/lang/Integer;

    .line 576
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxe:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 577
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxf:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzt(J)V

    .line 578
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzhp()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzagv:Ljava/lang/String;

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 580
    :cond_69
    :goto_3c
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    array-length v3, v3

    if-lez v3, :cond_6d

    .line 581
    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    .line 582
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object v3

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzbn;->zzcf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 583
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgb;->zzawe:Ljava/lang/Long;

    if-nez v4, :cond_6a

    goto :goto_3d

    .line 584
    :cond_6a
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzgb;->zzawe:Ljava/lang/Long;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxy:Ljava/lang/Long;

    goto :goto_3e

    .line 585
    :cond_6b
    :goto_3d
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzafx:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6c

    const-wide/16 v3, -0x1

    .line 586
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxy:Ljava/lang/Long;

    goto :goto_3e

    .line 587
    :cond_6c
    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    .line 588
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v3

    const-string v4, "Did not find measurement config or missing version info. appId"

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaua:Lcom/google/android/gms/internal/measurement/zzgi;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    .line 589
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 590
    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 591
    :goto_3e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v3

    move/from16 v12, v19

    invoke-virtual {v3, v1, v12}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/internal/measurement/zzgi;Z)Z

    .line 592
    :cond_6d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/zzfa$zza;->zzaub:Ljava/util/List;

    .line 593
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 595
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    .line 596
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 597
    :goto_3f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6f

    if-eqz v6, :cond_6e

    const-string v7, ","

    .line 598
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_6e
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    :cond_6f
    const-string v6, ")"

    .line 600
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    .line 602
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 603
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eq v4, v6, :cond_70

    .line 604
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 605
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 606
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 607
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 608
    invoke-virtual {v1, v6, v4, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 609
    :cond_70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    .line 610
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_3

    :try_start_30
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 611
    invoke-virtual {v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_30
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30 .. :try_end_30} :catch_6
    .catchall {:try_start_30 .. :try_end_30} :catchall_3

    goto :goto_40

    :catch_6
    move-exception v0

    move-object v3, v0

    .line 612
    :try_start_31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 613
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v4, "Failed to remove unused event metadata. appId"

    .line 614
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 615
    :goto_40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_3

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    const/4 v1, 0x1

    return v1

    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_42

    :cond_71
    move-object v5, v1

    .line 617
    :try_start_32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_3

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    const/4 v1, 0x0

    return v1

    :catchall_2
    move-exception v0

    move-object v5, v1

    goto/16 :goto_4

    :goto_41
    if-eqz v4, :cond_72

    .line 619
    :try_start_33
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_72
    throw v1
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_42

    :catchall_4
    move-exception v0

    move-object v5, v1

    :goto_42
    move-object v1, v0

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    throw v1
.end method

.method private final zzg(Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;
    .locals 7

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzbl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    .line 11
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzba;->zzbz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;Ljava/lang/String;)V

    .line 13
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzam(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzap(Ljava/lang/String;)V

    :goto_0
    move v1, v2

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzgx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzap(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzam(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 20
    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzafx:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 21
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzafx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzan(Ljava/lang/String;)V

    move v1, v2

    .line 22
    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagk:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzgw()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 23
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzao(Ljava/lang/String;)V

    move v1, v2

    .line 24
    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzafz:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzafz:Ljava/lang/String;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 26
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzafz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaq(Ljava/lang/String;)V

    move v1, v2

    .line 27
    :cond_4
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzadt:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhc()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 28
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzadt:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzv(J)V

    move v1, v2

    .line 29
    :cond_5
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzts:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzts:Ljava/lang/String;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 31
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzts:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->setAppVersion(Ljava/lang/String;)V

    move v1, v2

    .line 32
    :cond_6
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagd:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzha()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    .line 33
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagd:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(J)V

    move v1, v2

    .line 34
    :cond_7
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzage:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 35
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzar(Ljava/lang/String;)V

    move v1, v2

    .line 36
    :cond_8
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagf:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhd()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    .line 37
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagf:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzw(J)V

    move v1, v2

    .line 38
    :cond_9
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagg:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->isMeasurementEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_a

    .line 39
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagg:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->setMeasurementEnabled(Z)V

    move v1, v2

    .line 40
    :cond_a
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagv:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagv:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzho()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 42
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzas(Ljava/lang/String;)V

    move v1, v2

    .line 43
    :cond_b
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagh:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhq()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    .line 44
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagh:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzag(J)V

    move v1, v2

    .line 45
    :cond_c
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagi:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhr()Z

    move-result v4

    if-eq v3, v4, :cond_d

    .line 46
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagi:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Z)V

    move v1, v2

    .line 47
    :cond_d
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagj:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhs()Z

    move-result v4

    if-eq v3, v4, :cond_e

    .line 48
    iget-boolean p1, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagj:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Z)V

    goto :goto_2

    :cond_e
    move v2, v1

    :goto_2
    if-eqz v2, :cond_f

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_f
    return-object v0
.end method

.method private final zzln()Lcom/google/android/gms/measurement/internal/zzbn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatd:Lcom/google/android/gms/measurement/internal/zzbn;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Lcom/google/android/gms/measurement/internal/zzez;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatd:Lcom/google/android/gms/measurement/internal/zzbn;

    return-object v0
.end method

.method private final zzlp()Lcom/google/android/gms/measurement/internal/zzay;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatg:Lcom/google/android/gms/measurement/internal/zzay;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzlq()Lcom/google/android/gms/measurement/internal/zzew;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzath:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Lcom/google/android/gms/measurement/internal/zzez;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzath:Lcom/google/android/gms/measurement/internal/zzew;

    return-object v0
.end method

.method private final zzls()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzcl()V

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 6
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzba;->zzani:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    const-wide/16 v3, 0x1

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzco;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmd()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 8
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzba;->zzani:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    .line 9
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzlu()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzii()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzlv()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlz()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatl:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    .line 7
    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatl:J

    sub-long/2addr v1, v7

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    .line 9
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 12
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlp()Lcom/google/android/gms/measurement/internal/zzay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzay;->unregister()V

    .line 14
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlq()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->cancel()V

    return-void

    .line 15
    :cond_1
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatl:J

    .line 16
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkr()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlu()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_5

    .line 17
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 18
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 19
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzaf;->zzakd:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzq;->zzij()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzq;->zzie()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_7

    .line 21
    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v9

    .line 22
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzn;->zzhy()Ljava/lang/String;

    move-result-object v9

    .line 23
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, ".none."

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 24
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzaf;->zzajy:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    goto :goto_2

    .line 25
    :cond_6
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzaf;->zzajx:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    goto :goto_2

    .line 26
    :cond_7
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzaf;->zzajw:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 27
    :goto_2
    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v11

    .line 28
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzba;->zzane:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v11

    .line 29
    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v13

    .line 30
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzba;->zzanf:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v13

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v15

    move-wide/from16 v16, v9

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzq;->zzig()J

    move-result-wide v8

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v10

    move-wide/from16 v18, v5

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzq;->zzih()J

    move-result-wide v5

    .line 33
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v8, v5, v3

    if-nez v8, :cond_9

    :cond_8
    move-wide v10, v3

    goto/16 :goto_4

    :cond_9
    sub-long/2addr v5, v1

    .line 34
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v5, v1, v5

    sub-long/2addr v11, v1

    .line 35
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v13, v1

    .line 36
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    .line 37
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v5, v18

    if-eqz v7, :cond_a

    cmp-long v7, v8, v3

    if-lez v7, :cond_a

    .line 38
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v16

    .line 39
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v7

    move-wide/from16 v12, v16

    invoke-virtual {v7, v8, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzfg;->zzb(JJ)Z

    move-result v7

    if-nez v7, :cond_b

    add-long v10, v8, v12

    :cond_b
    cmp-long v7, v1, v3

    if-eqz v7, :cond_d

    cmp-long v5, v1, v5

    if-ltz v5, :cond_d

    const/4 v5, 0x0

    :goto_3
    const/16 v6, 0x14

    .line 40
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzaf;->zzakf:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_8

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    .line 41
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzaf;->zzake:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    mul-long/2addr v12, v6

    add-long/2addr v10, v12

    cmp-long v6, v10, v1

    if-lez v6, :cond_c

    goto :goto_4

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    cmp-long v1, v10, v3

    if-nez v1, :cond_e

    .line 42
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 44
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlp()Lcom/google/android/gms/measurement/internal/zzay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzay;->unregister()V

    .line 45
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlq()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->cancel()V

    return-void

    .line 46
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlo()Lcom/google/android/gms/measurement/internal/zzat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzat;->zzfb()Z

    move-result v1

    if-nez v1, :cond_f

    .line 47
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 49
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlp()Lcom/google/android/gms/measurement/internal/zzay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzay;->zzey()V

    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlq()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->cancel()V

    return-void

    .line 51
    :cond_f
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    .line 52
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzba;->zzang:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v1

    .line 53
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzaf;->zzaju:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzfg;->zzb(JJ)Z

    move-result v7

    if-nez v7, :cond_10

    add-long/2addr v1, v5

    .line 55
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 56
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlp()Lcom/google/android/gms/measurement/internal/zzay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzay;->unregister()V

    .line 57
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v10, v1

    cmp-long v1, v10, v3

    if-gtz v1, :cond_11

    .line 59
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzajz:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 60
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    .line 61
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzba;->zzane:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 62
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 63
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    .line 64
    :cond_11
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlq()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/measurement/internal/zzew;->zzh(J)V

    return-void

    .line 67
    :cond_12
    :goto_5
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlp()Lcom/google/android/gms/measurement/internal/zzay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzay;->unregister()V

    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlq()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->cancel()V

    return-void
.end method

.method private final zzlw()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatp:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatq:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatr:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatm:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 7
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 9
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatp:Z

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatq:Z

    .line 12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatr:Z

    .line 13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 14
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzlx()Z
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    const-string v2, "google_app_measurement.db"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatt:Ljava/nio/channels/FileChannel;

    .line 6
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzats:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzlz()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatk:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static zzm(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzfa;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatc:Lcom/google/android/gms/measurement/internal/zzfa;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/google/android/gms/measurement/internal/zzfa;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatc:Lcom/google/android/gms/measurement/internal/zzfa;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzff;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzff;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzfa;-><init>(Lcom/google/android/gms/measurement/internal/zzff;)V

    .line 8
    sput-object p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatc:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 9
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatc:Lcom/google/android/gms/measurement/internal/zzfa;

    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final start()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbo;->zzaf()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzif()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->zzane:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->zzane:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlv()V

    return-void
.end method

.method final zza(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, v0, [B

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatu:Ljava/util/List;

    const/4 v2, 0x0

    .line 93
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatu:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0xc8

    const/4 v4, 0x1

    if-eq p1, v3, :cond_1

    const/16 v3, 0xcc

    if-ne p1, v3, :cond_6

    :cond_1
    if-nez p2, :cond_6

    .line 94
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p2

    .line 95
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzba;->zzane:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 96
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    .line 97
    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    .line 98
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p2

    .line 99
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzba;->zzanf:Lcom/google/android/gms/measurement/internal/zzbd;

    const-wide/16 v5, 0x0

    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    .line 100
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlv()V

    .line 101
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 102
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p4, "Successful upload. Got network response. code, size"

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzq;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 107
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 108
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    .line 109
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzq;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p4

    new-array v1, v4, [Ljava/lang/String;

    .line 110
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v3, "queue"

    const-string v7, "rowid=?"

    .line 111
    invoke-virtual {p4, v3, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p4

    if-ne p4, v4, :cond_2

    goto :goto_0

    .line 112
    :cond_2
    new-instance p4, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Deleted fewer rows from queue than expected"

    invoke-direct {p4, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception p4

    .line 113
    :try_start_5
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    const-string v1, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v1, p4}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    throw p4
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p3

    .line 115
    :try_start_6
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatv:Ljava/util/List;

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatv:Ljava/util/List;

    .line 116
    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 117
    :cond_3
    throw p3

    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 119
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    .line 120
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatv:Ljava/util/List;

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlo()Lcom/google/android/gms/measurement/internal/zzat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzat;->zzfb()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlu()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlt()V

    goto :goto_1

    :cond_5
    const-wide/16 p1, -0x1

    .line 123
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatw:J

    .line 124
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlv()V

    .line 125
    :goto_1
    iput-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatl:J

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception p1

    .line 127
    :try_start_8
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 128
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 130
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatl:J

    .line 131
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatl:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 133
    :cond_6
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p3

    .line 134
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p3

    const-string v2, "Network upload failed. Will retry later. code, error"

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p2

    .line 137
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzba;->zzanf:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 138
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 139
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_8

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_7

    goto :goto_2

    :cond_7
    move v4, v0

    :cond_8
    :goto_2
    if-eqz v4, :cond_9

    .line 140
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p1

    .line 141
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzba;->zzang:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 142
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 143
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    .line 144
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object p1

    .line 145
    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/zzn;->zzaz(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzc(Ljava/util/List;)V

    .line 147
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlv()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 148
    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatq:Z

    .line 149
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlw()V

    return-void

    :catchall_1
    move-exception p1

    .line 150
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatq:Z

    .line 151
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlw()V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)[B
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    const-string v2, "_et"

    const-string v3, "_iap"

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 208
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzga()V

    .line 209
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    new-instance v14, Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-direct {v14}, Lcom/google/android/gms/internal/measurement/zzgh;-><init>()V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzq;->beginTransaction()V

    .line 213
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/zzq;->zzbl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v13

    const/4 v11, 0x0

    if-nez v13, :cond_0

    .line 214
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Log and bundle not available. package_name"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v11, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    return-object v0

    .line 217
    :cond_0
    :try_start_1
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzg;->isMeasurementEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 218
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v2, v15}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v11, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    return-object v0

    .line 221
    :cond_1
    :try_start_2
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ecommerce_purchase"

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    .line 222
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 223
    :cond_2
    invoke-direct {v1, v15, v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 224
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v4

    .line 225
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v4

    const-string v5, "Failed to handle purchase event at single event bundle creation. appId"

    .line 226
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 227
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    :cond_3
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v4

    .line 229
    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/zzn;->zzax(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v17, 0x0

    .line 230
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    if-eqz v4, :cond_7

    const-string v6, "_e"

    .line 231
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 232
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzaa;->size()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    .line 233
    :cond_4
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-nez v6, :cond_5

    .line 234
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v6, "The engagement event does not include duration. appId"

    .line 236
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 237
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 238
    :cond_5
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    goto :goto_1

    .line 239
    :cond_6
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 240
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v6, "The engagement event does not contain any parameters. appId"

    .line 241
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 242
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    :cond_7
    :goto_1
    new-instance v12, Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-direct {v12}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>()V

    const/4 v9, 0x1

    new-array v2, v9, [Lcom/google/android/gms/internal/measurement/zzgi;

    aput-object v12, v2, v11

    .line 244
    iput-object v2, v14, Lcom/google/android/gms/internal/measurement/zzgh;->zzawy:[Lcom/google/android/gms/internal/measurement/zzgi;

    .line 245
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxa:Ljava/lang/Integer;

    const-string v2, "android"

    .line 246
    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxi:Ljava/lang/String;

    .line 247
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    .line 248
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzage:Ljava/lang/String;

    .line 249
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzts:Ljava/lang/String;

    .line 250
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzg;->zzha()J

    move-result-wide v6

    const-wide/32 v19, -0x80000000

    cmp-long v2, v6, v19

    const/4 v10, 0x0

    if-nez v2, :cond_8

    move-object v2, v10

    goto :goto_2

    :cond_8
    long-to-int v2, v6

    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxu:Ljava/lang/Integer;

    .line 252
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzg;->zzhc()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:Ljava/lang/Long;

    .line 253
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzafx:Ljava/lang/String;

    .line 254
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 255
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzg;->zzgw()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzawj:Ljava/lang/String;

    .line 256
    :cond_9
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzg;->zzhd()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxq:Ljava/lang/Long;

    .line 257
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 258
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->zzhz()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 259
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v2

    .line 260
    iget-object v6, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzn;->zzav(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 261
    iput-object v10, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaya:Ljava/lang/String;

    .line 262
    :cond_a
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v2

    .line 263
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzba;->zzby(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 264
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzg;->zzhr()Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz v2, :cond_b

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    .line 265
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 266
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/String;

    .line 267
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxp:Ljava/lang/Boolean;

    .line 268
    :cond_b
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgk()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v2

    .line 269
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzcl()V

    .line 270
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 271
    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxk:Ljava/lang/String;

    .line 272
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgk()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v2

    .line 273
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzcl()V

    .line 274
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 275
    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxj:Ljava/lang/String;

    .line 276
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgk()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzx;->zzis()J

    move-result-wide v6

    long-to-int v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxl:Ljava/lang/Integer;

    .line 278
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgk()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzx;->zzit()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaia:Ljava/lang/String;

    .line 280
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzg;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzafw:Ljava/lang/String;

    .line 281
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzafz:Ljava/lang/String;

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzq;->zzbk(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 283
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/google/android/gms/internal/measurement/zzgl;

    iput-object v6, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "_lte"

    if-eqz v4, :cond_e

    .line 284
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v7

    iget-object v8, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    .line 285
    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzq;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 286
    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    if-nez v8, :cond_c

    goto :goto_3

    .line 287
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    cmp-long v8, v19, v17

    if-lez v8, :cond_f

    .line 288
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v10, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    const-string v21, "auto"

    const-string v22, "_lte"

    .line 289
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v11

    .line 290
    invoke-interface {v11}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v23

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    .line 291
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    add-long v19, v19, v26

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    invoke-direct/range {v19 .. v25}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v7, v8

    goto :goto_4

    .line 292
    :cond_d
    :goto_3
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v8, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    const-string v21, "auto"

    const-string v22, "_lte"

    .line 293
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v10

    .line 294
    invoke-interface {v10}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v25, v5

    invoke-direct/range {v19 .. v25}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_4

    :cond_e
    const/4 v7, 0x0

    :cond_f
    :goto_4
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 295
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_11

    .line 296
    new-instance v11, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-direct {v11}, Lcom/google/android/gms/internal/measurement/zzgl;-><init>()V

    .line 297
    iget-object v9, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    aput-object v11, v9, v8

    .line 298
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzfj;->name:Ljava/lang/String;

    iput-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgl;->name:Ljava/lang/String;

    .line 299
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzfj;

    move-object/from16 v21, v13

    move-object/from16 v20, v14

    iget-wide v13, v9, Lcom/google/android/gms/measurement/internal/zzfj;->zzaue:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayl:Ljava/lang/Long;

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v9

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    invoke-virtual {v9, v11, v13}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Lcom/google/android/gms/internal/measurement/zzgl;Ljava/lang/Object;)V

    if-eqz v4, :cond_10

    .line 301
    iget-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgl;->name:Ljava/lang/String;

    .line 302
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 303
    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    iput-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzawx:Ljava/lang/Long;

    .line 304
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    .line 305
    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzayl:Ljava/lang/Long;

    move-object v10, v11

    :cond_10
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v14, v20

    move-object/from16 v13, v21

    const/4 v9, 0x1

    goto :goto_5

    :cond_11
    move-object/from16 v21, v13

    move-object/from16 v20, v14

    if-eqz v4, :cond_12

    if-nez v10, :cond_12

    .line 306
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgl;-><init>()V

    .line 307
    iput-object v6, v2, Lcom/google/android/gms/internal/measurement/zzgl;->name:Ljava/lang/String;

    .line 308
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    .line 309
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzayl:Ljava/lang/Long;

    .line 310
    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzawx:Ljava/lang/Long;

    .line 311
    iget-object v4, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v6, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    array-length v6, v6

    const/4 v9, 0x1

    add-int/2addr v6, v9

    .line 312
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/measurement/zzgl;

    iput-object v4, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    .line 313
    array-length v6, v4

    sub-int/2addr v6, v9

    aput-object v2, v4, v6

    goto :goto_6

    :cond_12
    const/4 v9, 0x1

    .line 314
    :goto_6
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v17

    if-lez v2, :cond_13

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzfj;)Z

    .line 316
    :cond_13
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaa;->zziv()Landroid/os/Bundle;

    move-result-object v14

    .line 317
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "_r"

    const-wide/16 v4, 0x1

    if-eqz v2, :cond_14

    :try_start_4
    const-string v2, "_c"

    .line 318
    invoke-virtual {v14, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 319
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 320
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v6, "Marking in-app purchase as real-time"

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v14, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_14
    const-string v2, "_o"

    .line 322
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzad;->origin:Ljava/lang/String;

    invoke-virtual {v14, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v2

    .line 324
    iget-object v6, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 325
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v2

    const-string v6, "_dbg"

    .line 326
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v14, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v2

    .line 328
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v14, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v2

    if-nez v2, :cond_16

    .line 330
    new-instance v13, Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzad;->zzaip:J

    const-wide/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v2, v13

    move-object/from16 v3, p2

    const/16 v27, 0x0

    move-wide v9, v10

    move-object/from16 v28, v12

    move-wide/from16 v11, v22

    move-object/from16 v29, v13

    move-object/from16 v22, v21

    move-object/from16 v13, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v25

    move-object/from16 v16, v26

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    move-object/from16 v3, v29

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzz;)V

    move-wide/from16 v9, v17

    goto :goto_7

    :cond_16
    move-object/from16 v28, v12

    move-object/from16 v19, v20

    move-object/from16 v22, v21

    const/16 v27, 0x0

    move-object/from16 v20, v14

    .line 332
    iget-wide v3, v2, Lcom/google/android/gms/measurement/internal/zzz;->zzaig:J

    .line 333
    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzad;->zzaip:J

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzz;->zzai(J)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v2

    .line 334
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzz;->zziu()Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v2

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzz;)V

    move-wide v9, v3

    .line 336
    :goto_7
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzad;->origin:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzad;->zzaip:J

    move-object v2, v12

    move-object/from16 v5, p2

    move-object/from16 v11, v20

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 337
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgf;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzgf;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    move-object/from16 v4, v28

    .line 338
    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    .line 339
    iget-wide v5, v12, Lcom/google/android/gms/measurement/internal/zzy;->timestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzgf;->zzawu:Ljava/lang/Long;

    .line 340
    iget-object v2, v12, Lcom/google/android/gms/measurement/internal/zzy;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzgf;->name:Ljava/lang/String;

    .line 341
    iget-wide v5, v12, Lcom/google/android/gms/measurement/internal/zzy;->zzaic:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzgf;->zzawv:Ljava/lang/Long;

    .line 342
    iget-object v2, v12, Lcom/google/android/gms/measurement/internal/zzy;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaa;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzgg;

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    .line 343
    iget-object v2, v12, Lcom/google/android/gms/measurement/internal/zzy;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaa;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v11, v3

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 344
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    .line 345
    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzgf;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgg;

    add-int/lit8 v8, v11, 0x1

    aput-object v6, v7, v11

    .line 346
    iput-object v5, v6, Lcom/google/android/gms/internal/measurement/zzgg;->name:Ljava/lang/String;

    .line 347
    iget-object v7, v12, Lcom/google/android/gms/measurement/internal/zzy;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/measurement/internal/zzaa;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/Object;)V

    move v11, v8

    goto :goto_8

    .line 349
    :cond_17
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxc:[Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzgf;

    invoke-direct {v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzgl;[Lcom/google/android/gms/internal/measurement/zzgf;)[Lcom/google/android/gms/internal/measurement/zzgd;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxt:[Lcom/google/android/gms/internal/measurement/zzgd;

    .line 350
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzgf;->zzawu:Ljava/lang/Long;

    iput-object v2, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxe:Ljava/lang/Long;

    .line 351
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzgf;->zzawu:Ljava/lang/Long;

    iput-object v0, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxf:Ljava/lang/Long;

    .line 352
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/measurement/internal/zzg;->zzgz()J

    move-result-wide v5

    cmp-long v0, v5, v17

    if-eqz v0, :cond_18

    .line 353
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_9

    :cond_18
    move-object/from16 v10, v27

    :goto_9
    iput-object v10, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxh:Ljava/lang/Long;

    .line 354
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/measurement/internal/zzg;->zzgy()J

    move-result-wide v7

    cmp-long v0, v7, v17

    if-nez v0, :cond_19

    goto :goto_a

    :cond_19
    move-wide v5, v7

    :goto_a
    cmp-long v0, v5, v17

    if-eqz v0, :cond_1a

    .line 355
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_b

    :cond_1a
    move-object/from16 v10, v27

    :goto_b
    iput-object v10, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxg:Ljava/lang/Long;

    .line 356
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/measurement/internal/zzg;->zzhh()V

    .line 357
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/measurement/internal/zzg;->zzhe()J

    move-result-wide v5

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxr:Ljava/lang/Integer;

    .line 358
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzn;->zzhc()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    .line 360
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 361
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxd:Ljava/lang/Long;

    .line 362
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxs:Ljava/lang/Boolean;

    .line 363
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxe:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 364
    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxf:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzt(J)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    .line 368
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/zzzg;->zzvu()I

    move-result v0

    .line 369
    new-array v2, v0, [B

    .line 370
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzyy;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzyy;

    move-result-object v0

    move-object/from16 v3, v19

    .line 371
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzgh;->zza(Lcom/google/android/gms/internal/measurement/zzyy;)V

    .line 372
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzyy;->zzyt()V

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->zzb([B)[B

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 374
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 375
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    .line 376
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Data loss. Failed to bundle and serialize. appId"

    .line 377
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v27

    :catchall_0
    move-exception v0

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    throw v0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzez;)V
    .locals 0

    .line 162
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatn:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatn:I

    return-void
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 12

    .line 98
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 100
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzh;->zzafx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzh;->zzagk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzh;->zzagg:Z

    if-nez v0, :cond_1

    .line 102
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzg(Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    .line 104
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaf;->zzalj:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzn;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    const-string v1, "_ap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfh;->origin:Ljava/lang/String;

    const-string v2, "auto"

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfj;->origin:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Not setting lower priority ad personalization property"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    .line 114
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzcs(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eqz v4, :cond_4

    .line 115
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    .line 116
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    .line 117
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    .line 118
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_0

    :cond_3
    move v7, v0

    .line 119
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v2

    .line 120
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    const-string v5, "_ev"

    .line 121
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 122
    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v3

    .line 123
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfk;->zzi(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_7

    .line 124
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    .line 125
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    .line 126
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    .line 127
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 128
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_5

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    .line 129
    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_6
    move v11, v0

    .line 131
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v6

    .line 132
    iget-object v7, p2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    const-string v9, "_ev"

    .line 133
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 134
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    .line 135
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    .line 137
    :cond_8
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzfh;->origin:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzfh;->zzaue:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 138
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    .line 140
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    .line 141
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfj;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting user property"

    .line 142
    invoke-virtual {p1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzq;->beginTransaction()V

    .line 144
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzg(Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzfj;)Z

    move-result p1

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V

    if-eqz p1, :cond_9

    .line 147
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "User property set"

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    .line 150
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfj;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    .line 151
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 152
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    .line 154
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    .line 155
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfj;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    .line 156
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    .line 158
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 159
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    .line 161
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    throw p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 10

    .line 163
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->origin:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 170
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzh;->zzafx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzh;->zzagk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzh;->zzagg:Z

    if-nez v0, :cond_1

    .line 172
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzg(Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 173
    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzl;-><init>(Lcom/google/android/gms/measurement/internal/zzl;)V

    const/4 p1, 0x0

    .line 174
    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzl;->active:Z

    .line 175
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->beginTransaction()V

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zzj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzl;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 177
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzl;->origin:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzl;->origin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 180
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    .line 181
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzl;->origin:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzl;->origin:Ljava/lang/String;

    .line 182
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 183
    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzl;->active:Z

    if-eqz v3, :cond_3

    .line 184
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzl;->origin:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzl;->origin:Ljava/lang/String;

    .line 185
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzl;->creationTimestamp:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzl;->creationTimestamp:J

    .line 186
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzl;->triggerTimeout:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzl;->triggerTimeout:J

    .line 187
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzl;->triggerEventName:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzl;->triggerEventName:Ljava/lang/String;

    .line 188
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzl;->zzahd:Lcom/google/android/gms/measurement/internal/zzad;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahd:Lcom/google/android/gms/measurement/internal/zzad;

    .line 189
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzl;->active:Z

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzl;->active:Z

    .line 190
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzfh;->zzaue:J

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 191
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfh;->origin:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    goto :goto_0

    .line 192
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzl;->triggerEventName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 193
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzl;->creationTimestamp:J

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 194
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfh;->origin:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 195
    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzl;->active:Z

    move p1, v2

    .line 196
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzl;->active:Z

    if-eqz v1, :cond_6

    .line 197
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 198
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzl;->origin:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzfh;->zzaue:J

    .line 199
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 200
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzfj;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 201
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    .line 203
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    .line 204
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzfj;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    .line 205
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 206
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    .line 208
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 209
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    .line 210
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzfj;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    .line 211
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    .line 212
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahd:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz p1, :cond_6

    .line 213
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahd:Lcom/google/android/gms/measurement/internal/zzad;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzl;->creationTimestamp:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Lcom/google/android/gms/measurement/internal/zzad;J)V

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzd(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 215
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzl;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 216
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    .line 218
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    .line 219
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 220
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 221
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 222
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    .line 224
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 225
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    .line 226
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 227
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 228
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    .line 231
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    throw p1
.end method

.method final zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzq;->zzbl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    const/4 v4, 0x1

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_2

    :cond_1
    if-nez p3, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    if-nez v1, :cond_3

    .line 47
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 48
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_2

    .line 50
    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    .line 51
    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzg;->zzz(J)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 53
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p4

    .line 54
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzbn;->zzch(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p1

    .line 57
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzba;->zzanf:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 58
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 59
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_5

    goto :goto_1

    :cond_5
    move v4, v0

    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    .line 60
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p1

    .line 61
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzba;->zzang:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 62
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 63
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    .line 64
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlv()V

    goto/16 :goto_7

    :cond_8
    :goto_2
    const/4 p3, 0x0

    if-eqz p5, :cond_9

    const-string v2, "Last-Modified"

    .line 65
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_3

    :cond_9
    move-object p5, p3

    :goto_3
    if-eqz p5, :cond_a

    .line 66
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 67
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object p5, p3

    :goto_4
    if-eq p2, v5, :cond_c

    if-ne p2, v3, :cond_b

    goto :goto_5

    .line 68
    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzbn;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_d

    .line 69
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatp:Z

    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlw()V

    return-void

    .line 72
    :cond_c
    :goto_5
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/measurement/internal/zzbn;->zzcf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    move-result-object p5

    if-nez p5, :cond_d

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzbn;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_d

    .line 74
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 75
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatp:Z

    .line 76
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlw()V

    return-void

    .line 77
    :cond_d
    :try_start_5
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 78
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzy(J)V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    if-ne p2, v5, :cond_e

    .line 80
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 81
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzji()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 82
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 83
    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    .line 86
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 87
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlo()Lcom/google/android/gms/measurement/internal/zzat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzat;->zzfb()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlu()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlt()V

    goto :goto_7

    .line 90
    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlv()V

    .line 91
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 92
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 93
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatp:Z

    .line 94
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlw()V

    return-void

    :catchall_0
    move-exception p1

    .line 95
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    .line 96
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatp:Z

    .line 97
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlw()V

    throw p1
.end method

.method public final zzbx()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 28
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 32
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 33
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzad;->zzaip:J

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfg;->zze(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 35
    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagg:Z

    if-nez v4, :cond_1

    .line 36
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzg(Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 37
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzq;->beginTransaction()V

    .line 38
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v4

    .line 39
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 41
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    const-wide/16 v5, 0x0

    cmp-long v5, v11, v5

    const/4 v6, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-gez v5, :cond_2

    .line 42
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v4

    const-string v7, "Invalid time querying timed out conditional properties"

    .line 44
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 45
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 46
    invoke-virtual {v4, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v7, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v8, v6, [Ljava/lang/String;

    aput-object v3, v8, v13

    .line 48
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v14

    .line 49
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzq;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 50
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzl;

    if-eqz v7, :cond_3

    .line 51
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v8

    .line 52
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v8

    const-string v9, "User property timed out"

    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    .line 53
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v15

    .line 54
    iget-object v14, v7, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v15, v14}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 55
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 56
    invoke-virtual {v8, v9, v10, v14, v15}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzl;->zzahc:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz v8, :cond_4

    .line 58
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzl;->zzahc:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-direct {v8, v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Lcom/google/android/gms/measurement/internal/zzad;J)V

    invoke-direct {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzd(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 59
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v8

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v8, v3, v7}, Lcom/google/android/gms/measurement/internal/zzq;->zzk(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto :goto_1

    .line 60
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v4

    .line 61
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 63
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    if-gez v5, :cond_6

    .line 64
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v4

    const-string v7, "Invalid time querying expired conditional properties"

    .line 66
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 67
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 68
    invoke-virtual {v4, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_6
    const-string v7, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v8, v6, [Ljava/lang/String;

    aput-object v3, v8, v13

    .line 70
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 71
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzq;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 72
    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzl;

    if-eqz v8, :cond_7

    .line 74
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v9

    .line 75
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v9

    const-string v10, "User property expired"

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    .line 76
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v15

    .line 77
    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v15, v6}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 78
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 79
    invoke-virtual {v9, v10, v14, v6, v15}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v6

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v6, v3, v9}, Lcom/google/android/gms/measurement/internal/zzq;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/zzl;->zzahe:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz v6, :cond_8

    .line 82
    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/zzl;->zzahe:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v6

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v6, v3, v8}, Lcom/google/android/gms/measurement/internal/zzq;->zzk(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    goto :goto_3

    .line 84
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v13

    :goto_4
    if-ge v6, v4, :cond_a

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzad;

    .line 85
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzad;

    invoke-direct {v9, v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Lcom/google/android/gms/measurement/internal/zzad;J)V

    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzd(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    goto :goto_4

    .line 86
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v4

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    .line 87
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 90
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    if-gez v5, :cond_b

    .line 91
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    .line 92
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v5

    const-string v7, "Invalid time querying triggered conditional properties"

    .line 93
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 94
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzco;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzan;->zzbs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 96
    invoke-virtual {v5, v7, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_5

    :cond_b
    const-string v5, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v6, v7, v3

    .line 98
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v7, v6

    .line 99
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/measurement/internal/zzq;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 100
    :goto_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzl;

    if-eqz v15, :cond_c

    .line 102
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 103
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzfj;

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzl;->origin:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    .line 104
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfh;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object v4, v10

    move-wide v8, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzfj;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 106
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    .line 108
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v7

    .line 109
    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzfj;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    .line 110
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    .line 111
    :cond_d
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v4

    .line 112
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    .line 113
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 114
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v7

    .line 115
    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzfj;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzfj;->value:Ljava/lang/Object;

    .line 116
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    :goto_7
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzl;->zzahd:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz v4, :cond_e

    .line 118
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzl;->zzahd:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_e
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-direct {v4, v13}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Lcom/google/android/gms/measurement/internal/zzfj;)V

    iput-object v4, v15, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    const/4 v4, 0x1

    .line 120
    iput-boolean v4, v15, Lcom/google/android/gms/measurement/internal/zzl;->active:Z

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzl;)Z

    const/4 v13, 0x0

    goto/16 :goto_6

    .line 122
    :cond_f
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzd(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 123
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v0, :cond_10

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v13, v13, 0x1

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzad;

    .line 124
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzad;

    invoke-direct {v4, v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Lcom/google/android/gms/measurement/internal/zzad;J)V

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzd(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    goto :goto_8

    .line 125
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    throw v0
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zzbl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 2
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-direct {v0, v15}, Lcom/google/android/gms/measurement/internal/zzfa;->zzc(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    const-string v4, "_ui"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Could not find package. appId"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    .line 10
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 11
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_2
    :goto_0
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzh;

    move-object v2, v14

    .line 13
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzha()J

    move-result-wide v6

    .line 16
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhc()J

    move-result-wide v9

    .line 18
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhd()J

    move-result-wide v11

    const/4 v13, 0x0

    .line 19
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->isMeasurementEnabled()Z

    move-result v16

    move-object/from16 v26, v14

    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v25, v15

    move/from16 v15, v16

    .line 20
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v16

    .line 21
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzhq()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    .line 22
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzhr()Z

    move-result v22

    .line 23
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzhs()Z

    move-result v23

    const/16 v24, 0x0

    .line 24
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzgw()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v25}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;)V

    move-object/from16 v2, v26

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzc(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    return-void

    .line 26
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 3

    .line 138
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 140
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzh;->zzafx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzh;->zzagk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzh;->zzagg:Z

    if-nez v0, :cond_1

    .line 142
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzg(Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    .line 144
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaf;->zzalj:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzn;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    const-string v1, "_ap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzfj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfh;->origin:Ljava/lang/String;

    const-string v2, "auto"

    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfj;->origin:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string p2, "Not removing higher priority ad personalization property"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    .line 156
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    .line 157
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->beginTransaction()V

    .line 159
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzg(Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V

    .line 162
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 163
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v0, "User property removed"

    .line 164
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    .line 165
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    .line 168
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    throw p1
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 9

    .line 169
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 174
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 175
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzh;->zzafx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzh;->zzagk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzh;->zzagg:Z

    if-nez v0, :cond_1

    .line 177
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzg(Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->beginTransaction()V

    .line 179
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzg(Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 180
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zzj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 181
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    .line 183
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    .line 184
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zzk(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzl;->active:Z

    if-eqz v1, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahe:Lcom/google/android/gms/measurement/internal/zzad;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 190
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahe:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v2, :cond_3

    .line 191
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahe:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzad;->zzaid:Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaa;->zziv()Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    move-object v3, v1

    .line 192
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v1

    .line 193
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahe:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzad;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzl;->origin:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahe:Lcom/google/android/gms/measurement/internal/zzad;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzad;->zzaip:J

    const/4 p1, 0x1

    const/4 v8, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-wide v5, v6

    move v7, p1

    .line 194
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object p1

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzd(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    goto :goto_0

    .line 196
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p2

    .line 197
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    .line 198
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    .line 200
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzl;->zzahb:Lcom/google/android/gms/measurement/internal/zzfh;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfh;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzbu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    .line 204
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    throw p1
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 11
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "app_id=?"

    .line 621
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatu:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 622
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatv:Ljava/util/List;

    .line 623
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatu:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 625
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 626
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 627
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    .line 628
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzq;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "apps"

    .line 629
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    const-string v5, "events"

    .line 630
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "user_attributes"

    .line 631
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "conditional_properties"

    .line 632
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events"

    .line 633
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events_metadata"

    .line 634
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "queue"

    .line 635
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "audience_filter_values"

    .line 636
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "main_event_params"

    .line 637
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v6, v0

    if-lez v6, :cond_1

    .line 638
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 639
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 640
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    .line 641
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 642
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 643
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzafx:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagg:Z

    iget-boolean v6, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagi:Z

    iget-boolean v7, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagj:Z

    iget-wide v8, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagx:J

    iget-object v10, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagk:Ljava/lang/String;

    move-object v1, p0

    .line 644
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZJLjava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    .line 645
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v1

    .line 646
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzn;->zzbd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 647
    iget-boolean p1, p1, Lcom/google/android/gms/measurement/internal/zzh;->zzagg:Z

    if-eqz p1, :cond_3

    .line 648
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzf(Lcom/google/android/gms/measurement/internal/zzh;)V

    :cond_3
    return-void
.end method

.method final zze(Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzg(Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void
.end method

.method final zze(Lcom/google/android/gms/measurement/internal/zzl;)V
    .locals 1

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzco(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzb(Lcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;)V

    :cond_0
    return-void
.end method

.method final zzf(Lcom/google/android/gms/measurement/internal/zzh;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v6, "_uwa"

    const-string v0, "app_id=?"

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzafx:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagk:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzq;->zzbl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_1

    .line 7
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzafx:Ljava/lang/String;

    .line 8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 9
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzy(J)V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzln()Lcom/google/android/gms/measurement/internal/zzbn;

    move-result-object v7

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzbn;->zzci(Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-boolean v7, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagg:Z

    if-nez v7, :cond_2

    .line 13
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzg(Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 14
    :cond_2
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagx:J

    cmp-long v7, v10, v8

    if-nez v7, :cond_3

    .line 15
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    .line 16
    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v10

    .line 17
    :cond_3
    iget v7, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagy:I

    const/4 v14, 0x1

    if-eqz v7, :cond_4

    if-eq v7, v14, :cond_4

    .line 18
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v12

    .line 19
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 20
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 21
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Incorrect app type, assuming installed app. appId, appType"

    .line 22
    invoke-virtual {v12, v8, v13, v7}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    .line 23
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzq;->beginTransaction()V

    .line 24
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzq;->zzbl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 25
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    .line 26
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzafx:Ljava/lang/String;

    .line 27
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v13

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagk:Ljava/lang/String;

    .line 28
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzgw()Ljava/lang/String;

    move-result-object v15

    .line 29
    invoke-static {v12, v13, v9, v15}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 30
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v9

    .line 31
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v9

    const-string v12, "New GMP App Id passed in. Removing cached database data. appId"

    .line 32
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 33
    invoke-virtual {v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v8

    .line 35
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    .line 36
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 37
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzq;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    new-array v13, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v8, v13, v15

    const-string v14, "events"

    .line 39
    invoke-virtual {v12, v14, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v14, v15

    const-string v15, "user_attributes"

    .line 40
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "conditional_properties"

    .line 41
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "apps"

    .line 42
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events"

    .line 43
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events_metadata"

    .line 44
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "event_filters"

    .line 45
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "property_filters"

    .line 46
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "audience_filter_values"

    .line 47
    invoke-virtual {v12, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v14, v0

    if-lez v14, :cond_5

    .line 48
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v12, "Deleted application data. app, records"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v8, v13}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    :try_start_2
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzco;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v9

    .line 50
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v9

    const-string v12, "Error deleting application data. appId, error"

    .line 51
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v12, v8, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    const/4 v8, 0x0

    :cond_6
    if-eqz v8, :cond_9

    .line 52
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzha()J

    move-result-wide v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/32 v14, -0x80000000

    cmp-long v0, v12, v14

    const-string v9, "_pv"

    if-eqz v0, :cond_7

    .line 53
    :try_start_3
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzha()J

    move-result-wide v12

    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagd:J

    cmp-long v0, v12, v14

    if-eqz v0, :cond_9

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzad;

    const-string v13, "_au"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {v14, v0}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v8

    const/4 v9, 0x1

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;J)V

    .line 57
    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzc(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    goto :goto_1

    :cond_7
    const/4 v15, 0x1

    .line 58
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 59
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v0

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzts:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzad;

    const-string v13, "_au"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {v14, v0}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Landroid/os/Bundle;)V

    const-string v0, "auto"

    move-object v12, v8

    move v9, v15

    move-object v15, v0

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;J)V

    .line 63
    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzc(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    goto :goto_1

    :cond_8
    move v9, v15

    goto :goto_1

    :cond_9
    const/4 v9, 0x1

    .line 64
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzg(Lcom/google/android/gms/measurement/internal/zzh;)Lcom/google/android/gms/measurement/internal/zzg;

    if-nez v7, :cond_a

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    const-string v12, "_f"

    .line 66
    invoke-virtual {v0, v8, v12}, Lcom/google/android/gms/measurement/internal/zzq;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v0

    goto :goto_2

    :cond_a
    if-ne v7, v9, :cond_b

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    const-string v12, "_v"

    .line 68
    invoke-virtual {v0, v8, v12}, Lcom/google/android/gms/measurement/internal/zzq;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v0

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_18

    const-wide/32 v12, 0x36ee80

    .line 69
    div-long v14, v10, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v18, v10

    const-wide/16 v9, 0x1

    add-long/2addr v14, v9

    mul-long/2addr v14, v12

    const-string v0, "_dac"

    const-string v11, "_r"

    const-string v13, "_c"

    if-nez v7, :cond_15

    .line 70
    :try_start_4
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzfh;

    const-string v16, "_fot"

    .line 71
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v20, "auto"

    move-object v12, v7

    move-object v14, v13

    move-object/from16 v13, v16

    move-object v8, v14

    move-wide/from16 v14, v18

    move-object/from16 v16, v17

    move-object/from16 v17, v20

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzb(Lcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 73
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v7

    .line 74
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzafx:Ljava/lang/String;

    .line 75
    invoke-virtual {v7, v12}, Lcom/google/android/gms/measurement/internal/zzn;->zzbg(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 76
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 77
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 78
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzkg()Lcom/google/android/gms/measurement/internal/zzbg;

    move-result-object v7

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 79
    invoke-virtual {v7, v12}, Lcom/google/android/gms/measurement/internal/zzbg;->zzcd(Ljava/lang/String;)V

    .line 80
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 82
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 83
    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 84
    invoke-virtual {v7, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v11, 0x0

    .line 85
    invoke-virtual {v7, v6, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 86
    invoke-virtual {v7, v5, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 87
    invoke-virtual {v7, v4, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 88
    invoke-virtual {v7, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 89
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v8

    .line 90
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzn;->zzbd(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 91
    iget-boolean v8, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagz:Z

    if-eqz v8, :cond_d

    .line 92
    invoke-virtual {v7, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 93
    :cond_d
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_e

    .line 95
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 97
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 98
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_8

    .line 99
    :cond_e
    :try_start_5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v11, 0x0

    :try_start_6
    invoke-virtual {v0, v8, v11}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    const/4 v11, 0x0

    .line 101
    :goto_3
    :try_start_7
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v8

    .line 102
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v8

    const-string v12, "Package info is null, first open report might be inaccurate. appId"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 103
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 104
    invoke-virtual {v8, v12, v13, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_11

    .line 105
    iget-wide v12, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-eqz v8, :cond_11

    .line 106
    iget-wide v12, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v12, v14

    if-eqz v0, :cond_f

    .line 107
    invoke-virtual {v7, v6, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move v15, v11

    goto :goto_5

    :cond_f
    const/4 v15, 0x1

    .line 108
    :goto_5
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfh;

    const-string v13, "_fi"

    if-eqz v15, :cond_10

    move-wide v14, v9

    goto :goto_6

    :cond_10
    const-wide/16 v14, 0x0

    .line 109
    :goto_6
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v0

    move-wide/from16 v14, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzb(Lcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 111
    :cond_11
    :try_start_8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v11}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    :catch_3
    move-exception v0

    .line 113
    :try_start_9
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v6

    .line 114
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v6

    const-string v8, "Application info is null, first open report might be inaccurate. appId"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 115
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 116
    invoke-virtual {v6, v8, v11, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_13

    .line 117
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    and-int/2addr v6, v8

    if-eqz v6, :cond_12

    .line 118
    invoke-virtual {v7, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 119
    :cond_12
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_13

    .line 120
    invoke-virtual {v7, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 121
    :cond_13
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 122
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    .line 124
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    const-string v4, "first_open_count"

    .line 125
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzq;->zzn(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v11, 0x0

    cmp-long v0, v3, v11

    if-ltz v0, :cond_14

    .line 126
    invoke-virtual {v7, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 127
    :cond_14
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzad;

    const-string v13, "_f"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {v14, v7}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;J)V

    .line 128
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzc(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    goto :goto_9

    :cond_15
    move-object v8, v13

    const/4 v3, 0x1

    if-ne v7, v3, :cond_17

    .line 129
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfh;

    const-string v13, "_fvt"

    .line 130
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v3

    move-wide/from16 v14, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzb(Lcom/google/android/gms/measurement/internal/zzfh;Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 132
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 134
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 135
    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 136
    invoke-virtual {v3, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 137
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v4

    .line 138
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzn;->zzbd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 139
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagz:Z

    if-eqz v4, :cond_16

    .line 140
    invoke-virtual {v3, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 141
    :cond_16
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzad;

    const-string v13, "_v"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {v14, v3}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;J)V

    .line 142
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzc(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 143
    :cond_17
    :goto_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_et"

    .line 144
    invoke-virtual {v0, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 145
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzad;

    const-string v13, "_e"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {v14, v0}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;J)V

    .line 146
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzc(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    goto :goto_a

    :cond_18
    move-wide/from16 v18, v10

    .line 147
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzh;->zzagw:Z

    if-eqz v0, :cond_19

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 149
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzad;

    const-string v13, "_cd"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-direct {v14, v0}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzad;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaa;Ljava/lang/String;J)V

    .line 150
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzc(Lcom/google/android/gms/measurement/internal/zzad;Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 151
    :cond_19
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzq;->endTransaction()V

    throw v0
.end method

.method final zzf(Lcom/google/android/gms/measurement/internal/zzl;)V
    .locals 1

    .line 154
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzl;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzco(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzc(Lcom/google/android/gms/measurement/internal/zzl;Lcom/google/android/gms/measurement/internal/zzh;)V

    :cond_0
    return-void
.end method

.method final zzg(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatm:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatm:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzgl()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgl()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method public final zzgm()Lcom/google/android/gms/measurement/internal/zzfk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    return-object v0
.end method

.method public final zzgn()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    return-object v0
.end method

.method public final zzgo()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method

.method public final zzgq()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public final zzgr()Lcom/google/android/gms/measurement/internal/zzk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method final zzh(Lcom/google/android/gms/measurement/internal/zzh;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfe;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzfe;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;Lcom/google/android/gms/measurement/internal/zzh;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 4
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzh;->packageName:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 8
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzjo()Lcom/google/android/gms/measurement/internal/zzfg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatj:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Lcom/google/android/gms/measurement/internal/zzez;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatj:Lcom/google/android/gms/measurement/internal/zzfg;

    return-object v0
.end method

.method public final zzjp()Lcom/google/android/gms/measurement/internal/zzj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzati:Lcom/google/android/gms/measurement/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Lcom/google/android/gms/measurement/internal/zzez;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzati:Lcom/google/android/gms/measurement/internal/zzj;

    return-object v0
.end method

.method public final zzjq()Lcom/google/android/gms/measurement/internal/zzq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatf:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Lcom/google/android/gms/measurement/internal/zzez;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatf:Lcom/google/android/gms/measurement/internal/zzq;

    return-object v0
.end method

.method public final zzlo()Lcom/google/android/gms/measurement/internal/zzat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzate:Lcom/google/android/gms/measurement/internal/zzat;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Lcom/google/android/gms/measurement/internal/zzez;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzate:Lcom/google/android/gms/measurement/internal/zzat;

    return-object v0
.end method

.method final zzlr()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzvz:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzlt()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatr:Z

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    .line 5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgg()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzdr;->zzle()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjg()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Upload data called on the client side before use of service was decided"

    .line 8
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatr:Z

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlw()V

    return-void

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatr:Z

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlw()V

    return-void

    .line 16
    :cond_1
    :try_start_2
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatl:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlv()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatr:Z

    .line 19
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlw()V

    return-void

    .line 20
    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 21
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatu:Ljava/util/List;

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v3, :cond_4

    .line 22
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Uploading requested multiple times"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatr:Z

    .line 25
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlw()V

    return-void

    .line 26
    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlo()Lcom/google/android/gms/measurement/internal/zzat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzat;->zzfb()Z

    move-result v3

    if-nez v3, :cond_5

    .line 27
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 29
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlv()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatr:Z

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlw()V

    return-void

    .line 32
    :cond_5
    :try_start_5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 33
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 34
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->zzhx()J

    move-result-wide v7

    sub-long v7, v3, v7

    const/4 v9, 0x0

    .line 35
    invoke-direct {v1, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfa;->zzd(Ljava/lang/String;J)Z

    .line 36
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v7

    .line 37
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzba;->zzane:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbd;->get()J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-eqz v5, :cond_6

    .line 38
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    .line 39
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v5

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v3, v7

    .line 40
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 41
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzq;->zzid()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-nez v6, :cond_13

    .line 44
    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatw:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_7

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzq;->zzik()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatw:J

    .line 46
    :cond_7
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v6

    .line 47
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzaf;->zzajj:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzn;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)I

    move-result v6

    .line 48
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v7

    .line 49
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzaf;->zzajk:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/zzn;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzq;->zzb(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .line 51
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    .line 52
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 53
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgi;

    .line 54
    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 55
    iget-object v7, v8, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/String;

    goto :goto_1

    :cond_9
    move-object v7, v9

    :goto_1
    if-eqz v7, :cond_b

    move v8, v2

    .line 56
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_b

    .line 57
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzgi;

    .line 58
    iget-object v11, v10, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 59
    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 60
    invoke-interface {v6, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_3

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 61
    :cond_b
    :goto_3
    new-instance v7, Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-direct {v7}, Lcom/google/android/gms/internal/measurement/zzgh;-><init>()V

    .line 62
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/google/android/gms/internal/measurement/zzgi;

    iput-object v8, v7, Lcom/google/android/gms/internal/measurement/zzgh;->zzawy:[Lcom/google/android/gms/internal/measurement/zzgi;

    .line 63
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->zzhz()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 65
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v10

    .line 66
    invoke-virtual {v10, v5}, Lcom/google/android/gms/measurement/internal/zzn;->zzav(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    move v10, v0

    goto :goto_4

    :cond_c
    move v10, v2

    :goto_4
    move v11, v2

    .line 67
    :goto_5
    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgh;->zzawy:[Lcom/google/android/gms/internal/measurement/zzgi;

    array-length v12, v12

    if-ge v11, v12, :cond_e

    .line 68
    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgh;->zzawy:[Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzgi;

    aput-object v13, v12, v11

    .line 69
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgh;->zzawy:[Lcom/google/android/gms/internal/measurement/zzgi;

    aget-object v12, v12, v11

    .line 71
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgq()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v13

    .line 72
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzn;->zzhc()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    .line 73
    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgh;->zzawy:[Lcom/google/android/gms/internal/measurement/zzgi;

    aget-object v12, v12, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxd:Ljava/lang/Long;

    .line 74
    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgh;->zzawy:[Lcom/google/android/gms/internal/measurement/zzgi;

    aget-object v12, v12, v11

    .line 75
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgr()Lcom/google/android/gms/measurement/internal/zzk;

    .line 76
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v13, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxs:Ljava/lang/Boolean;

    if-nez v10, :cond_d

    .line 77
    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgh;->zzawy:[Lcom/google/android/gms/internal/measurement/zzgi;

    aget-object v12, v12, v11

    iput-object v9, v12, Lcom/google/android/gms/internal/measurement/zzgi;->zzaya:Ljava/lang/String;

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 78
    :cond_e
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v6

    const/4 v10, 0x2

    .line 79
    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzap;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfg;->zzb(Lcom/google/android/gms/internal/measurement/zzgh;)Ljava/lang/String;

    move-result-object v9

    .line 81
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(Lcom/google/android/gms/internal/measurement/zzgh;)[B

    move-result-object v14

    .line 82
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzaf;->zzajt:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 83
    :try_start_6
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_10

    move v10, v0

    goto :goto_6

    :cond_10
    move v10, v2

    :goto_6
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 85
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatu:Ljava/util/List;

    if-eqz v10, :cond_11

    .line 86
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v8

    .line 87
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v8

    const-string v10, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    goto :goto_7

    .line 88
    :cond_11
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatu:Ljava/util/List;

    .line 89
    :goto_7
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgp()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v8

    .line 90
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzba;->zzanf:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbd;->set(J)V

    const-string v3, "?"

    .line 91
    iget-object v4, v7, Lcom/google/android/gms/internal/measurement/zzgh;->zzawy:[Lcom/google/android/gms/internal/measurement/zzgi;

    array-length v4, v4

    if-lez v4, :cond_12

    .line 92
    iget-object v3, v7, Lcom/google/android/gms/internal/measurement/zzgh;->zzawy:[Lcom/google/android/gms/internal/measurement/zzgi;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zztt:Ljava/lang/String;

    .line 93
    :cond_12
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v4

    const-string v7, "Uploading data. app, uncompressed size, data"

    array-length v8, v14

    .line 95
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v3, v8, v9}, Lcom/google/android/gms/measurement/internal/zzar;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatq:Z

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlo()Lcom/google/android/gms/measurement/internal/zzat;

    move-result-object v11

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzfc;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzat;->zzaf()V

    .line 99
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    .line 100
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzat;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzax;

    const/4 v15, 0x0

    move-object v10, v4

    move-object v12, v5

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Lcom/google/android/gms/measurement/internal/zzat;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzav;)V

    .line 104
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzbo;->zzd(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    .line 105
    :catch_0
    :try_start_7
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    .line 107
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzap;->zzbv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 108
    invoke-virtual {v0, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 109
    :cond_13
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatw:J

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->zzhx()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzq;->zzah(J)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzbl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 114
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 115
    :cond_14
    :goto_8
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatr:Z

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlw()V

    return-void

    :catchall_0
    move-exception v0

    .line 117
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zzatr:Z

    .line 118
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlw()V

    throw v0
.end method

.method final zzly()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatk:Z

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjj()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlr()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlz()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlx()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatt:Ljava/nio/channels/FileChannel;

    .line 11
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgf()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzja()I

    move-result v1

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzaf()V

    if-le v0, v1, :cond_0

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 18
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_2

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatt:Ljava/nio/channels/FileChannel;

    .line 20
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbt;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 28
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatk:Z

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlv()V

    :cond_3
    return-void
.end method

.method final zzma()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzato:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzato:I

    return-void
.end method

.method final zzmb()Lcom/google/android/gms/measurement/internal/zzbt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzadj:Lcom/google/android/gms/measurement/internal/zzbt;

    return-object v0
.end method

.method final zzo(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfa;->zzlv()V

    return-void
.end method
