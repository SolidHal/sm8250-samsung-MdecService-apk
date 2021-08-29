.class public Ld/b/m/a;
.super Ljava/lang/Object;
.source "ContentDisposition.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ld/b/m/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ld/b/m/c;

    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v1}, Ld/b/m/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ld/b/m/c;->e()Ld/b/m/c$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ld/b/m/c$a;->a()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {p1}, Ld/b/m/c$a;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld/b/m/a;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ld/b/m/c;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Ld/b/m/l;

    invoke-direct {v0, p1}, Ld/b/m/l;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ld/b/m/a;->b:Ld/b/m/l;

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance v0, Ld/b/m/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected disposition, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Ld/b/m/c$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ld/b/m/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/m/a;->b:Ld/b/m/l;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ld/b/m/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ld/b/m/a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Ld/b/m/a;->b:Ld/b/m/l;

    if-nez v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Ld/b/m/a;->b:Ld/b/m/l;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-virtual {v0, v2}, Ld/b/m/l;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
