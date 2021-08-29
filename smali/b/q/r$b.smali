.class Lb/q/r$b;
.super Lb/q/o;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lb/q/r;


# direct methods
.method constructor <init>(Lb/q/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/q/o;-><init>()V

    .line 2
    iput-object p1, p0, Lb/q/r$b;->a:Lb/q/r;

    return-void
.end method


# virtual methods
.method public a(Lb/q/n;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/q/r$b;->a:Lb/q/r;

    iget-boolean v0, p1, Lb/q/r;->e:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lb/q/n;->start()V

    .line 3
    iget-object p1, p0, Lb/q/r$b;->a:Lb/q/r;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lb/q/r;->e:Z

    :cond_0
    return-void
.end method

.method public e(Lb/q/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/q/r$b;->a:Lb/q/r;

    iget v1, v0, Lb/q/r;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lb/q/r;->d:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lb/q/r;->e:Z

    .line 3
    invoke-virtual {v0}, Lb/q/n;->end()V

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Lb/q/n;->removeListener(Lb/q/n$g;)Lb/q/n;

    return-void
.end method
