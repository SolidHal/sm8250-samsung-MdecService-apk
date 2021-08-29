.class public Lcom/google/android/gms/internal/measurement/zzvm$zza;
.super Lcom/google/android/gms/internal/measurement/zztx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzvm<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzvm$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zztx<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final zzbyp:Lcom/google/android/gms/internal/measurement/zzvm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private zzbyq:Lcom/google/android/gms/internal/measurement/zzvm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private zzbyr:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/zzvm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zztx;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyp:Lcom/google/android/gms/internal/measurement/zzvm;

    .line 3
    sget v0, Lcom/google/android/gms/internal/measurement/zzvm$zze;->zzbyw:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzvm;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvm;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyq:Lcom/google/android/gms/internal/measurement/zzvm;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyr:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzvm;Lcom/google/android/gms/internal/measurement/zzvm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxf;->zzxn()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzxf;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzxj;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyp:Lcom/google/android/gms/internal/measurement/zzvm;

    .line 2
    sget v1, Lcom/google/android/gms/internal/measurement/zzvm$zze;->zzbyx:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzvm;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm$zza;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzwi()Lcom/google/android/gms/internal/measurement/zzwt;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzvm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zza(Lcom/google/android/gms/internal/measurement/zzvm;)Lcom/google/android/gms/internal/measurement/zzvm$zza;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyq:Lcom/google/android/gms/internal/measurement/zzvm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzvm;->zza(Lcom/google/android/gms/internal/measurement/zzvm;Z)Z

    move-result v0

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/measurement/zztw;)Lcom/google/android/gms/internal/measurement/zztx;
    .locals 0

    .line 10
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvm;

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zza(Lcom/google/android/gms/internal/measurement/zzvm;)Lcom/google/android/gms/internal/measurement/zzvm$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzvm;)Lcom/google/android/gms/internal/measurement/zzvm$zza;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyr:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyq:Lcom/google/android/gms/internal/measurement/zzvm;

    sget v1, Lcom/google/android/gms/internal/measurement/zzvm$zze;->zzbyw:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzvm;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyq:Lcom/google/android/gms/internal/measurement/zzvm;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zza(Lcom/google/android/gms/internal/measurement/zzvm;Lcom/google/android/gms/internal/measurement/zzvm;)V

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyq:Lcom/google/android/gms/internal/measurement/zzvm;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyr:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyq:Lcom/google/android/gms/internal/measurement/zzvm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zza(Lcom/google/android/gms/internal/measurement/zzvm;Lcom/google/android/gms/internal/measurement/zzvm;)V

    return-object p0
.end method

.method public final synthetic zztv()Lcom/google/android/gms/internal/measurement/zztx;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm$zza;

    return-object v0
.end method

.method public final synthetic zzwf()Lcom/google/android/gms/internal/measurement/zzwt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyp:Lcom/google/android/gms/internal/measurement/zzvm;

    return-object v0
.end method

.method public zzwg()Lcom/google/android/gms/internal/measurement/zzvm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyr:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyq:Lcom/google/android/gms/internal/measurement/zzvm;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyq:Lcom/google/android/gms/internal/measurement/zzvm;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxf;->zzxn()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzxf;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzxj;->zzu(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyr:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzbyq:Lcom/google/android/gms/internal/measurement/zzvm;

    return-object v0
.end method

.method public final zzwh()Lcom/google/android/gms/internal/measurement/zzvm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzwi()Lcom/google/android/gms/internal/measurement/zzwt;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm;

    .line 2
    sget v1, Lcom/google/android/gms/internal/measurement/zzvm$zze;->zzbyt:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzvm;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxf;->zzxn()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzxf;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzxj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzxj;->zzaf(Ljava/lang/Object;)Z

    move-result v3

    .line 6
    sget v1, Lcom/google/android/gms/internal/measurement/zzvm$zze;->zzbyu:I

    if-eqz v3, :cond_2

    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 7
    :goto_0
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzvm;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v3, :cond_3

    return-object v0

    .line 8
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzya;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzya;-><init>(Lcom/google/android/gms/internal/measurement/zzwt;)V

    .line 9
    throw v1
.end method

.method public synthetic zzwi()Lcom/google/android/gms/internal/measurement/zzwt;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzwg()Lcom/google/android/gms/internal/measurement/zzvm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzwj()Lcom/google/android/gms/internal/measurement/zzwt;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvm$zza;->zzwh()Lcom/google/android/gms/internal/measurement/zzvm;

    move-result-object v0

    return-object v0
.end method
