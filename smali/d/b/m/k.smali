.class public Ld/b/m/k;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field private static final a:Z

.field private static final b:Z

.field private static final c:Z

.field private static final d:Z

.field private static e:Ljava/lang/String;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "mail.mime.decodetext.strict"

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/b/m/k;->a:Z

    const-string v0, "mail.mime.encodeeol.strict"

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    const-string v0, "mail.mime.ignoreunknownencoding"

    .line 4
    invoke-static {v0, v2}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/b/m/k;->b:Z

    const-string v0, "mail.mime.allowutf8"

    .line 5
    invoke-static {v0, v2}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/b/m/k;->c:Z

    const-string v0, "mail.mime.foldencodedwords"

    .line 6
    invoke-static {v0, v2}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    const-string v0, "mail.mime.foldtext"

    .line 7
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/b/m/k;->d:Z

    .line 8
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    .line 10
    :try_start_0
    const-class v0, Ld/b/m/k;

    const-string v1, "/META-INF/javamail.charset.map"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 12
    :try_start_1
    new-instance v1, Lc/f/b/a/e;

    invoke-direct {v1, v0}, Lc/f/b/a/e;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :try_start_2
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    invoke-static {v1, v0}, Ld/b/m/k;->h(Lc/f/b/a/e;Ljava/util/Map;)V

    .line 14
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    invoke-static {v1, v0}, Ld/b/m/k;->h(Lc/f/b/a/e;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 16
    :catch_0
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 17
    :catch_1
    :cond_0
    :goto_1
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "euc-kr"

    const-string v2, "ISO-8859-1"

    if-eqz v0, :cond_1

    .line 18
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "8859_1"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859_1"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859-1"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "8859_2"

    const-string v4, "ISO-8859-2"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859_2"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859-2"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "8859_3"

    const-string v4, "ISO-8859-3"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859_3"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859-3"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "8859_4"

    const-string v4, "ISO-8859-4"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859_4"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859-4"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "8859_5"

    const-string v4, "ISO-8859-5"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859_5"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859-5"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "8859_6"

    const-string v4, "ISO-8859-6"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859_6"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859-6"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "8859_7"

    const-string v4, "ISO-8859-7"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859_7"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859-7"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "8859_8"

    const-string v4, "ISO-8859-8"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859_8"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859-8"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "8859_9"

    const-string v4, "ISO-8859-9"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859_9"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso8859-9"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "sjis"

    const-string v4, "Shift_JIS"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "jis"

    const-string v4, "ISO-2022-JP"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "iso2022jp"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "euc_jp"

    const-string v4, "euc-jp"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "koi8_r"

    const-string v4, "koi8-r"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "euc_cn"

    const-string v4, "euc-cn"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "euc_tw"

    const-string v4, "euc-tw"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Ld/b/m/k;->g:Ljava/util/Map;

    const-string v3, "euc_kr"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    const-string v3, "iso-2022-cn"

    const-string v4, "ISO2022CN"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    const-string v3, "iso-2022-kr"

    const-string v4, "ISO2022KR"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    const-string v3, "utf-8"

    const-string v4, "UTF8"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    const-string v3, "utf8"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    const-string v3, "ja_jp.iso2022-7"

    const-string v4, "ISO2022JP"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    const-string v3, "ja_jp.eucjp"

    const-string v4, "EUCJIS"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    const-string v3, "KSC5601"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    const-string v1, "euckr"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    const-string v1, "us-ascii"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    const-string v1, "x-us-ascii"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    const-string v1, "gb2312"

    const-string v2, "GB18030"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    const-string v1, "cp936"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    const-string v1, "ms936"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    const-string v1, "gbk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-string v0, "base64"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lc/f/b/a/b;

    invoke-direct {p1, p0}, Lc/f/b/a/b;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_0
    const-string v0, "quoted-printable"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Lc/f/b/a/j;

    invoke-direct {p1, p0}, Lc/f/b/a/j;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_1
    const-string v0, "uuencode"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "x-uuencode"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "x-uue"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "binary"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "7bit"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "8bit"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    sget-boolean v0, Ld/b/m/k;->b:Z

    if-eqz v0, :cond_4

    return-object p0

    .line 12
    :cond_4
    new-instance p0, Ld/b/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ld/b/i;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    return-object p0

    .line 13
    :cond_6
    :goto_1
    new-instance p1, Lc/f/b/a/k;

    invoke-direct {p1, p0}, Lc/f/b/a/k;-><init>(Ljava/io/InputStream;)V

    return-object p1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const-string v2, "=?"

    .line 2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 3
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v2, 0x2

    const/16 v4, 0x3f

    .line 4
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 5
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    const-string v4, "?="

    .line 6
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v3, 0x2

    .line 7
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 8
    :try_start_0
    invoke-static {v2}, Ld/b/m/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ld/b/m/m; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    return-object p0

    .line 10
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "=?"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \t\n\r"

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 6
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_8

    const/16 v8, 0x9

    if-eq v7, v8, :cond_8

    const/16 v8, 0xd

    if-eq v7, v8, :cond_8

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    goto :goto_5

    .line 8
    :cond_1
    :try_start_0
    invoke-static {v6}, Ld/b/m/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_2

    .line 9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 10
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ld/b/m/m; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v5, v3

    :goto_1
    move-object v6, v7

    goto :goto_4

    .line 11
    :catch_0
    sget-boolean v7, Ld/b/m/k;->a:Z

    if-nez v7, :cond_6

    .line 12
    invoke-static {v6}, Ld/b/m/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eq v7, v6, :cond_5

    if-eqz v5, :cond_3

    .line 13
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_2
    const-string v5, "?="

    .line 16
    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 19
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_7
    :goto_3
    move v5, v4

    .line 21
    :goto_4
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    .line 23
    :cond_8
    :goto_5
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 24
    :cond_9
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "=?"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x3f

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    .line 3
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2a

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x0

    if-ltz v5, :cond_0

    .line 5
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 6
    :cond_0
    invoke-static {v4}, Ld/b/m/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    .line 7
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v3, :cond_8

    .line 8
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    const-string v5, "?="

    .line 9
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v3, :cond_7

    .line 10
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 11
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ""

    if-lez v3, :cond_4

    .line 12
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 13
    invoke-static {v0}, Lc/f/b/a/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "B"

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Lc/f/b/a/b;

    invoke-direct {v0, v3}, Lc/f/b/a/b;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    const-string v0, "Q"

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    new-instance v0, Lc/f/b/a/i;

    invoke-direct {v0, v3}, Lc/f/b/a/i;-><init>(Ljava/io/InputStream;)V

    .line 18
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 19
    new-array v3, v2, [B

    .line 20
    invoke-virtual {v0, v3, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v6, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v7, v2

    goto :goto_1

    .line 22
    :cond_3
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    add-int/2addr v5, v1

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 24
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 25
    sget-boolean v0, Ld/b/m/k;->a:Z

    if-nez v0, :cond_5

    .line 26
    invoke-static {p0}, Ld/b/m/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 27
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-object v7

    .line 28
    :catch_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p0, v4}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 29
    new-instance v0, Ld/b/m/m;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception p0

    .line 30
    throw p0

    .line 31
    :cond_7
    new-instance v0, Ld/b/m/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoded word does not end with \"?=\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_8
    new-instance v0, Ld/b/m/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoded word does not include encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_9
    new-instance v0, Ld/b/m/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoded word does not include charset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_a
    new-instance v0, Ld/b/m/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoded word does not start with \"=?\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(ILjava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    sget-boolean v0, Ld/b/m/k;->d:Z

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/16 v2, 0x9

    const/16 v3, 0x20

    if-ltz v0, :cond_2

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_1

    if-eq v4, v2, :cond_1

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    if-eq v0, v4, :cond_3

    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p0

    const/16 v4, 0x4c

    if-gt v0, v4, :cond_4

    .line 7
    invoke-static {p1}, Ld/b/m/k;->i(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move v6, v5

    .line 9
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, p0

    if-le v7, v4, :cond_a

    const/4 v7, -0x1

    move v8, v5

    move v9, v7

    .line 10
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_8

    if-eq v9, v7, :cond_5

    add-int v10, p0, v8

    if-le v10, v4, :cond_5

    goto :goto_4

    .line 11
    :cond_5
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v3, :cond_6

    if-ne v10, v2, :cond_7

    :cond_6
    if-eq v6, v3, :cond_7

    if-eq v6, v2, :cond_7

    move v9, v8

    :cond_7
    add-int/lit8 v8, v8, 0x1

    move v6, v10

    goto :goto_3

    :cond_8
    :goto_4
    if-ne v9, v7, :cond_9

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    goto :goto_5

    .line 13
    :cond_9
    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 16
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    .line 17
    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move p0, v1

    goto :goto_2

    .line 18
    :cond_a
    :goto_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {v0}, Ld/b/m/k;->i(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    const-string v0, "8859_1"

    .line 1
    sget-object v1, Ld/b/m/k;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "mail.mime.charset"

    .line 2
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    invoke-static {v1}, Ld/b/m/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld/b/m/k;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    :try_start_1
    const-string v1, "file.encoding"

    .line 5
    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ld/b/m/k;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6
    :catch_1
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ld/b/m/k$a;

    invoke-direct {v2}, Ld/b/m/k$a;-><init>()V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ld/b/m/k;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8
    sput-object v0, Ld/b/m/k;->e:Ljava/lang/String;

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Ld/b/m/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Ld/b/m/k;->f:Ljava/util/Map;

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    :cond_3
    :goto_1
    return-object p0
.end method

.method private static h(Lc/f/b/a/e;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/f/b/a/e;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lc/f/b/a/e;->f()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "--"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \t"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    :goto_1
    return-void
.end method

.method private static i(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 4
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 7
    :goto_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    const-string v4, "\r\n"

    .line 10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_4

    const/16 v6, 0x9

    if-eq v4, v6, :cond_4

    .line 12
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :catch_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    const-string p0, "\"\""

    return-object p0

    :cond_1
    move v2, v0

    move v3, v2

    :goto_1
    const/16 v4, 0x22

    if-ge v2, v1, :cond_b

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    const/16 v7, 0xd

    const/16 v8, 0x5c

    if-eq v5, v4, :cond_6

    if-eq v5, v8, :cond_6

    if-eq v5, v7, :cond_6

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const/16 v4, 0x20

    if-lt v5, v4, :cond_4

    const/16 v4, 0x7f

    if-lt v5, v4, :cond_3

    .line 3
    sget-boolean v4, Ld/b/m/k;->c:Z

    if-eqz v4, :cond_4

    .line 4
    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5
    :cond_6
    :goto_2
    new-instance p1, Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, 0x3

    invoke-direct {p1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    if-ge v2, v1, :cond_a

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_7

    if-eq v3, v8, :cond_7

    if-eq v3, v7, :cond_7

    if-ne v3, v6, :cond_9

    :cond_7
    if-ne v3, v6, :cond_8

    if-ne v0, v7, :cond_8

    goto :goto_4

    .line 9
    :cond_8
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 10
    :cond_9
    :goto_4
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_3

    .line 11
    :cond_a
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-eqz v3, :cond_c

    .line 13
    new-instance p1, Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 14
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_c
    return-object p0
.end method
