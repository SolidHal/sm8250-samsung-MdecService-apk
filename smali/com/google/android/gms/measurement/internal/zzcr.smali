.class public final Lcom/google/android/gms/measurement/internal/zzcr;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field zzadv:Z

.field zzadx:Ljava/lang/String;

.field zzapm:Ljava/lang/String;

.field zzapn:Ljava/lang/String;

.field zzaqg:Ljava/lang/Boolean;

.field final zzri:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzak;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzadv:Z

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzri:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 7
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzak;->zzadx:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzadx:Ljava/lang/String;

    .line 8
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzak;->origin:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzapm:Ljava/lang/String;

    .line 9
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzak;->zzadw:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzapn:Ljava/lang/String;

    .line 10
    iget-boolean p1, p2, Lcom/google/android/gms/measurement/internal/zzak;->zzadv:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzadv:Z

    .line 11
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzak;->zzady:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string p2, "dataCollectionDefaultEnabled"

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcr;->zzaqg:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
