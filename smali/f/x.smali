.class public final enum Lf/x;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lf/x;

.field public static final enum d:Lf/x;

.field public static final enum e:Lf/x;

.field public static final enum f:Lf/x;

.field public static final enum g:Lf/x;

.field private static final synthetic h:[Lf/x;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lf/x;

    const-string v1, "HTTP_1_0"

    const/4 v2, 0x0

    const-string v3, "http/1.0"

    invoke-direct {v0, v1, v2, v3}, Lf/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf/x;->c:Lf/x;

    .line 2
    new-instance v0, Lf/x;

    const-string v1, "HTTP_1_1"

    const/4 v3, 0x1

    const-string v4, "http/1.1"

    invoke-direct {v0, v1, v3, v4}, Lf/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf/x;->d:Lf/x;

    .line 3
    new-instance v0, Lf/x;

    const-string v1, "SPDY_3"

    const/4 v4, 0x2

    const-string v5, "spdy/3.1"

    invoke-direct {v0, v1, v4, v5}, Lf/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf/x;->e:Lf/x;

    .line 4
    new-instance v0, Lf/x;

    const-string v1, "HTTP_2"

    const/4 v5, 0x3

    const-string v6, "h2"

    invoke-direct {v0, v1, v5, v6}, Lf/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf/x;->f:Lf/x;

    .line 5
    new-instance v0, Lf/x;

    const-string v1, "QUIC"

    const/4 v6, 0x4

    const-string v7, "quic"

    invoke-direct {v0, v1, v6, v7}, Lf/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf/x;->g:Lf/x;

    const/4 v1, 0x5

    new-array v1, v1, [Lf/x;

    .line 6
    sget-object v7, Lf/x;->c:Lf/x;

    aput-object v7, v1, v2

    sget-object v2, Lf/x;->d:Lf/x;

    aput-object v2, v1, v3

    sget-object v2, Lf/x;->e:Lf/x;

    aput-object v2, v1, v4

    sget-object v2, Lf/x;->f:Lf/x;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lf/x;->h:[Lf/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lf/x;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lf/x;
    .locals 6

    .line 1
    sget-object v0, Lf/x;->g:Lf/x;

    sget-object v1, Lf/x;->e:Lf/x;

    sget-object v2, Lf/x;->f:Lf/x;

    sget-object v3, Lf/x;->d:Lf/x;

    sget-object v4, Lf/x;->c:Lf/x;

    iget-object v5, v4, Lf/x;->b:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    .line 2
    :cond_0
    iget-object v4, v3, Lf/x;->b:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    .line 3
    :cond_1
    iget-object v3, v2, Lf/x;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 4
    :cond_2
    iget-object v2, v1, Lf/x;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 5
    :cond_3
    iget-object v1, v0, Lf/x;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 6
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lf/x;
    .locals 1

    .line 1
    const-class v0, Lf/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/x;

    return-object p0
.end method

.method public static values()[Lf/x;
    .locals 1

    .line 1
    sget-object v0, Lf/x;->h:[Lf/x;

    invoke-virtual {v0}, [Lf/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/x;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/x;->b:Ljava/lang/String;

    return-object v0
.end method
