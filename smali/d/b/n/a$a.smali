.class Ld/b/n/a$a;
.super Ljava/io/ByteArrayOutputStream;
.source "ByteArrayDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public f()[B
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    return v0
.end method
