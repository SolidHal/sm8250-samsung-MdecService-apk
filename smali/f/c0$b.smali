.class final Lf/c0$b;
.super Ljava/io/Reader;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final b:Lg/e;

.field private final c:Ljava/nio/charset/Charset;

.field private d:Z

.field private e:Ljava/io/Reader;


# direct methods
.method constructor <init>(Lg/e;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2
    iput-object p1, p0, Lf/c0$b;->b:Lg/e;

    .line 3
    iput-object p2, p0, Lf/c0$b;->c:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/c0$b;->d:Z

    .line 2
    iget-object v0, p0, Lf/c0$b;->e:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lf/c0$b;->b:Lg/e;

    invoke-interface {v0}, Lg/s;->close()V

    :goto_0
    return-void
.end method

.method public read([CII)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf/c0$b;->d:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/c0$b;->e:Ljava/io/Reader;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/c0$b;->b:Lg/e;

    iget-object v1, p0, Lf/c0$b;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lf/f0/c;->b(Lg/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lf/c0$b;->b:Lg/e;

    invoke-interface {v2}, Lg/e;->J()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v1, p0, Lf/c0$b;->e:Ljava/io/Reader;

    move-object v0, v1

    .line 5
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    return p1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
