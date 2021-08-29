.class public Ld/b/m/d;
.super Ljava/lang/Object;
.source "InternetHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/m/d$a;
    }
.end annotation


# static fields
.field private static final b:Z


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/b/m/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "mail.mime.ignorewhitespacelines"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lc/f/b/a/h;->b(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld/b/m/d;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    .line 3
    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Return-Path"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Received"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Resent-Date"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Resent-From"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Resent-Sender"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Resent-To"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Resent-Cc"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Resent-Bcc"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Resent-Message-Id"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Date"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "From"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Sender"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Reply-To"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "To"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Cc"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Bcc"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Message-Id"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "In-Reply-To"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "References"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Subject"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Comments"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Keywords"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Errors-To"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "MIME-Version"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Content-Type"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Content-Transfer-Encoding"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Content-MD5"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, ":"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Content-Length"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    const-string v2, "Status"

    invoke-direct {v1, v2, v3}, Ld/b/m/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Ld/b/m/d;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    .line 36
    invoke-virtual {p0, p1, p2}, Ld/b/m/d;->e(Ljava/io/InputStream;Z)V

    return-void
.end method

.method private static final d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Ld/b/m/d;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    new-instance v1, Ld/b/m/d$a;

    invoke-direct {v1, p1}, Ld/b/m/d$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    iget-object v1, p0, Ld/b/m/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/b/m/d$a;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Ld/b/m/d$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Ld/b/m/d$a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ld/b/m/d;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_2

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    :goto_1
    aget-object p1, p1, v1

    return-object p1
.end method

.method public c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Ld/b/m/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/b/m/d$a;

    .line 5
    invoke-virtual {v2}, Ld/b/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Ld/b/m/d$a;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2}, Ld/b/m/d$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 9
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public e(Ljava/io/InputStream;Z)V
    .locals 6

    .line 1
    new-instance v0, Lc/f/b/a/e;

    invoke-direct {v0, p1, p2}, Lc/f/b/a/e;-><init>(Ljava/io/InputStream;Z)V

    .line 2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lc/f/b/a/e;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, " "

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v3, v2

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-lez p2, :cond_3

    const-string p2, "\r\n"

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    .line 12
    invoke-virtual {p0, v3}, Ld/b/m/d;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    if-lez p2, :cond_6

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ld/b/m/d;->a(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_6
    :goto_1
    move-object v3, v4

    :cond_7
    :goto_2
    if-eqz v4, :cond_9

    .line 16
    invoke-static {v4}, Ld/b/m/d;->d(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    move p2, v1

    goto :goto_0

    :cond_9
    :goto_3
    return-void

    :catch_0
    move-exception p1

    .line 17
    new-instance p2, Ld/b/i;

    const-string v0, "Error in input stream"

    invoke-direct {p2, v0, p1}, Ld/b/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
