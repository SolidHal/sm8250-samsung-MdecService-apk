.class abstract Lc/b/a/i/b/g;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field static final b:Lc/b/a/i/b/g;


# instance fields
.field private final a:Lc/b/a/i/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lc/b/a/i/b/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lc/b/a/i/b/e;-><init>(Lc/b/a/i/b/g;II)V

    sput-object v0, Lc/b/a/i/b/g;->b:Lc/b/a/i/b/g;

    return-void
.end method

.method constructor <init>(Lc/b/a/i/b/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/i/b/g;->a:Lc/b/a/i/b/g;

    return-void
.end method


# virtual methods
.method final a(II)Lc/b/a/i/b/g;
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/i/b/e;

    invoke-direct {v0, p0, p1, p2}, Lc/b/a/i/b/e;-><init>(Lc/b/a/i/b/g;II)V

    return-object v0
.end method

.method final b(II)Lc/b/a/i/b/g;
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/i/b/b;

    invoke-direct {v0, p0, p1, p2}, Lc/b/a/i/b/b;-><init>(Lc/b/a/i/b/g;II)V

    return-object v0
.end method

.method abstract c(Lc/b/a/j/a;[B)V
.end method

.method final d()Lc/b/a/i/b/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/i/b/g;->a:Lc/b/a/i/b/g;

    return-object v0
.end method
