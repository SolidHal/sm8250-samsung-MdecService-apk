.class public Lf/z$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lf/s;

.field b:Ljava/lang/String;

.field c:Lf/r$a;

.field d:Lf/a0;

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 2
    iput-object v0, p0, Lf/z$a;->b:Ljava/lang/String;

    .line 3
    new-instance v0, Lf/r$a;

    invoke-direct {v0}, Lf/r$a;-><init>()V

    iput-object v0, p0, Lf/z$a;->c:Lf/r$a;

    return-void
.end method

.method constructor <init>(Lf/z;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, Lf/z;->a:Lf/s;

    iput-object v0, p0, Lf/z$a;->a:Lf/s;

    .line 6
    iget-object v0, p1, Lf/z;->b:Ljava/lang/String;

    iput-object v0, p0, Lf/z$a;->b:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lf/z;->d:Lf/a0;

    iput-object v0, p0, Lf/z$a;->d:Lf/a0;

    .line 8
    iget-object v0, p1, Lf/z;->e:Ljava/lang/Object;

    iput-object v0, p0, Lf/z$a;->e:Ljava/lang/Object;

    .line 9
    iget-object p1, p1, Lf/z;->c:Lf/r;

    invoke-virtual {p1}, Lf/r;->d()Lf/r$a;

    move-result-object p1

    iput-object p1, p0, Lf/z$a;->c:Lf/r$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lf/z$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z$a;->c:Lf/r$a;

    invoke-virtual {v0, p1, p2}, Lf/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/r$a;

    return-object p0
.end method

.method public b()Lf/z;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/z$a;->a:Lf/s;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lf/z;

    invoke-direct {v0, p0}, Lf/z;-><init>(Lf/z$a;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lf/z$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z$a;->c:Lf/r$a;

    invoke-virtual {v0, p1, p2}, Lf/r$a;->g(Ljava/lang/String;Ljava/lang/String;)Lf/r$a;

    return-object p0
.end method

.method public d(Lf/r;)Lf/z$a;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lf/r;->d()Lf/r$a;

    move-result-object p1

    iput-object p1, p0, Lf/z$a;->c:Lf/r$a;

    return-object p0
.end method

.method public e(Ljava/lang/String;Lf/a0;)Lf/z$a;
    .locals 2
    .param p2    # Lf/a0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "method "

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p1}, Lf/f0/g/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 4
    invoke-static {p1}, Lf/f0/g/f;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_3
    :goto_1
    iput-object p1, p0, Lf/z$a;->b:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lf/z$a;->d:Lf/a0;

    return-object p0

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/lang/String;)Lf/z$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z$a;->c:Lf/r$a;

    invoke-virtual {v0, p1}, Lf/r$a;->f(Ljava/lang/String;)Lf/r$a;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lf/z$a;
    .locals 6

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v3, "ws:"

    move-object v0, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_1
    :goto_0
    invoke-static {p1}, Lf/s;->p(Ljava/lang/String;)Lf/s;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Lf/z$a;->h(Lf/s;)Lf/z$a;

    return-object p0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Lf/s;)Lf/z$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lf/z$a;->a:Lf/s;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
