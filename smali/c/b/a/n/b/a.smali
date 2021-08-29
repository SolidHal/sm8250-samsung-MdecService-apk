.class public final enum Lc/b/a/n/b/a;
.super Ljava/lang/Enum;
.source "ErrorCorrectionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/b/a/n/b/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lc/b/a/n/b/a;

.field public static final enum d:Lc/b/a/n/b/a;

.field public static final enum e:Lc/b/a/n/b/a;

.field public static final enum f:Lc/b/a/n/b/a;

.field private static final synthetic g:[Lc/b/a/n/b/a;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lc/b/a/n/b/a;

    const-string v1, "L"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lc/b/a/n/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/b/a/n/b/a;->c:Lc/b/a/n/b/a;

    .line 2
    new-instance v0, Lc/b/a/n/b/a;

    const-string v1, "M"

    invoke-direct {v0, v1, v3, v2}, Lc/b/a/n/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/b/a/n/b/a;->d:Lc/b/a/n/b/a;

    .line 3
    new-instance v0, Lc/b/a/n/b/a;

    const-string v1, "Q"

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lc/b/a/n/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/b/a/n/b/a;->e:Lc/b/a/n/b/a;

    .line 4
    new-instance v0, Lc/b/a/n/b/a;

    const-string v1, "H"

    invoke-direct {v0, v1, v5, v4}, Lc/b/a/n/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/b/a/n/b/a;->f:Lc/b/a/n/b/a;

    const/4 v1, 0x4

    new-array v1, v1, [Lc/b/a/n/b/a;

    .line 5
    sget-object v6, Lc/b/a/n/b/a;->c:Lc/b/a/n/b/a;

    aput-object v6, v1, v2

    sget-object v2, Lc/b/a/n/b/a;->d:Lc/b/a/n/b/a;

    aput-object v2, v1, v3

    sget-object v2, Lc/b/a/n/b/a;->e:Lc/b/a/n/b/a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lc/b/a/n/b/a;->g:[Lc/b/a/n/b/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lc/b/a/n/b/a;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/b/a/n/b/a;
    .locals 1

    .line 1
    const-class v0, Lc/b/a/n/b/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/b/a/n/b/a;

    return-object p0
.end method

.method public static values()[Lc/b/a/n/b/a;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/n/b/a;->g:[Lc/b/a/n/b/a;

    invoke-virtual {v0}, [Lc/b/a/n/b/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/b/a/n/b/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lc/b/a/n/b/a;->b:I

    return v0
.end method
