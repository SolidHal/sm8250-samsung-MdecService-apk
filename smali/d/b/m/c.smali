.class public Ld/b/m/c;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/m/c$a;
    }
.end annotation


# static fields
.field private static final g:Ld/b/m/c$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ld/b/m/c$a;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld/b/m/c$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Ld/b/m/c;->g:Ld/b/m/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, p2, v0}, Ld/b/m/c;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    iput-object p1, p0, Ld/b/m/c;->a:Ljava/lang/String;

    .line 3
    iput-boolean p3, p0, Ld/b/m/c;->b:Z

    .line 4
    iput-object p2, p0, Ld/b/m/c;->c:Ljava/lang/String;

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Ld/b/m/c;->f:I

    iput p2, p0, Ld/b/m/c;->d:I

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Ld/b/m/c;->e:I

    return-void
.end method

.method private a(CZ)Ld/b/m/c$a;
    .locals 7

    .line 1
    iget v0, p0, Ld/b/m/c;->d:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ld/b/m/c;->d:I

    iget v3, p0, Ld/b/m/c;->e:I

    const/4 v4, -0x2

    const/16 v5, 0x22

    if-ge v2, v3, :cond_5

    .line 2
    iget-object v3, p0, Ld/b/m/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    const/4 v6, 0x1

    if-ne v2, v3, :cond_0

    .line 3
    iget v1, p0, Ld/b/m/c;->d:I

    add-int/2addr v1, v6

    iput v1, p0, Ld/b/m/c;->d:I

    :goto_1
    move v1, v6

    goto :goto_3

    :cond_0
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-ne v2, p1, :cond_4

    .line 4
    iget p1, p0, Ld/b/m/c;->d:I

    add-int/2addr p1, v6

    iput p1, p0, Ld/b/m/c;->d:I

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Ld/b/m/c;->a:Ljava/lang/String;

    sub-int/2addr p1, v6

    invoke-static {v1, v0, p1, p2}, Ld/b/m/c;->b(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 6
    :cond_2
    iget-object p2, p0, Ld/b/m/c;->a:Ljava/lang/String;

    sub-int/2addr p1, v6

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-eq v2, v5, :cond_3

    .line 7
    invoke-static {p1}, Ld/b/m/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget p2, p0, Ld/b/m/c;->d:I

    sub-int/2addr p2, v6

    iput p2, p0, Ld/b/m/c;->d:I

    .line 9
    :cond_3
    new-instance p2, Ld/b/m/c$a;

    invoke-direct {p2, v4, p1}, Ld/b/m/c$a;-><init>(ILjava/lang/String;)V

    return-object p2

    .line 10
    :cond_4
    :goto_3
    iget v2, p0, Ld/b/m/c;->d:I

    add-int/2addr v2, v6

    iput v2, p0, Ld/b/m/c;->d:I

    goto :goto_0

    :cond_5
    if-eq p1, v5, :cond_7

    if-eqz v1, :cond_6

    .line 11
    iget-object p1, p0, Ld/b/m/c;->a:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Ld/b/m/c;->b(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 12
    :cond_6
    iget-object p1, p0, Ld/b/m/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 13
    :goto_4
    invoke-static {p1}, Ld/b/m/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance p2, Ld/b/m/c$a;

    invoke-direct {p2, v4, p1}, Ld/b/m/c$a;-><init>(ILjava/lang/String;)V

    return-object p2

    .line 15
    :cond_7
    new-instance p1, Ld/b/m/m;

    const-string p2, "Unbalanced quoted string"

    invoke-direct {p1, p2}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static b(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge p1, p2, :cond_5

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    if-eqz v2, :cond_0

    :goto_1
    move v2, v1

    goto :goto_2

    :cond_0
    const/16 v2, 0x5c

    if-nez v3, :cond_3

    if-ne v4, v2, :cond_1

    move v2, v1

    move v3, v6

    goto :goto_2

    :cond_1
    const/16 v2, 0xd

    if-ne v4, v2, :cond_2

    move v2, v6

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v1

    move v3, v2

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(CZ)Ld/b/m/c$a;
    .locals 9

    .line 1
    iget v0, p0, Ld/b/m/c;->d:I

    iget v1, p0, Ld/b/m/c;->e:I

    if-lt v0, v1, :cond_0

    .line 2
    sget-object p1, Ld/b/m/c;->g:Ld/b/m/c$a;

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0}, Ld/b/m/c;->h()I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 4
    sget-object p1, Ld/b/m/c;->g:Ld/b/m/c$a;

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Ld/b/m/c;->a:Ljava/lang/String;

    iget v2, p0, Ld/b/m/c;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x28

    const/4 v5, 0x1

    if-ne v0, v4, :cond_b

    .line 6
    iget v0, p0, Ld/b/m/c;->d:I

    add-int/2addr v0, v5

    iput v0, p0, Ld/b/m/c;->d:I

    move v6, v5

    :goto_1
    if-lez v6, :cond_6

    .line 7
    iget v7, p0, Ld/b/m/c;->d:I

    iget v8, p0, Ld/b/m/c;->e:I

    if-ge v7, v8, :cond_6

    .line 8
    iget-object v8, p0, Ld/b/m/c;->a:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_2

    .line 9
    iget v3, p0, Ld/b/m/c;->d:I

    add-int/2addr v3, v5

    iput v3, p0, Ld/b/m/c;->d:I

    :goto_2
    move v3, v5

    goto :goto_3

    :cond_2
    const/16 v8, 0xd

    if-ne v7, v8, :cond_3

    goto :goto_2

    :cond_3
    if-ne v7, v4, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const/16 v8, 0x29

    if-ne v7, v8, :cond_5

    add-int/lit8 v6, v6, -0x1

    .line 10
    :cond_5
    :goto_3
    iget v7, p0, Ld/b/m/c;->d:I

    add-int/2addr v7, v5

    iput v7, p0, Ld/b/m/c;->d:I

    goto :goto_1

    :cond_6
    if-nez v6, :cond_a

    .line 11
    iget-boolean v4, p0, Ld/b/m/c;->b:Z

    if-nez v4, :cond_8

    if-eqz v3, :cond_7

    .line 12
    iget-object p1, p0, Ld/b/m/c;->a:Ljava/lang/String;

    iget v1, p0, Ld/b/m/c;->d:I

    sub-int/2addr v1, v5

    invoke-static {p1, v0, v1, p2}, Ld/b/m/c;->b(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 13
    :cond_7
    iget-object p1, p0, Ld/b/m/c;->a:Ljava/lang/String;

    iget p2, p0, Ld/b/m/c;->d:I

    sub-int/2addr p2, v5

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 14
    :goto_4
    new-instance p2, Ld/b/m/c$a;

    const/4 v0, -0x3

    invoke-direct {p2, v0, p1}, Ld/b/m/c$a;-><init>(ILjava/lang/String;)V

    return-object p2

    .line 15
    :cond_8
    invoke-direct {p0}, Ld/b/m/c;->h()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 16
    sget-object p1, Ld/b/m/c;->g:Ld/b/m/c$a;

    return-object p1

    .line 17
    :cond_9
    iget-object v0, p0, Ld/b/m/c;->a:Ljava/lang/String;

    iget v4, p0, Ld/b/m/c;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 18
    :cond_a
    new-instance p1, Ld/b/m/m;

    const-string p2, "Unbalanced comments"

    invoke-direct {p1, p2}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const/16 v1, 0x22

    if-ne v0, v1, :cond_c

    .line 19
    iget p1, p0, Ld/b/m/c;->d:I

    add-int/2addr p1, v5

    iput p1, p0, Ld/b/m/c;->d:I

    .line 20
    invoke-direct {p0, v1, p2}, Ld/b/m/c;->a(CZ)Ld/b/m/c$a;

    move-result-object p1

    return-object p1

    :cond_c
    const/16 v3, 0x20

    if-lt v0, v3, :cond_11

    const/16 v6, 0x7f

    if-ge v0, v6, :cond_11

    .line 21
    iget-object v7, p0, Ld/b/m/c;->c:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_d

    goto :goto_7

    .line 22
    :cond_d
    iget v0, p0, Ld/b/m/c;->d:I

    :goto_5
    iget v2, p0, Ld/b/m/c;->d:I

    iget v7, p0, Ld/b/m/c;->e:I

    if-ge v2, v7, :cond_10

    .line 23
    iget-object v7, p0, Ld/b/m/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v3, :cond_f

    if-ge v2, v6, :cond_f

    if-eq v2, v4, :cond_f

    if-eq v2, v3, :cond_f

    if-eq v2, v1, :cond_f

    .line 24
    iget-object v7, p0, Ld/b/m/c;->c:Ljava/lang/String;

    .line 25
    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_e

    goto :goto_6

    .line 26
    :cond_e
    iget v2, p0, Ld/b/m/c;->d:I

    add-int/2addr v2, v5

    iput v2, p0, Ld/b/m/c;->d:I

    goto :goto_5

    :cond_f
    :goto_6
    if-lez p1, :cond_10

    if-eq v2, p1, :cond_10

    .line 27
    iput v0, p0, Ld/b/m/c;->d:I

    .line 28
    invoke-direct {p0, p1, p2}, Ld/b/m/c;->a(CZ)Ld/b/m/c$a;

    move-result-object p1

    return-object p1

    .line 29
    :cond_10
    new-instance p1, Ld/b/m/c$a;

    iget-object p2, p0, Ld/b/m/c;->a:Ljava/lang/String;

    iget v1, p0, Ld/b/m/c;->d:I

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Ld/b/m/c$a;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_11
    :goto_7
    if-lez p1, :cond_12

    if-eq v0, p1, :cond_12

    .line 30
    invoke-direct {p0, p1, p2}, Ld/b/m/c;->a(CZ)Ld/b/m/c$a;

    move-result-object p1

    return-object p1

    .line 31
    :cond_12
    iget p1, p0, Ld/b/m/c;->d:I

    add-int/2addr p1, v5

    iput p1, p0, Ld/b/m/c;->d:I

    new-array p1, v5, [C

    aput-char v0, p1, v2

    .line 32
    new-instance p2, Ld/b/m/c$a;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p2, v0, v1}, Ld/b/m/c$a;-><init>(ILjava/lang/String;)V

    return-object p2
.end method

.method private h()I
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Ld/b/m/c;->d:I

    iget v1, p0, Ld/b/m/c;->e:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Ld/b/m/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 3
    iget v0, p0, Ld/b/m/c;->d:I

    return v0

    .line 4
    :cond_0
    iget v0, p0, Ld/b/m/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/b/m/c;->d:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x4

    return v0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gtz v0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ld/b/m/c;->f:I

    iget-object v1, p0, Ld/b/m/c;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Ld/b/m/c;->a:Ljava/lang/String;

    iget v1, p0, Ld/b/m/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ld/b/m/c$a;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Ld/b/m/c;->g(CZ)Ld/b/m/c$a;

    move-result-object v0

    return-object v0
.end method

.method public f(C)Ld/b/m/c$a;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Ld/b/m/c;->g(CZ)Ld/b/m/c$a;

    move-result-object p1

    return-object p1
.end method

.method public g(CZ)Ld/b/m/c$a;
    .locals 1

    .line 1
    iget v0, p0, Ld/b/m/c;->f:I

    iput v0, p0, Ld/b/m/c;->d:I

    .line 2
    invoke-direct {p0, p1, p2}, Ld/b/m/c;->c(CZ)Ld/b/m/c$a;

    move-result-object p1

    .line 3
    iget p2, p0, Ld/b/m/c;->d:I

    iput p2, p0, Ld/b/m/c;->f:I

    return-object p1
.end method
