.class public Ld/b/n/a;
.super Ljava/lang/Object;
.source "ByteArrayDataSource.java"

# interfaces
.implements Ld/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/n/a$a;
    }
.end annotation


# instance fields
.field private a:[B

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ld/b/n/a;->b:I

    .line 3
    new-instance v0, Ld/b/n/a$a;

    invoke-direct {v0}, Ld/b/n/a$a;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 4
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ld/b/n/a$a;->f()[B

    move-result-object p1

    iput-object p1, p0, Ld/b/n/a;->a:[B

    .line 7
    invoke-virtual {v0}, Ld/b/n/a$a;->getCount()I

    move-result p1

    iput p1, p0, Ld/b/n/a;->b:I

    .line 8
    iget-object v1, p0, Ld/b/n/a;->a:[B

    array-length v1, v1

    sub-int/2addr v1, p1

    const/high16 p1, 0x40000

    if-le v1, p1, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Ld/b/n/a;->a:[B

    .line 10
    array-length p1, p1

    iput p1, p0, Ld/b/n/a;->b:I

    .line 11
    :cond_1
    iput-object p2, p0, Ld/b/n/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 4

    .line 1
    iget-object v0, p0, Ld/b/n/a;->a:[B

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Ld/b/n/a;->b:I

    if-gez v1, :cond_0

    .line 3
    array-length v0, v0

    iput v0, p0, Ld/b/n/a;->b:I

    .line 4
    :cond_0
    new-instance v0, Ld/b/n/b;

    iget-object v1, p0, Ld/b/n/a;->a:[B

    const/4 v2, 0x0

    iget v3, p0, Ld/b/n/a;->b:I

    invoke-direct {v0, v1, v2, v3}, Ld/b/n/b;-><init>([BII)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/n/a;->c:Ljava/lang/String;

    return-object v0
.end method
