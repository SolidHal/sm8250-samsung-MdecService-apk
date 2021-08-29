.class public final Lcom/google/android/gms/measurement/internal/zzat;
.super Lcom/google/android/gms/measurement/internal/zzez;


# instance fields
.field private final zzamq:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfa;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzez;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-direct {p1}, Lcom/google/android/gms/measurement/internal/zzfl;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzamq:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzat;Ljava/net/HttpURLConnection;)[B
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzat;->zzb(Ljava/net/HttpURLConnection;)[B

    move-result-object p0

    return-object p0
.end method

.method private static zzb(Ljava/net/HttpURLConnection;)[B
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 p0, 0x400

    new-array p0, p0, [B

    .line 3
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, p0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    throw p0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaf()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzaf()V

    return-void
.end method

.method protected final zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 8
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 9
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zzamq:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 11
    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 12
    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 13
    :cond_0
    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    const v1, 0xea60

    .line 15
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v1, 0xee48

    .line 16
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 17
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object p1

    .line 19
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to obtain HTTP connection"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzco;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzfb()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzez;->zzcl()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzat;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
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

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzjo()Lcom/google/android/gms/measurement/internal/zzfg;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzey;->zzjo()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjp()Lcom/google/android/gms/measurement/internal/zzj;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzey;->zzjp()Lcom/google/android/gms/measurement/internal/zzj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjq()Lcom/google/android/gms/measurement/internal/zzq;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzey;->zzjq()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method
