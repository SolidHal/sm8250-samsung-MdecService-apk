.class Lb/k/a/b$c;
.super Landroidx/lifecycle/t;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static final b:Landroidx/lifecycle/u$b;


# instance fields
.field private a:Lb/d/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/d/h<",
            "Lb/k/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb/k/a/b$c$a;

    invoke-direct {v0}, Lb/k/a/b$c$a;-><init>()V

    sput-object v0, Lb/k/a/b$c;->b:Landroidx/lifecycle/u$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t;-><init>()V

    .line 2
    new-instance v0, Lb/d/h;

    invoke-direct {v0}, Lb/d/h;-><init>()V

    iput-object v0, p0, Lb/k/a/b$c;->a:Lb/d/h;

    return-void
.end method

.method static b(Landroidx/lifecycle/w;)Lb/k/a/b$c;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/u;

    sget-object v1, Lb/k/a/b$c;->b:Landroidx/lifecycle/u$b;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/w;Landroidx/lifecycle/u$b;)V

    const-class p0, Lb/k/a/b$c;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/u;->a(Ljava/lang/Class;)Landroidx/lifecycle/t;

    move-result-object p0

    check-cast p0, Lb/k/a/b$c;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/k/a/b$c;->a:Lb/d/h;

    invoke-virtual {v0}, Lb/d/h;->n()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lb/k/a/b$c;->a:Lb/d/h;

    invoke-virtual {v2}, Lb/d/h;->n()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lb/k/a/b$c;->a:Lb/d/h;

    invoke-virtual {v2, v1}, Lb/d/h;->o(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/k/a/b$a;

    .line 6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lb/k/a/b$c;->a:Lb/d/h;

    invoke-virtual {v3, v1}, Lb/d/h;->j(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 7
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lb/k/a/b$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v0, p2, p3, p4}, Lb/k/a/b$a;->m(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/k/a/b$c;->a:Lb/d/h;

    invoke-virtual {v0}, Lb/d/h;->n()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lb/k/a/b$c;->a:Lb/d/h;

    invoke-virtual {v2, v1}, Lb/d/h;->o(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/k/a/b$a;

    .line 3
    invoke-virtual {v2}, Lb/k/a/b$a;->o()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/t;->onCleared()V

    .line 2
    iget-object v0, p0, Lb/k/a/b$c;->a:Lb/d/h;

    invoke-virtual {v0}, Lb/d/h;->n()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lb/k/a/b$c;->a:Lb/d/h;

    invoke-virtual {v2, v1}, Lb/d/h;->o(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/k/a/b$a;

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Lb/k/a/b$a;->l(Z)Lb/k/b/a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lb/k/a/b$c;->a:Lb/d/h;

    invoke-virtual {v0}, Lb/d/h;->b()V

    return-void
.end method
