.class final Lcom/google/android/gms/measurement/internal/zzdm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final synthetic zzarc:Lcom/google/android/gms/measurement/internal/zzcs;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzcs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzcs;Lcom/google/android/gms/measurement/internal/zzct;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzdm;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjl()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "onActivityCreated"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 4
    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_6

    const-string v2, "auto"

    if-nez p2, :cond_1

    .line 5
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgm()Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzd(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gs"

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 7
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    const-string v5, "_cmp"

    invoke-virtual {v4, v0, v5, v3}, Lcom/google/android/gms/measurement/internal/zzcs;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const-string v0, "referrer"

    .line 8
    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "gclid"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    const-string v1, "utm_campaign"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_source"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_medium"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_term"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "utm_content"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Activity created with data \'referrer\' param without gclid and at least one utm field"

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->zzbx(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjk()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v4, "Activity created with referrer"

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    const-string v4, "_ldl"

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/google/android/gms/measurement/internal/zzcs;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgo()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzap;->zzjd()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v1

    const-string v2, "Throwable caught in onActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgh()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzdo;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgh()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzdo;->onActivityDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgh()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzdo;->onActivityPaused(Landroid/app/Activity;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgj()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzeu;-><init>(Lcom/google/android/gms/measurement/internal/zzeq;J)V

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgh()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzdo;->onActivityResumed(Landroid/app/Activity;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgj()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzgn()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzet;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzet;-><init>(Lcom/google/android/gms/measurement/internal/zzeq;J)V

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbo;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzarc:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzgh()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzdo;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
