.class public Ld/b/m/f;
.super Ld/b/a;
.source "MimeBodyPart.java"

# interfaces
.implements Ld/b/m/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/m/f$a;
    }
.end annotation


# static fields
.field private static final e:Z

.field private static final f:Z


# instance fields
.field protected a:Ld/a/e;

.field protected b:[B

.field protected c:Ljava/io/InputStream;

.field protected d:Ld/b/m/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "mail.mime.setdefaulttextcharset"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    const-string v0, "mail.mime.setcontenttypefilename"

    .line 2
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    const-string v0, "mail.mime.encodefilename"

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    const-string v0, "mail.mime.decodefilename"

    .line 4
    invoke-static {v0, v2}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/b/m/f;->e:Z

    const-string v0, "mail.mime.ignoremultipartencoding"

    .line 5
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/b/m/f;->f:Z

    const-string v0, "mail.mime.allowutf8"

    .line 6
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    const-string v0, "mail.mime.cachemultipart"

    .line 7
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld/b/a;-><init>()V

    .line 2
    new-instance v0, Ld/b/m/d;

    invoke-direct {v0}, Ld/b/m/d;-><init>()V

    iput-object v0, p0, Ld/b/m/f;->d:Ld/b/m/d;

    return-void
.end method

.method public constructor <init>(Ld/b/m/d;[B)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ld/b/a;-><init>()V

    .line 13
    iput-object p1, p0, Ld/b/m/f;->d:Ld/b/m/d;

    .line 14
    iput-object p2, p0, Ld/b/m/f;->b:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ld/b/a;-><init>()V

    .line 4
    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    instance-of v0, p1, Ld/b/m/n;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 6
    :cond_0
    new-instance v0, Ld/b/m/d;

    invoke-direct {v0, p1}, Ld/b/m/d;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ld/b/m/f;->d:Ld/b/m/d;

    .line 7
    instance-of v0, p1, Ld/b/m/n;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, Ld/b/m/n;

    .line 9
    invoke-interface {p1}, Ld/b/m/n;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    invoke-interface {p1, v0, v1, v2, v3}, Ld/b/m/n;->f(JJ)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Ld/b/m/f;->c:Ljava/io/InputStream;

    goto :goto_0

    .line 10
    :cond_1
    :try_start_0
    invoke-static {p1}, Lc/f/b/a/a;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, p0, Ld/b/m/f;->b:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ld/b/i;

    const-string v1, "Error reading input stream"

    invoke-direct {v0, v1, p1}, Ld/b/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method static i(Ld/b/m/i;)Ljava/lang/String;
    .locals 4

    const-string v0, "Content-Transfer-Encoding"

    const/4 v1, 0x0

    .line 1
    invoke-interface {p0, v0, v1}, Ld/b/m/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "7bit"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "8bit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "quoted-printable"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "binary"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "base64"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ld/b/m/c;

    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p0, v1}, Ld/b/m/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-virtual {v0}, Ld/b/m/c;->e()Ld/b/m/c$a;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ld/b/m/c$a;->a()I

    move-result v2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_3

    return-object p0

    :cond_3
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 10
    invoke-virtual {v1}, Ld/b/m/c$a;->b()Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method

.method static j(Ld/b/m/i;)Ljava/lang/String;
    .locals 3

    const-string v0, "Content-Disposition"

    const/4 v1, 0x0

    .line 1
    invoke-interface {p0, v0, v1}, Ld/b/m/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v2, Ld/b/m/a;

    invoke-direct {v2, v0}, Ld/b/m/a;-><init>(Ljava/lang/String;)V

    const-string v0, "filename"

    .line 3
    invoke-virtual {v2, v0}, Ld/b/m/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v2, "Content-Type"

    .line 4
    invoke-interface {p0, v2, v1}, Ld/b/m/i;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {p0, v1}, Lc/f/b/a/g;->a(Ld/b/m/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    :try_start_0
    new-instance v1, Ld/b/m/b;

    invoke-direct {v1, p0}, Ld/b/m/b;-><init>(Ljava/lang/String;)V

    const-string p0, "name"

    .line 7
    invoke-virtual {v1, p0}, Ld/b/m/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ld/b/m/m; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_1
    sget-boolean p0, Ld/b/m/f;->e:Z

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    .line 9
    :try_start_1
    invoke-static {v0}, Ld/b/m/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 10
    new-instance v0, Ld/b/i;

    const-string v1, "Can\'t decode filename"

    invoke-direct {v0, v1, p0}, Ld/b/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method static k(Ld/b/m/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Ld/b/m/f;->f:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "7bit"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "8bit"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "binary"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p0}, Ld/b/l;->b()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object p1

    .line 6
    :cond_2
    :try_start_0
    new-instance v0, Ld/b/m/b;

    invoke-direct {v0, p0}, Ld/b/m/b;-><init>(Ljava/lang/String;)V

    const-string p0, "multipart/*"

    .line 7
    invoke-virtual {v0, p0}, Ld/b/m/b;->d(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    const-string p0, "message/*"

    .line 8
    invoke-virtual {v0, p0}, Ld/b/m/b;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "mail.mime.allowencodedmessages"

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ld/b/m/m; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_4

    return-object v1

    :catch_0
    :cond_4
    :goto_0
    return-object p1
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b/m/f;->h()Ld/a/e;

    move-result-object v0

    invoke-virtual {v0}, Ld/a/e;->g()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const-string v0, "Content-Type"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Ld/b/m/f;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lc/f/b/a/g;->a(Ld/b/m/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/plain"

    :cond_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ld/b/m/f;->j(Ld/b/m/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ld/b/m/f;->i(Ld/b/m/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/m/f;->d:Ld/b/m/d;

    invoke-virtual {v0, p1, p2}, Ld/b/m/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected g()Ljava/io/InputStream;
    .locals 5

    .line 1
    iget-object v0, p0, Ld/b/m/f;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Ld/b/m/n;

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ld/b/m/n;->f(JJ)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Ld/b/m/f;->b:[B

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ld/b/m/f;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ld/b/i;

    const-string v1, "No MimeBodyPart content"

    invoke-direct {v0, v1}, Ld/b/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Ld/a/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/m/f;->a:Ld/a/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld/b/m/f$a;

    invoke-direct {v0, p0}, Ld/b/m/f$a;-><init>(Ld/b/m/i;)V

    iput-object v0, p0, Ld/b/m/f;->a:Ld/a/e;

    .line 3
    :cond_0
    iget-object v0, p0, Ld/b/m/f;->a:Ld/a/e;

    return-object v0
.end method
