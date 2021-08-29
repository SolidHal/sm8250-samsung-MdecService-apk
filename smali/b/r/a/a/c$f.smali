.class abstract Lb/r/a/a/c$f;
.super Lb/r/a/a/c$e;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation


# instance fields
.field protected a:[Lb/f/d/b$b;

.field b:Ljava/lang/String;

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lb/r/a/a/c$e;-><init>(Lb/r/a/a/c$a;)V

    .line 2
    iput-object v0, p0, Lb/r/a/a/c$f;->a:[Lb/f/d/b$b;

    return-void
.end method

.method public constructor <init>(Lb/r/a/a/c$f;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lb/r/a/a/c$e;-><init>(Lb/r/a/a/c$a;)V

    .line 4
    iput-object v0, p0, Lb/r/a/a/c$f;->a:[Lb/f/d/b$b;

    .line 5
    iget-object v0, p1, Lb/r/a/a/c$f;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/r/a/a/c$f;->b:Ljava/lang/String;

    .line 6
    iget v0, p1, Lb/r/a/a/c$f;->c:I

    iput v0, p0, Lb/r/a/a/c$f;->c:I

    .line 7
    iget-object p1, p1, Lb/r/a/a/c$f;->a:[Lb/f/d/b$b;

    invoke-static {p1}, Lb/f/d/b;->d([Lb/f/d/b$b;)[Lb/f/d/b$b;

    move-result-object p1

    iput-object p1, p0, Lb/r/a/a/c$f;->a:[Lb/f/d/b$b;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/r/a/a/c$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/graphics/Path;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lb/r/a/a/c$f;->a:[Lb/f/d/b$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, p1}, Lb/f/d/b$b;->d([Lb/f/d/b$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method
