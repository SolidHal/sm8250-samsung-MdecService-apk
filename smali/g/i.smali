.class public Lg/i;
.super Lg/t;
.source "ForwardingTimeout.java"


# instance fields
.field private e:Lg/t;


# direct methods
.method public constructor <init>(Lg/t;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/t;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lg/i;->e:Lg/t;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lg/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i;->e:Lg/t;

    invoke-virtual {v0}, Lg/t;->a()Lg/t;

    move-result-object v0

    return-object v0
.end method

.method public b()Lg/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i;->e:Lg/t;

    invoke-virtual {v0}, Lg/t;->b()Lg/t;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lg/i;->e:Lg/t;

    invoke-virtual {v0}, Lg/t;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lg/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i;->e:Lg/t;

    invoke-virtual {v0, p1, p2}, Lg/t;->d(J)Lg/t;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i;->e:Lg/t;

    invoke-virtual {v0}, Lg/t;->e()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i;->e:Lg/t;

    invoke-virtual {v0}, Lg/t;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lg/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i;->e:Lg/t;

    invoke-virtual {v0, p1, p2, p3}, Lg/t;->g(JLjava/util/concurrent/TimeUnit;)Lg/t;

    move-result-object p1

    return-object p1
.end method

.method public h()J
    .locals 2

    .line 1
    iget-object v0, p0, Lg/i;->e:Lg/t;

    invoke-virtual {v0}, Lg/t;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()Lg/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i;->e:Lg/t;

    return-object v0
.end method

.method public final j(Lg/t;)Lg/i;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lg/i;->e:Lg/t;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
