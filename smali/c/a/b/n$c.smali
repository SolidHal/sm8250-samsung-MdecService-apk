.class public final enum Lc/a/b/n$c;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/a/b/n$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lc/a/b/n$c;

.field public static final enum c:Lc/a/b/n$c;

.field public static final enum d:Lc/a/b/n$c;

.field public static final enum e:Lc/a/b/n$c;

.field private static final synthetic f:[Lc/a/b/n$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lc/a/b/n$c;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/a/b/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/b/n$c;->b:Lc/a/b/n$c;

    .line 2
    new-instance v0, Lc/a/b/n$c;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lc/a/b/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/b/n$c;->c:Lc/a/b/n$c;

    .line 3
    new-instance v0, Lc/a/b/n$c;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lc/a/b/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/b/n$c;->d:Lc/a/b/n$c;

    .line 4
    new-instance v0, Lc/a/b/n$c;

    const-string v1, "IMMEDIATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lc/a/b/n$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/b/n$c;->e:Lc/a/b/n$c;

    const/4 v1, 0x4

    new-array v1, v1, [Lc/a/b/n$c;

    .line 5
    sget-object v6, Lc/a/b/n$c;->b:Lc/a/b/n$c;

    aput-object v6, v1, v2

    sget-object v2, Lc/a/b/n$c;->c:Lc/a/b/n$c;

    aput-object v2, v1, v3

    sget-object v2, Lc/a/b/n$c;->d:Lc/a/b/n$c;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lc/a/b/n$c;->f:[Lc/a/b/n$c;

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

.method public static valueOf(Ljava/lang/String;)Lc/a/b/n$c;
    .locals 1

    .line 1
    const-class v0, Lc/a/b/n$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/a/b/n$c;

    return-object p0
.end method

.method public static values()[Lc/a/b/n$c;
    .locals 1

    .line 1
    sget-object v0, Lc/a/b/n$c;->f:[Lc/a/b/n$c;

    invoke-virtual {v0}, [Lc/a/b/n$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/b/n$c;

    return-object v0
.end method
