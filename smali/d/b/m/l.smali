.class public Ld/b/m/l;
.super Ljava/lang/Object;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/m/l$d;,
        Ld/b/m/l$c;,
        Ld/b/m/l$b;,
        Ld/b/m/l$e;
    }
.end annotation


# static fields
.field private static final e:Z

.field private static final f:Z

.field private static final g:Z

.field private static final h:Z

.field private static final i:Z

.field private static final j:Z

.field private static final k:Z


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "mail.mime.encodeparameters"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/b/m/l;->e:Z

    const-string v0, "mail.mime.decodeparameters"

    .line 2
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/b/m/l;->f:Z

    const-string v0, "mail.mime.decodeparameters.strict"

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/b/m/l;->g:Z

    const-string v0, "mail.mime.applefilenames"

    .line 4
    invoke-static {v0, v2}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/b/m/l;->h:Z

    const-string v0, "mail.mime.windowsfilenames"

    .line 5
    invoke-static {v0, v2}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/b/m/l;->i:Z

    const-string v0, "mail.mime.parameters.strict"

    .line 6
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/b/m/l;->j:Z

    const-string v0, "mail.mime.splitlongparameters"

    .line 7
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/b/m/l;->k:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ld/b/m/l;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ld/b/m/l;->d:Ljava/lang/String;

    .line 4
    sget-boolean v0, Ld/b/m/l;->f:Z

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ld/b/m/l;->b:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld/b/m/l;->c:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    .line 7
    invoke-direct {p0}, Ld/b/m/l;-><init>()V

    .line 8
    new-instance v0, Ld/b/m/c;

    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v1}, Ld/b/m/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {v0}, Ld/b/m/c;->e()Ld/b/m/c$a;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ld/b/m/c$a;->a()I

    move-result v2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    int-to-char v4, v2

    const-string v5, "filename"

    const-string v6, "name"

    const/4 v7, -0x1

    const/16 v8, 0x3b

    const-string v9, "\""

    const-string v10, "In parameter list <"

    if-ne v4, v8, :cond_b

    .line 11
    invoke-virtual {v0}, Ld/b/m/c;->e()Ld/b/m/c$a;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ld/b/m/c$a;->a()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 13
    :goto_1
    sget-boolean p1, Ld/b/m/l;->f:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Ld/b/m/l;->a(Z)V

    :cond_1
    return-void

    .line 15
    :cond_2
    invoke-virtual {v1}, Ld/b/m/c$a;->a()I

    move-result v2

    if-ne v2, v7, :cond_a

    .line 16
    invoke-virtual {v1}, Ld/b/m/c$a;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v0}, Ld/b/m/c;->e()Ld/b/m/c$a;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ld/b/m/c$a;->a()I

    move-result v3

    int-to-char v3, v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_9

    .line 19
    sget-boolean v2, Ld/b/m/l;->i:Z

    if-eqz v2, :cond_4

    .line 20
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v8, v2}, Ld/b/m/c;->g(CZ)Ld/b/m/c$a;

    move-result-object v2

    goto :goto_2

    .line 22
    :cond_4
    sget-boolean v2, Ld/b/m/l;->j:Z

    if-eqz v2, :cond_5

    .line 23
    invoke-virtual {v0}, Ld/b/m/c;->e()Ld/b/m/c$a;

    move-result-object v2

    goto :goto_2

    .line 24
    :cond_5
    invoke-virtual {v0, v8}, Ld/b/m/c;->f(C)Ld/b/m/c$a;

    move-result-object v2

    .line 25
    :goto_2
    invoke-virtual {v2}, Ld/b/m/c$a;->a()I

    move-result v3

    if-eq v3, v7, :cond_7

    const/4 v4, -0x2

    if-ne v3, v4, :cond_6

    goto :goto_3

    .line 26
    :cond_6
    new-instance v0, Ld/b/m/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">, expected parameter value, got \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2}, Ld/b/m/c$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_7
    :goto_3
    invoke-virtual {v2}, Ld/b/m/c$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 29
    iput-object v1, p0, Ld/b/m/l;->d:Ljava/lang/String;

    .line 30
    sget-boolean v3, Ld/b/m/l;->f:Z

    if-eqz v3, :cond_8

    .line 31
    invoke-direct {p0, v1, v2}, Ld/b/m/l;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 32
    :cond_8
    iget-object v3, p0, Ld/b/m/l;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 33
    :cond_9
    new-instance v0, Ld/b/m/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">, expected \'=\', got \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ld/b/m/c$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_a
    new-instance v0, Ld/b/m/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">, expected parameter name, got \""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ld/b/m/c$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-ne v2, v7, :cond_e

    .line 37
    iget-object v2, p0, Ld/b/m/l;->d:Ljava/lang/String;

    if-eqz v2, :cond_e

    sget-boolean v3, Ld/b/m/l;->h:Z

    if-eqz v3, :cond_c

    .line 38
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Ld/b/m/l;->d:Ljava/lang/String;

    .line 39
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    sget-boolean v2, Ld/b/m/l;->j:Z

    if-nez v2, :cond_e

    .line 40
    :cond_d
    iget-object v2, p0, Ld/b/m/l;->a:Ljava/util/Map;

    iget-object v3, p0, Ld/b/m/l;->d:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ld/b/m/c$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    iget-object v2, p0, Ld/b/m/l;->a:Ljava/util/Map;

    iget-object v3, p0, Ld/b/m/l;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 43
    :cond_e
    new-instance v0, Ld/b/m/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">, expected \';\', got \""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ld/b/m/c$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Z)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/b/m/l;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    new-instance v2, Ld/b/m/l$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ld/b/m/l$c;-><init>(Ld/b/m/l$a;)V

    .line 5
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v5, 0x0

    .line 6
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-object v7, p0, Ld/b/m/l;->c:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    instance-of v8, v7, Ld/b/m/l$e;

    if-eqz v8, :cond_9

    .line 10
    check-cast v7, Ld/b/m/l$e;

    if-nez v5, :cond_1

    .line 11
    iget-object v3, v7, Ld/b/m/l$e;->b:Ljava/lang/String;

    goto :goto_6

    :cond_1
    if-nez v3, :cond_8

    .line 12
    iget-object v7, p0, Ld/b/m/l;->b:Ljava/util/Set;

    invoke-interface {v7, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-nez v5, :cond_2

    .line 13
    :try_start_2
    iget-object v2, p0, Ld/b/m/l;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 14
    :try_start_3
    invoke-static {v3}, Ld/b/m/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_4

    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 16
    :cond_4
    invoke-static {}, Ld/b/m/k;->f()Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_6

    .line 17
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ld/b/m/l$c;->b:Ljava/lang/String;

    goto :goto_5

    .line 18
    :cond_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ld/b/m/l$c;->b:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 19
    :goto_4
    :try_start_4
    sget-boolean v5, Ld/b/m/l;->g:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_7

    :try_start_5
    const-string v3, "iso-8859-1"

    .line 20
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ld/b/m/l$c;->b:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 21
    :catch_1
    :goto_5
    :try_start_6
    iget-object v3, p0, Ld/b/m/l;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 22
    :cond_7
    new-instance v0, Ld/b/m/m;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 23
    :cond_8
    :goto_6
    :try_start_7
    iget-object v7, v7, Ld/b/m/l$e;->a:Ljava/lang/String;

    invoke-static {v7, v4}, Ld/b/m/l;->c(Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_7

    .line 24
    :cond_9
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lc/f/b/a/a;->b(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 25
    :catch_2
    :goto_7
    :try_start_8
    iget-object v7, p0, Ld/b/m/l;->c:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 26
    :cond_a
    iget-object p1, p0, Ld/b/m/l;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_e

    .line 27
    iget-object p1, p0, Ld/b/m/l;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 28
    :cond_b
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 30
    instance-of v1, v0, Ld/b/m/l$e;

    if-eqz v1, :cond_b

    .line 31
    check-cast v0, Ld/b/m/l$e;

    .line 32
    :try_start_9
    iget-object v1, v0, Ld/b/m/l$e;->a:Ljava/lang/String;

    iget-object v2, v0, Ld/b/m/l$e;->b:Ljava/lang/String;

    .line 33
    invoke-static {v1, v2}, Ld/b/m/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ld/b/m/l$e;->a:Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    .line 34
    sget-boolean v1, Ld/b/m/l;->g:Z

    if-nez v1, :cond_c

    goto :goto_8

    .line 35
    :cond_c
    new-instance p1, Ld/b/m/m;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_d
    iget-object p1, p0, Ld/b/m/l;->a:Ljava/util/Map;

    iget-object v0, p0, Ld/b/m/l;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 37
    :cond_e
    iget-object p1, p0, Ld/b/m/l;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 38
    iget-object p1, p0, Ld/b/m/l;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void

    :catchall_0
    move-exception v0

    if-nez p1, :cond_f

    goto :goto_a

    .line 39
    :cond_f
    iget-object p1, p0, Ld/b/m/l;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_13

    .line 40
    iget-object p1, p0, Ld/b/m/l;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 41
    :cond_10
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 43
    instance-of v2, v1, Ld/b/m/l$e;

    if-eqz v2, :cond_10

    .line 44
    check-cast v1, Ld/b/m/l$e;

    .line 45
    :try_start_a
    iget-object v2, v1, Ld/b/m/l$e;->a:Ljava/lang/String;

    iget-object v3, v1, Ld/b/m/l$e;->b:Ljava/lang/String;

    .line 46
    invoke-static {v2, v3}, Ld/b/m/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ld/b/m/l$e;->a:Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_9

    :catch_4
    move-exception v1

    .line 47
    sget-boolean v2, Ld/b/m/l;->g:Z

    if-nez v2, :cond_11

    goto :goto_9

    .line 48
    :cond_11
    new-instance p1, Ld/b/m/m;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_12
    iget-object p1, p0, Ld/b/m/l;->a:Ljava/util/Map;

    iget-object v1, p0, Ld/b/m/l;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 50
    :cond_13
    iget-object p1, p0, Ld/b/m/l;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 51
    iget-object p1, p0, Ld/b/m/l;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :goto_a
    throw v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_2

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v2, 0x3

    .line 4
    :try_start_0
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    .line 5
    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v4, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :catch_0
    move-exception v5

    .line 6
    sget-boolean v6, Ld/b/m/l;->g:Z

    if-nez v6, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    new-instance p0, Ld/b/m/m;

    invoke-virtual {v5}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception v5

    .line 8
    sget-boolean v6, Ld/b/m/l;->g:Z

    if-nez v6, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    new-instance p0, Ld/b/m/m;

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    .line 10
    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 11
    invoke-static {p1}, Ld/b/m/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_6

    .line 13
    :cond_5
    invoke-static {}, Ld/b/m/k;->f()Ljava/lang/String;

    move-result-object p1

    .line 14
    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x3

    .line 3
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v1, v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 5
    sget-boolean v3, Ld/b/m/l;->g:Z

    if-nez v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance p0, Ld/b/m/m;

    invoke-virtual {v2}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception v2

    .line 7
    sget-boolean v3, Ld/b/m/l;->g:Z

    if-nez v3, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance p0, Ld/b/m/m;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    int-to-byte v1, v1

    .line 9
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static d(Ljava/lang/String;)Ld/b/m/l$e;
    .locals 4

    .line 1
    new-instance v0, Ld/b/m/l$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/b/m/l$e;-><init>(Ld/b/m/l$a;)V

    .line 2
    iput-object p0, v0, Ld/b/m/l$e;->c:Ljava/lang/String;

    iput-object p0, v0, Ld/b/m/l$e;->a:Ljava/lang/String;

    const/16 v1, 0x27

    .line 3
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    .line 4
    sget-boolean v1, Ld/b/m/l;->g:Z

    if-nez v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v1, Ld/b/m/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing charset in encoded value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v3, 0x0

    .line 6
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 7
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_3

    .line 8
    sget-boolean v1, Ld/b/m/l;->g:Z

    if-nez v1, :cond_2

    return-object v0

    .line 9
    :cond_2
    new-instance v1, Ld/b/m/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing language in encoded value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Ld/b/m/l$e;->a:Ljava/lang/String;

    .line 11
    iput-object v3, v0, Ld/b/m/l$e;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    sget-boolean v1, Ld/b/m/l;->g:Z

    if-nez v1, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    new-instance v0, Ld/b/m/m;

    invoke-virtual {p0}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    .line 14
    sget-boolean v1, Ld/b/m/l;->g:Z

    if-nez v1, :cond_5

    :goto_0
    return-object v0

    .line 15
    :cond_5
    new-instance v0, Ld/b/m/m;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x2a

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Ld/b/m/l;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p2}, Ld/b/m/l;->d(Ljava/lang/String;)Ld/b/m/l$e;

    move-result-object p2

    .line 6
    :try_start_0
    iget-object v0, p2, Ld/b/m/l$e;->a:Ljava/lang/String;

    iget-object v1, p2, Ld/b/m/l$e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ld/b/m/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Ld/b/m/l$e;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    sget-boolean v1, Ld/b/m/l;->g:Z

    if-nez v1, :cond_1

    .line 8
    :goto_0
    iget-object v0, p0, Ld/b/m/l;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 9
    :cond_1
    new-instance p1, Ld/b/m/m;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Ld/b/m/l;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, p0, Ld/b/m/l;->a:Ljava/util/Map;

    const-string v3, ""

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "*"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "*0*"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-static {p2}, Ld/b/m/l;->d(Ljava/lang/String;)Ld/b/m/l$e;

    move-result-object p2

    goto :goto_1

    .line 16
    :cond_3
    new-instance v0, Ld/b/m/l$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/b/m/l$e;-><init>(Ld/b/m/l$a;)V

    .line 17
    iput-object p2, v0, Ld/b/m/l$e;->c:Ljava/lang/String;

    .line 18
    iput-object p2, v0, Ld/b/m/l$e;->a:Ljava/lang/String;

    move-object p2, v0

    .line 19
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 20
    :cond_4
    iget-object v0, p0, Ld/b/m/l;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "()<>@,;:\\\"\t []/?="

    .line 1
    invoke-static {p0, v0}, Ld/b/m/k;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/m/l;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ld/b/m/l$c;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ld/b/m/l$c;

    iget-object p1, p1, Ld/b/m/l$c;->b:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Ld/b/m/l$b;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Ld/b/m/l$b;

    iget-object p1, p1, Ld/b/m/l$b;->a:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    instance-of v0, p1, Ld/b/m/l$e;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Ld/b/m/l$e;

    iget-object p1, p1, Ld/b/m/l$e;->a:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_2
    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public h(I)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ld/b/m/l$d;

    invoke-direct {v0, p1}, Ld/b/m/l$d;-><init>(I)V

    .line 2
    iget-object p1, p0, Ld/b/m/l;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 7
    instance-of v3, v1, Ld/b/m/l$c;

    const/4 v4, 0x0

    const-string v5, "*"

    if-eqz v3, :cond_2

    .line 8
    check-cast v1, Ld/b/m/l$c;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_0

    .line 11
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 12
    instance-of v6, v3, Ld/b/m/l$e;

    if-eqz v6, :cond_1

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 14
    check-cast v3, Ld/b/m/l$e;

    iget-object v3, v3, Ld/b/m/l$e;->c:Ljava/lang/String;

    goto :goto_2

    .line 15
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 16
    check-cast v3, Ljava/lang/String;

    .line 17
    :goto_2
    invoke-static {v3}, Ld/b/m/l;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Ld/b/m/l$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 18
    :cond_2
    instance-of v3, v1, Ld/b/m/l$b;

    if-eqz v3, :cond_3

    .line 19
    check-cast v1, Ld/b/m/l$b;

    iget-object v1, v1, Ld/b/m/l$b;->a:Ljava/lang/String;

    .line 20
    invoke-static {v1}, Ld/b/m/l;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ld/b/m/l$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_3
    instance-of v3, v1, Ld/b/m/l$e;

    if-eqz v3, :cond_4

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    check-cast v1, Ld/b/m/l$e;

    iget-object v1, v1, Ld/b/m/l$e;->c:Ljava/lang/String;

    .line 24
    invoke-static {v1}, Ld/b/m/l;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ld/b/m/l$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 25
    :cond_4
    check-cast v1, Ljava/lang/String;

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x3c

    if-le v3, v6, :cond_6

    sget-boolean v3, Ld/b/m/l;->k:Z

    if-eqz v3, :cond_6

    sget-boolean v3, Ld/b/m/l;->e:Z

    if-eqz v3, :cond_6

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v4

    .line 28
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_5

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ld/b/m/l;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ld/b/m/l$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 31
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ld/b/m/l;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ld/b/m/l$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 33
    :cond_6
    invoke-static {v1}, Ld/b/m/l;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ld/b/m/l$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 34
    :cond_7
    invoke-virtual {v0}, Ld/b/m/l$d;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ld/b/m/l;->h(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
