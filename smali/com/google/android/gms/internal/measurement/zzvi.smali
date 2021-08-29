.class final enum Lcom/google/android/gms/internal/measurement/zzvi;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzvi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzbyc:Lcom/google/android/gms/internal/measurement/zzvi;

.field public static final enum zzbyd:Lcom/google/android/gms/internal/measurement/zzvi;

.field public static final enum zzbye:Lcom/google/android/gms/internal/measurement/zzvi;

.field public static final enum zzbyf:Lcom/google/android/gms/internal/measurement/zzvi;

.field private static final synthetic zzbyh:[Lcom/google/android/gms/internal/measurement/zzvi;


# instance fields
.field private final zzbyg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvi;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzvi;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvi;->zzbyc:Lcom/google/android/gms/internal/measurement/zzvi;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvi;

    const-string v1, "VECTOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/measurement/zzvi;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvi;->zzbyd:Lcom/google/android/gms/internal/measurement/zzvi;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvi;

    const-string v1, "PACKED_VECTOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/gms/internal/measurement/zzvi;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvi;->zzbye:Lcom/google/android/gms/internal/measurement/zzvi;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvi;

    const-string v1, "MAP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/measurement/zzvi;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvi;->zzbyf:Lcom/google/android/gms/internal/measurement/zzvi;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzvi;

    .line 5
    sget-object v6, Lcom/google/android/gms/internal/measurement/zzvi;->zzbyc:Lcom/google/android/gms/internal/measurement/zzvi;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzvi;->zzbyd:Lcom/google/android/gms/internal/measurement/zzvi;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzvi;->zzbye:Lcom/google/android/gms/internal/measurement/zzvi;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzvi;->zzbyh:[Lcom/google/android/gms/internal/measurement/zzvi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcom/google/android/gms/internal/measurement/zzvi;->zzbyg:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzvi;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvi;->zzbyh:[Lcom/google/android/gms/internal/measurement/zzvi;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzvi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzvi;

    return-object v0
.end method
