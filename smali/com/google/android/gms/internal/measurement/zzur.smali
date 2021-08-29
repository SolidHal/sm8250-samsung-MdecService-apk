.class final Lcom/google/android/gms/internal/measurement/zzur;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzxi;


# instance fields
.field private tag:I

.field private final zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

.field private zzbus:I

.field private zzbut:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzuo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    const-string v0, "input"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzvo;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzuo;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    .line 4
    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zzuo;->zzbuk:Lcom/google/android/gms/internal/measurement/zzur;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzuo;)Lcom/google/android/gms/internal/measurement/zzur;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzuo;->zzbuk:Lcom/google/android/gms/internal/measurement/zzur;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzur;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzur;-><init>(Lcom/google/android/gms/internal/measurement/zzuo;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzyq;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzuz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzyq;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzuz;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzus;->zzbuu:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 44
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzuh()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 46
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzup()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzun()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 48
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzuu()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzut()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 50
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzus()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzur()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    const/4 p1, 0x2

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxf;->zzxn()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzxf;->zzi(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzur;->zzc(Lcom/google/android/gms/internal/measurement/zzxj;Lcom/google/android/gms/internal/measurement/zzuz;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 54
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzui()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzuj()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 56
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 57
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzuk()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 58
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzul()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzuq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 60
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzuo()Lcom/google/android/gms/internal/measurement/zzud;

    move-result-object p1

    return-object p1

    .line 62
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzum()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 6
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzwc;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzwc;

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzuo()Lcom/google/android/gms/internal/measurement/zzud;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzwc;->zzc(Lcom/google/android/gms/internal/measurement/zzud;)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result p1

    .line 11
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq p1, p2, :cond_0

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzun()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 16
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_2

    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 18
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1
.end method

.method private final zzat(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1
.end method

.method private static zzau(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwq()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p0

    throw p0
.end method

.method private static zzav(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwq()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p0

    throw p0
.end method

.method private final zzaw(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwk()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p1

    throw p1
.end method

.method private final zzc(Lcom/google/android/gms/internal/measurement/zzxj;Lcom/google/android/gms/internal/measurement/zzuz;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzxj<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzuz;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    iget v2, v1, Lcom/google/android/gms/internal/measurement/zzuo;->zzbuh:I

    iget v3, v1, Lcom/google/android/gms/internal/measurement/zzuo;->zzbui:I

    if-ge v2, v3, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzaq(I)I

    move-result v0

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzxj;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    iget v3, v2, Lcom/google/android/gms/internal/measurement/zzuo;->zzbuh:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/measurement/zzuo;->zzbuh:I

    .line 6
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzxj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzxi;Lcom/google/android/gms/internal/measurement/zzuz;)V

    .line 7
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/zzxj;->zzu(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzuo;->zzan(I)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    iget p2, p1, Lcom/google/android/gms/internal/measurement/zzuo;->zzbuh:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/measurement/zzuo;->zzbuh:I

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzar(I)V

    return-object v1

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwp()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p1

    throw p1
.end method

.method private final zzd(Lcom/google/android/gms/internal/measurement/zzxj;Lcom/google/android/gms/internal/measurement/zzuz;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzxj<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzuz;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbus:I

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 3
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbus:I

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzxj;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzxj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzxi;Lcom/google/android/gms/internal/measurement/zzuz;)V

    .line 6
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/zzxj;->zzu(Ljava/lang/Object;)V

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbus:I

    return-object v1

    .line 9
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwq()Lcom/google/android/gms/internal/measurement/zzvt;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbus:I

    throw p1
.end method


# virtual methods
.method public final getTag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    return v0
.end method

.method public final readDouble()D
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->readFloat()F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzxj;Lcom/google/android/gms/internal/measurement/zzuz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzxj<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzuz;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzur;->zzc(Lcom/google/android/gms/internal/measurement/zzxj;Lcom/google/android/gms/internal/measurement/zzuz;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzxj;Lcom/google/android/gms/internal/measurement/zzuz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzxj<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzuz;",
            ")V"
        }
    .end annotation

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 20
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzur;->zzc(Lcom/google/android/gms/internal/measurement/zzxj;Lcom/google/android/gms/internal/measurement/zzuz;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 23
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    :cond_2
    :goto_0
    return-void

    .line 24
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1
.end method

.method public final zza(Ljava/util/Map;Lcom/google/android/gms/internal/measurement/zzwm;Lcom/google/android/gms/internal/measurement/zzuz;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzwm<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzuz;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 25
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v1

    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzaq(I)I

    move-result v1

    .line 28
    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzwm;->zzcas:Ljava/lang/Object;

    .line 29
    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/zzwm;->zzbre:Ljava/lang/Object;

    .line 30
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzve()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    .line 31
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_2

    if-eq v4, v0, :cond_1

    .line 32
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzvf()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzvt;

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/measurement/zzvt;-><init>(Ljava/lang/String;)V

    throw v4

    .line 34
    :cond_1
    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/zzwm;->zzcat:Lcom/google/android/gms/internal/measurement/zzyq;

    iget-object v5, p2, Lcom/google/android/gms/internal/measurement/zzwm;->zzbre:Ljava/lang/Object;

    .line 35
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 36
    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/gms/internal/measurement/zzur;->zza(Lcom/google/android/gms/internal/measurement/zzyq;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzuz;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 37
    :cond_2
    iget-object v4, p2, Lcom/google/android/gms/internal/measurement/zzwm;->zzcar:Lcom/google/android/gms/internal/measurement/zzyq;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/android/gms/internal/measurement/zzur;->zza(Lcom/google/android/gms/internal/measurement/zzyq;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzuz;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/zzvu; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzvf()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 39
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzvt;

    invoke-direct {p1, v6}, Lcom/google/android/gms/internal/measurement/zzvt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_4
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzar(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 42
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzar(I)V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzxj;Lcom/google/android/gms/internal/measurement/zzuz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzxj<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzuz;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzur;->zzd(Lcom/google/android/gms/internal/measurement/zzxj;Lcom/google/android/gms/internal/measurement/zzuz;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzxj;Lcom/google/android/gms/internal/measurement/zzuz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzxj<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzuz;",
            ")V"
        }
    .end annotation

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 4
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzur;->zzd(Lcom/google/android/gms/internal/measurement/zzxj;Lcom/google/android/gms/internal/measurement/zzuz;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 7
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    :cond_2
    :goto_0
    return-void

    .line 8
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1
.end method

.method public final zzh(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzuw;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzuw;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzur;->zzau(I)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, p1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->readDouble()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzuw;->zzd(D)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzuw;->zzd(D)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzau(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void
.end method

.method public final zzi(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvj;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvj;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvj;->zzc(F)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result p1

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq p1, v1, :cond_0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzur;->zzav(I)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int v3, v1, p1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvj;->zzc(F)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 15
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_6

    .line 20
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 21
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 22
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzav(I)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, v0

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzj(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzwh;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzwh;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuh()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzwh;->zzbg(J)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuh()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzwh;->zzbg(J)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuh()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuh()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzwh;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzwh;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzui()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzwh;->zzbg(J)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzui()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzwh;->zzbg(J)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzui()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzui()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvn;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvn;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuj()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->zzbm(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuj()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->zzbm(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void
.end method

.method public final zzm(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzwh;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzwh;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzur;->zzau(I)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, p1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuk()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzwh;->zzbg(J)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzwh;->zzbg(J)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzau(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuk()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuk()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvn;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvn;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzul()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->zzbm(I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result p1

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq p1, v1, :cond_0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzur;->zzav(I)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int v3, v1, p1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzul()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->zzbm(I)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 15
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzul()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_6

    .line 20
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 21
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 22
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzav(I)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, v0

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzul()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzub;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzub;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzum()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzub;->addBoolean(Z)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzum()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzub;->addBoolean(Z)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzum()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzum()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzq(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzud;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzur;->zzuo()Lcom/google/android/gms/internal/measurement/zzud;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1
.end method

.method public final zzr(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvn;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvn;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->zzbm(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->zzbm(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void
.end method

.method public final zzs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvn;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvn;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->zzbm(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->zzbm(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void
.end method

.method public final zzt(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvn;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvn;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzur()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->zzbm(I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result p1

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq p1, v1, :cond_0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzur;->zzav(I)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int v3, v1, p1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzur()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->zzbm(I)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 15
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzur()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_6

    .line 20
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 21
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 22
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzav(I)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, v0

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzur()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzu(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzwh;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzwh;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzur;->zzau(I)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, p1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzus()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzwh;->zzbg(J)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzus()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzwh;->zzbg(J)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzau(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzus()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzus()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void
.end method

.method public final zzuh()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuh()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzui()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzui()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzuj()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuj()I

    move-result v0

    return v0
.end method

.method public final zzuk()J
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuk()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzul()I
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzul()I

    move-result v0

    return v0
.end method

.method public final zzum()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzum()Z

    move-result v0

    return v0
.end method

.method public final zzun()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzun()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzuo()Lcom/google/android/gms/internal/measurement/zzud;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuo()Lcom/google/android/gms/internal/measurement/zzud;

    move-result-object v0

    return-object v0
.end method

.method public final zzup()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    return v0
.end method

.method public final zzuq()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuq()I

    move-result v0

    return v0
.end method

.method public final zzur()I
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzur()I

    move-result v0

    return v0
.end method

.method public final zzus()J
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzus()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzut()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzut()I

    move-result v0

    return v0
.end method

.method public final zzuu()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzur;->zzat(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuu()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzv(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvn;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvn;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzut()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->zzbm(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzut()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvn;->zzbm(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzut()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzut()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void
.end method

.method public final zzve()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    if-eqz v0, :cond_0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    .line 5
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbus:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzvf()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbus:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzao(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzw(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzwh;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzwh;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuu()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzwh;->zzbg(J)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuu()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzwh;->zzbg(J)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzup()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuu()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzux()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzur;->zzaw(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvt;->zzwo()Lcom/google/android/gms/internal/measurement/zzvu;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuu()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzuw()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbur:Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuo;->zzug()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzbut:I

    return-void
.end method
