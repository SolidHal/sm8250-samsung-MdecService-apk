.class public Lc/a/b/p;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/b/p$a;,
        Lc/a/b/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lc/a/b/b$a;

.field public final c:Lc/a/b/u;

.field public d:Z


# direct methods
.method private constructor <init>(Lc/a/b/u;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lc/a/b/p;->d:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lc/a/b/p;->a:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lc/a/b/p;->b:Lc/a/b/b$a;

    .line 10
    iput-object p1, p0, Lc/a/b/p;->c:Lc/a/b/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lc/a/b/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/a/b/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/a/b/p;->d:Z

    .line 3
    iput-object p1, p0, Lc/a/b/p;->a:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lc/a/b/p;->b:Lc/a/b/b$a;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lc/a/b/p;->c:Lc/a/b/u;

    return-void
.end method

.method public static a(Lc/a/b/u;)Lc/a/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/b/u;",
            ")",
            "Lc/a/b/p<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/a/b/p;

    invoke-direct {v0, p0}, Lc/a/b/p;-><init>(Lc/a/b/u;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;Lc/a/b/b$a;)Lc/a/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lc/a/b/b$a;",
            ")",
            "Lc/a/b/p<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/a/b/p;

    invoke-direct {v0, p0, p1}, Lc/a/b/p;-><init>(Ljava/lang/Object;Lc/a/b/b$a;)V

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/b/p;->c:Lc/a/b/u;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
