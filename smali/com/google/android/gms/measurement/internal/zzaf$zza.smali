.class public final Lcom/google/android/gms/measurement/internal/zzaf$zza;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzaan:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private zzall:Lcom/google/android/gms/internal/measurement/zzsl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzsl<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final zzalm:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private volatile zzaln:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzoj:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzoj:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaan:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzalm:Ljava/lang/Object;

    return-void
.end method

.method static zza(Ljava/lang/String;DD)Lcom/google/android/gms/measurement/internal/zzaf$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lcom/google/android/gms/measurement/internal/zzaf$zza<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    const-wide/high16 p2, -0x3ff8000000000000L    # -3.0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p0, p2, p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzaiv:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method static zzb(Ljava/lang/String;JJ)Lcom/google/android/gms/measurement/internal/zzaf$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lcom/google/android/gms/measurement/internal/zzaf$zza<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzais:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzb(Ljava/lang/String;ZZ)Lcom/google/android/gms/measurement/internal/zzaf$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/measurement/internal/zzaf$zza<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzait:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzc(Ljava/lang/String;II)Lcom/google/android/gms/measurement/internal/zzaf$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/measurement/internal/zzaf$zza<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzair:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/measurement/internal/zzaf$zza<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzaf$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzaiu:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static zzix()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzk;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzaiq:Lcom/google/android/gms/measurement/internal/zzk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzait:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    .line 4
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzall:Lcom/google/android/gms/internal/measurement/zzsl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzsl;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaln:Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzaiu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    .line 6
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzall:Lcom/google/android/gms/internal/measurement/zzsl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzsl;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaln:Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_1
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzais:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    .line 8
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzall:Lcom/google/android/gms/internal/measurement/zzsl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzsl;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaln:Ljava/lang/Object;

    goto :goto_2

    .line 9
    :cond_2
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzair:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    .line 10
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzall:Lcom/google/android/gms/internal/measurement/zzsl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzsl;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaln:Ljava/lang/Object;

    goto :goto_3

    .line 11
    :cond_3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzaiv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    .line 12
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzall:Lcom/google/android/gms/internal/measurement/zzsl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzsl;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaln:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 13
    :try_start_2
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/Exception;)V

    .line 14
    :cond_4
    monitor-exit v0

    return-void

    .line 15
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to refresh flag cache on main thread or on package side."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic zziy()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzq()V

    return-void
.end method

.method private static zzq()V
    .locals 7

    .line 1
    const-class v0, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzait:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    .line 3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zziw()Lcom/google/android/gms/internal/measurement/zzsv;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzoj:Ljava/lang/String;

    .line 4
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzaf;->zzaiq:Lcom/google/android/gms/measurement/internal/zzk;

    .line 5
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaan:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 7
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzsv;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzsl;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzall:Lcom/google/android/gms/internal/measurement/zzsl;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzaiu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    .line 9
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zziw()Lcom/google/android/gms/internal/measurement/zzsv;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzoj:Ljava/lang/String;

    .line 10
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzaf;->zzaiq:Lcom/google/android/gms/measurement/internal/zzk;

    .line 11
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaan:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 12
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzsv;->zzx(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsl;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzall:Lcom/google/android/gms/internal/measurement/zzsl;

    goto :goto_1

    .line 13
    :cond_1
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzais:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    .line 14
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zziw()Lcom/google/android/gms/internal/measurement/zzsv;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzoj:Ljava/lang/String;

    .line 15
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzaf;->zzaiq:Lcom/google/android/gms/measurement/internal/zzk;

    .line 16
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaan:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    .line 17
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 18
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzsv;->zze(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzsl;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzall:Lcom/google/android/gms/internal/measurement/zzsl;

    goto :goto_2

    .line 19
    :cond_2
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzair:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    .line 20
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zziw()Lcom/google/android/gms/internal/measurement/zzsv;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzoj:Ljava/lang/String;

    .line 21
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzaf;->zzaiq:Lcom/google/android/gms/measurement/internal/zzk;

    .line 22
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaan:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 24
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzsv;->zzd(Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzsl;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzall:Lcom/google/android/gms/internal/measurement/zzsl;

    goto :goto_3

    .line 25
    :cond_3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzaiv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;

    .line 26
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zziw()Lcom/google/android/gms/internal/measurement/zzsv;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzoj:Ljava/lang/String;

    .line 27
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzaf;->zzaiq:Lcom/google/android/gms/measurement/internal/zzk;

    .line 28
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaan:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    .line 29
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 30
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzsv;->zzb(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzsl;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzall:Lcom/google/android/gms/internal/measurement/zzsl;

    goto :goto_4

    .line 31
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzaiq:Lcom/google/android/gms/measurement/internal/zzk;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaan:Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzk;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaln:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaan:Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaln:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_2
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzix()V

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzall:Lcom/google/android/gms/internal/measurement/zzsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzsl;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/Exception;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzall:Lcom/google/android/gms/internal/measurement/zzsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzsl;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    .line 9
    :cond_0
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzaf;->zzaiq:Lcom/google/android/gms/measurement/internal/zzk;

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaan:Ljava/lang/Object;

    return-object p1

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzk;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaln:Ljava/lang/Object;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaan:Ljava/lang/Object;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzaln:Ljava/lang/Object;

    return-object p1

    .line 13
    :cond_3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzix()V

    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzall:Lcom/google/android/gms/internal/measurement/zzsl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzsl;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Ljava/lang/Exception;)V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzall:Lcom/google/android/gms/internal/measurement/zzsl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzsl;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf$zza;->zzoj:Ljava/lang/String;

    return-object v0
.end method
