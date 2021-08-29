.class public Lc/f/a/a/b;
.super Ljava/lang/Object;
.source "MailcapFile.java"


# static fields
.field private static d:Z = false


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/util/Map;

.field private c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "javax.activation.addreverse"

    .line 1
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lc/f/a/a/b;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/f/a/a/b;->a:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/f/a/a/b;->b:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/f/a/a/b;->c:Ljava/util/Map;

    .line 22
    invoke-static {}, Lc/f/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "new MailcapFile: default"

    .line 23
    invoke-static {v0}, Lc/f/a/a/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/f/a/a/b;->a:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/f/a/a/b;->b:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/f/a/a/b;->c:Ljava/util/Map;

    .line 15
    invoke-static {}, Lc/f/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "new MailcapFile: InputStream"

    .line 16
    invoke-static {v0}, Lc/f/a/a/a;->b(Ljava/lang/String;)V

    .line 17
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lc/f/a/a/b;->d(Ljava/io/Reader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/f/a/a/b;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/f/a/a/b;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/f/a/a/b;->c:Ljava/util/Map;

    .line 5
    invoke-static {}, Lc/f/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new MailcapFile: file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/f/a/a/a;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 7
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, p1}, Lc/f/a/a/b;->d(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 10
    :catch_1
    :cond_1
    throw p1
.end method

.method private c(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 6
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private d(Ljava/io/Reader;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    :catch_0
    :goto_0
    move-object v1, p1

    .line 2
    :catch_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    if-eqz v1, :cond_1

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    invoke-virtual {p0, v1}, Lc/f/a/a/b;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Lc/f/a/a/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 10
    :cond_3
    :try_start_2
    invoke-virtual {p0, v2}, Lc/f/a/a/b;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Lc/f/a/a/c; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected static f(IIIILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Lc/f/a/a/a;->a()Z

    move-result v0

    const-string v1, " token."

    const-string v2, ", or a "

    const-string v3, ", a "

    const-string v4, ") while expecting a "

    const-string v5, " token ("

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PARSE ERROR: Encountered a "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p3}, Lc/f/a/a/d;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p0}, Lc/f/a/a/d;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p1}, Lc/f/a/a/d;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p2}, Lc/f/a/a/d;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lc/f/a/a/a;->b(Ljava/lang/String;)V

    .line 8
    :cond_0
    new-instance v0, Lc/f/a/a/c;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encountered a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {p3}, Lc/f/a/a/d;->g(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {p0}, Lc/f/a/a/d;->g(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p1}, Lc/f/a/a/d;->g(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {p2}, Lc/f/a/a/d;->g(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/f/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static g(IIILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lc/f/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p2}, Lc/f/a/a/d;->g(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " token ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") while expecting a "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Lc/f/a/a/d;->g(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " or a "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p1}, Lc/f/a/a/d;->g(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " token."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/f/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static h(IILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lc/f/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p1}, Lc/f/a/a/d;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " token ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") while expecting a "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Lc/f/a/a/d;->g(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " token."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/f/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    .line 1
    iget-object v0, p0, Lc/f/a/a/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/16 v1, 0x2f

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lc/f/a/a/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0, v0, p1}, Lc/f/a/a/b;->c(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    .line 1
    iget-object v0, p0, Lc/f/a/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/16 v1, 0x2f

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lc/f/a/a/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0, v0, p1}, Lc/f/a/a/b;->c(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 14

    .line 1
    new-instance v0, Lc/f/a/a/d;

    invoke-direct {v0, p1}, Lc/f/a/a/d;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lc/f/a/a/d;->k(Z)V

    .line 3
    invoke-static {}, Lc/f/a/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc/f/a/a/a;->b(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Lc/f/a/a/d;->h()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_23

    .line 6
    invoke-virtual {v0}, Lc/f/a/a/d;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lc/f/a/a/d;->h()I

    move-result v5

    const/16 v6, 0x2f

    const/16 v7, 0x3b

    if-eq v5, v6, :cond_2

    if-ne v5, v7, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lc/f/a/a/d;->b()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v6, v7, v5, p1}, Lc/f/a/a/b;->g(IIILjava/lang/String;)V

    throw v3

    :cond_2
    :goto_0
    if-ne v5, v6, :cond_4

    .line 10
    invoke-virtual {v0}, Lc/f/a/a/d;->h()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 11
    invoke-virtual {v0}, Lc/f/a/a/d;->b()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v0}, Lc/f/a/a/d;->h()I

    move-result v6

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v0}, Lc/f/a/a/d;->b()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {v4, v5, p1}, Lc/f/a/a/b;->h(IILjava/lang/String;)V

    throw v3

    :cond_4
    const-string v6, "*"

    move-object v13, v6

    move v6, v5

    move-object v5, v13

    .line 15
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {}, Lc/f/a/a/a;->a()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Type: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc/f/a/a/a;->b(Ljava/lang/String;)V

    .line 18
    :cond_5
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    if-ne v6, v7, :cond_22

    const/4 v6, 0x1

    .line 19
    invoke-virtual {v0, v6}, Lc/f/a/a/d;->k(Z)V

    .line 20
    invoke-virtual {v0}, Lc/f/a/a/d;->h()I

    move-result v8

    .line 21
    invoke-virtual {v0, v1}, Lc/f/a/a/d;->k(Z)V

    if-eq v8, v4, :cond_7

    if-ne v8, v7, :cond_6

    goto :goto_2

    .line 22
    :cond_6
    invoke-virtual {v0}, Lc/f/a/a/d;->b()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {v4, v7, v8, p1}, Lc/f/a/a/b;->g(IIILjava/lang/String;)V

    throw v3

    :cond_7
    :goto_2
    if-ne v8, v4, :cond_9

    .line 24
    iget-object v9, p0, Lc/f/a/a/b;->c:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_8

    .line 25
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p1, p0, Lc/f/a/a/b;->c:Ljava/util/Map;

    invoke-interface {p1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 28
    :cond_8
    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    if-eq v8, v7, :cond_a

    .line 29
    invoke-virtual {v0}, Lc/f/a/a/d;->h()I

    move-result v8

    :cond_a
    const/4 p1, 0x5

    if-ne v8, v7, :cond_1f

    move v8, v1

    .line 30
    :cond_b
    invoke-virtual {v0}, Lc/f/a/a/d;->h()I

    move-result v9

    if-ne v9, v4, :cond_1e

    .line 31
    invoke-virtual {v0}, Lc/f/a/a/d;->b()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 32
    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 33
    invoke-virtual {v0}, Lc/f/a/a/d;->h()I

    move-result v10

    const/16 v11, 0x3d

    if-eq v10, v11, :cond_d

    if-eq v10, v7, :cond_d

    if-ne v10, p1, :cond_c

    goto :goto_4

    .line 34
    :cond_c
    invoke-virtual {v0}, Lc/f/a/a/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v11, v7, p1, v10, v0}, Lc/f/a/a/b;->f(IIIILjava/lang/String;)V

    throw v3

    :cond_d
    :goto_4
    if-ne v10, v11, :cond_14

    .line 36
    invoke-virtual {v0, v6}, Lc/f/a/a/d;->k(Z)V

    .line 37
    invoke-virtual {v0}, Lc/f/a/a/d;->h()I

    move-result v10

    .line 38
    invoke-virtual {v0, v1}, Lc/f/a/a/d;->k(Z)V

    if-ne v10, v4, :cond_13

    .line 39
    invoke-virtual {v0}, Lc/f/a/a/d;->b()Ljava/lang/String;

    move-result-object v10

    const-string v11, "x-java-"

    .line 40
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v11, 0x7

    .line 41
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "fallback-entry"

    .line 42
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const-string v11, "true"

    .line 43
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    move v8, v6

    goto :goto_5

    .line 44
    :cond_e
    invoke-static {}, Lc/f/a/a/a;->a()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 45
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    Command: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", Class: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lc/f/a/a/a;->b(Ljava/lang/String;)V

    .line 46
    :cond_f
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-nez v11, :cond_10

    .line 47
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {v5, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_10
    sget-boolean v9, Lc/f/a/a/b;->d:Z

    if-eqz v9, :cond_11

    .line 50
    invoke-interface {v11, v1, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 51
    :cond_11
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_12
    :goto_5
    invoke-virtual {v0}, Lc/f/a/a/d;->h()I

    move-result v10

    goto :goto_6

    .line 53
    :cond_13
    invoke-virtual {v0}, Lc/f/a/a/d;->b()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {v4, v10, p1}, Lc/f/a/a/b;->h(IILjava/lang/String;)V

    throw v3

    :cond_14
    :goto_6
    if-eq v10, v7, :cond_b

    if-eqz v8, :cond_15

    .line 55
    iget-object p1, p0, Lc/f/a/a/b;->b:Ljava/util/Map;

    goto :goto_7

    :cond_15
    iget-object p1, p0, Lc/f/a/a/b;->a:Ljava/util/Map;

    .line 56
    :goto_7
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_16

    .line 57
    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 58
    :cond_16
    invoke-static {}, Lc/f/a/a/a;->a()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Merging commands for type "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/f/a/a/a;->b(Ljava/lang/String;)V

    .line 60
    :cond_17
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 61
    :cond_18
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 64
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_19

    goto :goto_8

    .line 65
    :cond_19
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 66
    :cond_1a
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 68
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 69
    sget-boolean v6, Lc/f/a/a/b;->d:Z

    if-eqz v6, :cond_1b

    .line 70
    invoke-interface {v3, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_9

    .line 71
    :cond_1b
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 72
    :cond_1c
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 73
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_a

    .line 76
    :cond_1d
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 77
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 78
    :cond_1e
    invoke-virtual {v0}, Lc/f/a/a/d;->b()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {v4, v9, p1}, Lc/f/a/a/b;->h(IILjava/lang/String;)V

    throw v3

    :cond_1f
    if-ne v8, p1, :cond_21

    :cond_20
    :goto_b
    return-void

    .line 80
    :cond_21
    invoke-virtual {v0}, Lc/f/a/a/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {p1, v7, v8, v0}, Lc/f/a/a/b;->g(IIILjava/lang/String;)V

    throw v3

    .line 82
    :cond_22
    invoke-virtual {v0}, Lc/f/a/a/d;->b()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {v7, v6, p1}, Lc/f/a/a/b;->h(IILjava/lang/String;)V

    throw v3

    .line 84
    :cond_23
    invoke-virtual {v0}, Lc/f/a/a/d;->b()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {v4, v2, p1}, Lc/f/a/a/b;->h(IILjava/lang/String;)V

    throw v3
.end method
