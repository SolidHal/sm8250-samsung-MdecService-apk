.class public Ld/b/m/b;
.super Ljava/lang/Object;
.source "ContentType.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ld/b/m/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ld/b/m/c;

    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v1}, Ld/b/m/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ld/b/m/c;->e()Ld/b/m/c$a;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ld/b/m/c$a;->a()I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "In Content-Type string <"

    if-ne v2, v3, :cond_3

    .line 5
    invoke-virtual {v1}, Ld/b/m/c$a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ld/b/m/b;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ld/b/m/c;->e()Ld/b/m/c$a;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ld/b/m/c$a;->a()I

    move-result v2

    int-to-char v2, v2

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_2

    .line 8
    invoke-virtual {v0}, Ld/b/m/c;->e()Ld/b/m/c$a;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ld/b/m/c$a;->a()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 10
    invoke-virtual {v1}, Ld/b/m/c$a;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld/b/m/b;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Ld/b/m/c;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    new-instance v0, Ld/b/m/l;

    invoke-direct {v0, p1}, Ld/b/m/l;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ld/b/m/b;->c:Ld/b/m/l;

    :cond_0
    return-void

    .line 13
    :cond_1
    new-instance v0, Ld/b/m/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">, expected MIME subtype, got "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ld/b/m/c$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_2
    new-instance v0, Ld/b/m/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">, expected \'/\', got "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ld/b/m/c$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_3
    new-instance v0, Ld/b/m/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">, expected MIME type, got "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ld/b/m/c$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/m/b;->c:Ld/b/m/l;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ld/b/m/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/m/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/m/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ld/b/m/b;

    invoke-direct {v0, p1}, Ld/b/m/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ld/b/m/b;->e(Ld/b/m/b;)Z

    move-result p1
    :try_end_0
    .catch Ld/b/m/m; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public e(Ld/b/m/b;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ld/b/m/b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ld/b/m/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ld/b/m/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p1}, Ld/b/m/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Ld/b/m/b;->c()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Ld/b/m/b;->b:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "*"

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return v2

    .line 6
    :cond_4
    iget-object v0, p0, Ld/b/m/b;->b:Ljava/lang/String;

    if-nez v0, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    iget-object v0, p0, Ld/b/m/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ld/b/m/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld/b/m/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    iget-object v1, p0, Ld/b/m/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ld/b/m/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    iget-object v1, p0, Ld/b/m/b;->c:Ld/b/m/l;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-virtual {v1, v2}, Ld/b/m/l;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const-string v0, ""

    return-object v0
.end method
