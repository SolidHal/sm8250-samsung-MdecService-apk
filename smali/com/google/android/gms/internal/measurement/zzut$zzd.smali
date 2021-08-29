.class final Lcom/google/android/gms/internal/measurement/zzut$zzd;
.super Lcom/google/android/gms/internal/measurement/zzut;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzd"
.end annotation


# instance fields
.field private final zzbuy:I

.field private final zzbuz:Ljava/nio/ByteBuffer;

.field private final zzbva:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzut;-><init>(Lcom/google/android/gms/internal/measurement/zzuu;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbuz:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbuy:I

    return-void
.end method

.method private final zzfy(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzyj;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbuz:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final write([BII)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zza(IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzc(II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzav(J)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzud;)V
    .locals 1

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzc(II)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzud;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzwt;)V
    .locals 1

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzc(II)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzb(Lcom/google/android/gms/internal/measurement/zzwt;)V

    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/measurement/zzwt;Lcom/google/android/gms/internal/measurement/zzxj;)V
    .locals 1

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzc(II)V

    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzwt;Lcom/google/android/gms/internal/measurement/zzxj;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzud;)V
    .locals 1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzud;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzay(I)V

    .line 16
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzud;->zza(Lcom/google/android/gms/internal/measurement/zzuc;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzwt;Lcom/google/android/gms/internal/measurement/zzxj;)V
    .locals 3

    .line 9
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zztw;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zztw;->zztu()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 11
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zzxj;->zzae(Ljava/lang/Object;)I

    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zztw;->zzah(I)V

    .line 13
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzay(I)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut;->zzbuw:Lcom/google/android/gms/internal/measurement/zzuv;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/measurement/zzxj;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyw;)V

    return-void
.end method

.method public final zza([BII)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->write([BII)V

    return-void
.end method

.method public final zzav(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzax(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzay(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzav(J)V

    return-void
.end method

.method public final zzax(J)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzay(I)V
    .locals 2

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzud;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzc(II)V

    const/4 v2, 0x2

    .line 10
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zze(II)V

    .line 11
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zza(ILcom/google/android/gms/internal/measurement/zzud;)V

    const/4 p1, 0x4

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzc(II)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzwt;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzc(II)V

    const/4 v2, 0x2

    .line 6
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zze(II)V

    .line 7
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zza(ILcom/google/android/gms/internal/measurement/zzwt;)V

    const/4 p1, 0x4

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzc(II)V

    return-void
.end method

.method public final zzb(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzc(II)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzfw(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzc(II)V

    int-to-byte p1, p2

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzc(B)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzwt;)V
    .locals 1

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzwt;->zzvu()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzay(I)V

    .line 14
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzwt;->zzb(Lcom/google/android/gms/internal/measurement/zzut;)V

    return-void
.end method

.method public final zzba(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzc(B)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzc(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzay(I)V

    return-void
.end method

.method public final zzc(IJ)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzc(II)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzax(J)V

    return-void
.end method

.method public final zzd(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzc(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzax(I)V

    return-void
.end method

.method public final zze(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzc(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzay(I)V

    return-void
.end method

.method public final zze([BII)V
    .locals 0

    .line 3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzay(I)V

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->write([BII)V

    return-void
.end method

.method public final zzfw(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzut;->zzbd(I)I

    move-result v1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzut;->zzbd(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzfy(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, v2, v1

    .line 10
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzay(I)V

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyj;->zza(Ljava/lang/CharSequence;)I

    move-result v1

    .line 13
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzay(I)V

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzfy(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzyn; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzut$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzut$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzut;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzyn;)V

    return-void
.end method

.method public final zzg(II)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzc(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzba(I)V

    return-void
.end method

.method public final zzvg()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzut$zzd;->zzbva:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method
