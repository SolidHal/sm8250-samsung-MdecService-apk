.class Ld/a/g;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Ld/a/c;


# instance fields
.field private a:Ld/a/f;

.field private b:Ld/a/c;


# direct methods
.method public constructor <init>(Ld/a/c;Ld/a/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ld/a/g;->a:Ld/a/f;

    .line 3
    iput-object v0, p0, Ld/a/g;->b:Ld/a/c;

    .line 4
    iput-object p2, p0, Ld/a/g;->a:Ld/a/f;

    .line 5
    iput-object p1, p0, Ld/a/g;->b:Ld/a/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a/g;->b:Ld/a/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Ld/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ld/a/n;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no DCH for content type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ld/a/g;->a:Ld/a/f;

    .line 4
    invoke-interface {p3}, Ld/a/f;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ld/a/n;-><init>(Ljava/lang/String;)V

    throw p1
.end method
