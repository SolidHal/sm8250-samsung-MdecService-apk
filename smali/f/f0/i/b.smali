.class public final enum Lf/f0/i/b;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/f0/i/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lf/f0/i/b;

.field public static final enum d:Lf/f0/i/b;

.field public static final enum e:Lf/f0/i/b;

.field public static final enum f:Lf/f0/i/b;

.field public static final enum g:Lf/f0/i/b;

.field public static final enum h:Lf/f0/i/b;

.field public static final enum i:Lf/f0/i/b;

.field public static final enum j:Lf/f0/i/b;

.field public static final enum k:Lf/f0/i/b;

.field public static final enum l:Lf/f0/i/b;

.field public static final enum m:Lf/f0/i/b;

.field private static final synthetic n:[Lf/f0/i/b;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lf/f0/i/b;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lf/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/f0/i/b;->c:Lf/f0/i/b;

    .line 2
    new-instance v0, Lf/f0/i/b;

    const-string v1, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lf/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/f0/i/b;->d:Lf/f0/i/b;

    .line 3
    new-instance v0, Lf/f0/i/b;

    const-string v1, "INTERNAL_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lf/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/f0/i/b;->e:Lf/f0/i/b;

    .line 4
    new-instance v0, Lf/f0/i/b;

    const-string v1, "FLOW_CONTROL_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lf/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/f0/i/b;->f:Lf/f0/i/b;

    .line 5
    new-instance v0, Lf/f0/i/b;

    const-string v1, "REFUSED_STREAM"

    const/4 v6, 0x4

    const/4 v7, 0x7

    invoke-direct {v0, v1, v6, v7}, Lf/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/f0/i/b;->g:Lf/f0/i/b;

    .line 6
    new-instance v0, Lf/f0/i/b;

    const-string v1, "CANCEL"

    const/4 v8, 0x5

    const/16 v9, 0x8

    invoke-direct {v0, v1, v8, v9}, Lf/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/f0/i/b;->h:Lf/f0/i/b;

    .line 7
    new-instance v0, Lf/f0/i/b;

    const-string v1, "COMPRESSION_ERROR"

    const/4 v10, 0x6

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lf/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/f0/i/b;->i:Lf/f0/i/b;

    .line 8
    new-instance v0, Lf/f0/i/b;

    const-string v1, "CONNECT_ERROR"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v7, v12}, Lf/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/f0/i/b;->j:Lf/f0/i/b;

    .line 9
    new-instance v0, Lf/f0/i/b;

    const-string v1, "ENHANCE_YOUR_CALM"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v9, v13}, Lf/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/f0/i/b;->k:Lf/f0/i/b;

    .line 10
    new-instance v0, Lf/f0/i/b;

    const-string v1, "INADEQUATE_SECURITY"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v11, v14}, Lf/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/f0/i/b;->l:Lf/f0/i/b;

    .line 11
    new-instance v0, Lf/f0/i/b;

    const-string v1, "HTTP_1_1_REQUIRED"

    const/16 v14, 0xd

    invoke-direct {v0, v1, v12, v14}, Lf/f0/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/f0/i/b;->m:Lf/f0/i/b;

    new-array v1, v13, [Lf/f0/i/b;

    .line 12
    sget-object v13, Lf/f0/i/b;->c:Lf/f0/i/b;

    aput-object v13, v1, v2

    sget-object v2, Lf/f0/i/b;->d:Lf/f0/i/b;

    aput-object v2, v1, v3

    sget-object v2, Lf/f0/i/b;->e:Lf/f0/i/b;

    aput-object v2, v1, v4

    sget-object v2, Lf/f0/i/b;->f:Lf/f0/i/b;

    aput-object v2, v1, v5

    sget-object v2, Lf/f0/i/b;->g:Lf/f0/i/b;

    aput-object v2, v1, v6

    sget-object v2, Lf/f0/i/b;->h:Lf/f0/i/b;

    aput-object v2, v1, v8

    sget-object v2, Lf/f0/i/b;->i:Lf/f0/i/b;

    aput-object v2, v1, v10

    sget-object v2, Lf/f0/i/b;->j:Lf/f0/i/b;

    aput-object v2, v1, v7

    sget-object v2, Lf/f0/i/b;->k:Lf/f0/i/b;

    aput-object v2, v1, v9

    sget-object v2, Lf/f0/i/b;->l:Lf/f0/i/b;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lf/f0/i/b;->n:[Lf/f0/i/b;

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
    iput p3, p0, Lf/f0/i/b;->b:I

    return-void
.end method

.method public static a(I)Lf/f0/i/b;
    .locals 5

    .line 1
    invoke-static {}, Lf/f0/i/b;->values()[Lf/f0/i/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lf/f0/i/b;->b:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lf/f0/i/b;
    .locals 1

    .line 1
    const-class v0, Lf/f0/i/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/f0/i/b;

    return-object p0
.end method

.method public static values()[Lf/f0/i/b;
    .locals 1

    .line 1
    sget-object v0, Lf/f0/i/b;->n:[Lf/f0/i/b;

    invoke-virtual {v0}, [Lf/f0/i/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/f0/i/b;

    return-object v0
.end method
