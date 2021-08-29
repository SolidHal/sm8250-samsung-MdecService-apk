.class final enum Lf/s$a$a;
.super Ljava/lang/Enum;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/s$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/s$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lf/s$a$a;

.field public static final enum c:Lf/s$a$a;

.field public static final enum d:Lf/s$a$a;

.field public static final enum e:Lf/s$a$a;

.field public static final enum f:Lf/s$a$a;

.field private static final synthetic g:[Lf/s$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lf/s$a$a;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf/s$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/s$a$a;->b:Lf/s$a$a;

    .line 2
    new-instance v0, Lf/s$a$a;

    const-string v1, "MISSING_SCHEME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lf/s$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/s$a$a;->c:Lf/s$a$a;

    .line 3
    new-instance v0, Lf/s$a$a;

    const-string v1, "UNSUPPORTED_SCHEME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lf/s$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/s$a$a;->d:Lf/s$a$a;

    .line 4
    new-instance v0, Lf/s$a$a;

    const-string v1, "INVALID_PORT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lf/s$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/s$a$a;->e:Lf/s$a$a;

    .line 5
    new-instance v0, Lf/s$a$a;

    const-string v1, "INVALID_HOST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lf/s$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/s$a$a;->f:Lf/s$a$a;

    const/4 v1, 0x5

    new-array v1, v1, [Lf/s$a$a;

    .line 6
    sget-object v7, Lf/s$a$a;->b:Lf/s$a$a;

    aput-object v7, v1, v2

    sget-object v2, Lf/s$a$a;->c:Lf/s$a$a;

    aput-object v2, v1, v3

    sget-object v2, Lf/s$a$a;->d:Lf/s$a$a;

    aput-object v2, v1, v4

    sget-object v2, Lf/s$a$a;->e:Lf/s$a$a;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lf/s$a$a;->g:[Lf/s$a$a;

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

.method public static valueOf(Ljava/lang/String;)Lf/s$a$a;
    .locals 1

    .line 1
    const-class v0, Lf/s$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/s$a$a;

    return-object p0
.end method

.method public static values()[Lf/s$a$a;
    .locals 1

    .line 1
    sget-object v0, Lf/s$a$a;->g:[Lf/s$a$a;

    invoke-virtual {v0}, [Lf/s$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/s$a$a;

    return-object v0
.end method
