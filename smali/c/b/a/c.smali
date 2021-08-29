.class public final enum Lc/b/a/c;
.super Ljava/lang/Enum;
.source "EncodeHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/b/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lc/b/a/c;

.field public static final enum c:Lc/b/a/c;

.field public static final enum d:Lc/b/a/c;

.field public static final enum e:Lc/b/a/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum f:Lc/b/a/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum g:Lc/b/a/c;

.field public static final enum h:Lc/b/a/c;

.field public static final enum i:Lc/b/a/c;

.field public static final enum j:Lc/b/a/c;

.field public static final enum k:Lc/b/a/c;

.field public static final enum l:Lc/b/a/c;

.field private static final synthetic m:[Lc/b/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lc/b/a/c;

    const-string v1, "ERROR_CORRECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/c;->b:Lc/b/a/c;

    .line 2
    new-instance v0, Lc/b/a/c;

    const-string v1, "CHARACTER_SET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lc/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/c;->c:Lc/b/a/c;

    .line 3
    new-instance v0, Lc/b/a/c;

    const-string v1, "DATA_MATRIX_SHAPE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lc/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/c;->d:Lc/b/a/c;

    .line 4
    new-instance v0, Lc/b/a/c;

    const-string v1, "MIN_SIZE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lc/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/c;->e:Lc/b/a/c;

    .line 5
    new-instance v0, Lc/b/a/c;

    const-string v1, "MAX_SIZE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lc/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/c;->f:Lc/b/a/c;

    .line 6
    new-instance v0, Lc/b/a/c;

    const-string v1, "MARGIN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lc/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/c;->g:Lc/b/a/c;

    .line 7
    new-instance v0, Lc/b/a/c;

    const-string v1, "PDF417_COMPACT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lc/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/c;->h:Lc/b/a/c;

    .line 8
    new-instance v0, Lc/b/a/c;

    const-string v1, "PDF417_COMPACTION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lc/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/c;->i:Lc/b/a/c;

    .line 9
    new-instance v0, Lc/b/a/c;

    const-string v1, "PDF417_DIMENSIONS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lc/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/c;->j:Lc/b/a/c;

    .line 10
    new-instance v0, Lc/b/a/c;

    const-string v1, "AZTEC_LAYERS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lc/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/c;->k:Lc/b/a/c;

    .line 11
    new-instance v0, Lc/b/a/c;

    const-string v1, "QR_VERSION"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lc/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/c;->l:Lc/b/a/c;

    const/16 v1, 0xb

    new-array v1, v1, [Lc/b/a/c;

    .line 12
    sget-object v13, Lc/b/a/c;->b:Lc/b/a/c;

    aput-object v13, v1, v2

    sget-object v2, Lc/b/a/c;->c:Lc/b/a/c;

    aput-object v2, v1, v3

    sget-object v2, Lc/b/a/c;->d:Lc/b/a/c;

    aput-object v2, v1, v4

    sget-object v2, Lc/b/a/c;->e:Lc/b/a/c;

    aput-object v2, v1, v5

    sget-object v2, Lc/b/a/c;->f:Lc/b/a/c;

    aput-object v2, v1, v6

    sget-object v2, Lc/b/a/c;->g:Lc/b/a/c;

    aput-object v2, v1, v7

    sget-object v2, Lc/b/a/c;->h:Lc/b/a/c;

    aput-object v2, v1, v8

    sget-object v2, Lc/b/a/c;->i:Lc/b/a/c;

    aput-object v2, v1, v9

    sget-object v2, Lc/b/a/c;->j:Lc/b/a/c;

    aput-object v2, v1, v10

    sget-object v2, Lc/b/a/c;->k:Lc/b/a/c;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lc/b/a/c;->m:[Lc/b/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/b/a/c;
    .locals 1

    .line 1
    const-class v0, Lc/b/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/b/a/c;

    return-object p0
.end method

.method public static values()[Lc/b/a/c;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/c;->m:[Lc/b/a/c;

    invoke-virtual {v0}, [Lc/b/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/b/a/c;

    return-object v0
.end method
