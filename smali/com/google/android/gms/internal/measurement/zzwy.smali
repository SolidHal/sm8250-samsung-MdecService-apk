.class final Lcom/google/android/gms/internal/measurement/zzwy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzxj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzxj<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzcbd:Lcom/google/android/gms/internal/measurement/zzwt;

.field private final zzcbe:Z

.field private final zzcbn:Lcom/google/android/gms/internal/measurement/zzyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzyb<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzcbo:Lcom/google/android/gms/internal/measurement/zzva;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzva<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzyb;Lcom/google/android/gms/internal/measurement/zzva;Lcom/google/android/gms/internal/measurement/zzwt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzyb<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzva<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzwt;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbn:Lcom/google/android/gms/internal/measurement/zzyb;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzva;->zze(Lcom/google/android/gms/internal/measurement/zzwt;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbe:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbo:Lcom/google/android/gms/internal/measurement/zzva;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbd:Lcom/google/android/gms/internal/measurement/zzwt;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzyb;Lcom/google/android/gms/internal/measurement/zzva;Lcom/google/android/gms/internal/measurement/zzwt;)Lcom/google/android/gms/internal/measurement/zzwy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzyb<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzva<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzwt;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzwy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzwy;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzwy;-><init>(Lcom/google/android/gms/internal/measurement/zzyb;Lcom/google/android/gms/internal/measurement/zzva;Lcom/google/android/gms/internal/measurement/zzwt;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbn:Lcom/google/android/gms/internal/measurement/zzyb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyb;->zzah(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbn:Lcom/google/android/gms/internal/measurement/zzyb;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/zzyb;->zzah(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbe:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbo:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzva;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvd;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbo:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzva;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvd;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzvd;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbn:Lcom/google/android/gms/internal/measurement/zzyb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyb;->zzah(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbe:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbo:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzva;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvd;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzvd;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbd:Lcom/google/android/gms/internal/measurement/zzwt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzwt;->zzwe()Lcom/google/android/gms/internal/measurement/zzwu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzwu;->zzwi()Lcom/google/android/gms/internal/measurement/zzwt;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzxi;Lcom/google/android/gms/internal/measurement/zzuz;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzxi;",
            "Lcom/google/android/gms/internal/measurement/zzuz;",
            ")V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbn:Lcom/google/android/gms/internal/measurement/zzyb;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbo:Lcom/google/android/gms/internal/measurement/zzva;

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyb;->zzai(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 17
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzva;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvd;

    move-result-object v3

    .line 18
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->zzve()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    .line 19
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzyb;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 20
    :cond_1
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->getTag()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_4

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 21
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbd:Lcom/google/android/gms/internal/measurement/zzwt;

    ushr-int/lit8 v4, v4, 0x3

    .line 22
    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/measurement/zzva;->zza(Lcom/google/android/gms/internal/measurement/zzuz;Lcom/google/android/gms/internal/measurement/zzwt;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 23
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/measurement/zzva;->zza(Lcom/google/android/gms/internal/measurement/zzxi;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzuz;Lcom/google/android/gms/internal/measurement/zzvd;)V

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/measurement/zzyb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzxi;)Z

    move-result v4

    goto :goto_2

    .line 25
    :cond_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->zzvf()Z

    move-result v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    .line 26
    :cond_5
    :goto_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->zzve()I

    move-result v8

    if-eq v8, v5, :cond_9

    .line 27
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->getTag()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    .line 28
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->zzup()I

    move-result v4

    .line 29
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbd:Lcom/google/android/gms/internal/measurement/zzwt;

    .line 30
    invoke-virtual {v1, p3, v6, v4}, Lcom/google/android/gms/internal/measurement/zzva;->zza(Lcom/google/android/gms/internal/measurement/zzuz;Lcom/google/android/gms/internal/measurement/zzwt;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-eqz v6, :cond_7

    .line 31
    invoke-virtual {v1, p2, v6, p3, v3}, Lcom/google/android/gms/internal/measurement/zzva;->zza(Lcom/google/android/gms/internal/measurement/zzxi;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzuz;Lcom/google/android/gms/internal/measurement/zzvd;)V

    goto :goto_0

    .line 32
    :cond_7
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->zzuo()Lcom/google/android/gms/internal/measurement/zzud;

    move-result-object v7

    goto :goto_0

    .line 33
    :cond_8
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->zzvf()Z

    move-result v8

    if-nez v8, :cond_5

    .line 34
    :cond_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzxi;->getTag()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_c

    if-eqz v7, :cond_b

    if-eqz v6, :cond_a

    .line 35
    invoke-virtual {v1, v7, v6, p3, v3}, Lcom/google/android/gms/internal/measurement/zzva;->zza(Lcom/google/android/gms/internal/measurement/zzud;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzuz;Lcom/google/android/gms/internal/measurement/zzvd;)V

    goto :goto_1

    .line 36
    :cond_a
    invoke-virtual {v0, v2, v4, v7}, Lcom/google/android/gms/internal/measurement/zzyb;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzud;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_0

    .line 37
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzyb;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 38
    :cond_c
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwn()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p2

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    .line 39
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzyb;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyw;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzyw;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbo:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzva;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvd;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzvd;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzvf;

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzvf;->zzvx()Lcom/google/android/gms/internal/measurement/zzyv;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzyv;->zzcet:Lcom/google/android/gms/internal/measurement/zzyv;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzvf;->zzvy()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzvf;->zzvz()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/zzvy;

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzvf;->zzc()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzvy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzwu()Lcom/google/android/gms/internal/measurement/zzvw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzwa;->zztt()Lcom/google/android/gms/internal/measurement/zzud;

    move-result-object v1

    .line 10
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/measurement/zzyw;->zza(ILjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzvf;->zzc()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/measurement/zzyw;->zza(ILjava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbn:Lcom/google/android/gms/internal/measurement/zzyb;

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyb;->zzah(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyb;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyw;)V

    return-void
.end method

.method public final zzae(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbn:Lcom/google/android/gms/internal/measurement/zzyb;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyb;->zzah(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzyb;->zzaj(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbe:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbo:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzva;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzvd;->zzvv()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzaf(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbo:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzva;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvd;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzvd;->isInitialized()Z

    move-result p1

    return p1
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbn:Lcom/google/android/gms/internal/measurement/zzyb;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzxl;->zza(Lcom/google/android/gms/internal/measurement/zzyb;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbe:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbo:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzxl;->zza(Lcom/google/android/gms/internal/measurement/zzva;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzu(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbn:Lcom/google/android/gms/internal/measurement/zzyb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyb;->zzu(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbo:Lcom/google/android/gms/internal/measurement/zzva;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzva;->zzu(Ljava/lang/Object;)V

    return-void
.end method
