.class public final enum Lc/b/a/k/b/l;
.super Ljava/lang/Enum;
.source "SymbolShapeHint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/b/a/k/b/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lc/b/a/k/b/l;

.field public static final enum c:Lc/b/a/k/b/l;

.field public static final enum d:Lc/b/a/k/b/l;

.field private static final synthetic e:[Lc/b/a/k/b/l;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lc/b/a/k/b/l;

    const-string v1, "FORCE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/b/a/k/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/k/b/l;->b:Lc/b/a/k/b/l;

    .line 2
    new-instance v0, Lc/b/a/k/b/l;

    const-string v1, "FORCE_SQUARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lc/b/a/k/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/k/b/l;->c:Lc/b/a/k/b/l;

    .line 3
    new-instance v0, Lc/b/a/k/b/l;

    const-string v1, "FORCE_RECTANGLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lc/b/a/k/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/k/b/l;->d:Lc/b/a/k/b/l;

    const/4 v1, 0x3

    new-array v1, v1, [Lc/b/a/k/b/l;

    .line 4
    sget-object v5, Lc/b/a/k/b/l;->b:Lc/b/a/k/b/l;

    aput-object v5, v1, v2

    sget-object v2, Lc/b/a/k/b/l;->c:Lc/b/a/k/b/l;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lc/b/a/k/b/l;->e:[Lc/b/a/k/b/l;

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

.method public static valueOf(Ljava/lang/String;)Lc/b/a/k/b/l;
    .locals 1

    .line 1
    const-class v0, Lc/b/a/k/b/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/b/a/k/b/l;

    return-object p0
.end method

.method public static values()[Lc/b/a/k/b/l;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/k/b/l;->e:[Lc/b/a/k/b/l;

    invoke-virtual {v0}, [Lc/b/a/k/b/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/b/a/k/b/l;

    return-object v0
.end method
