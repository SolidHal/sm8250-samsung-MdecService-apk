.class public abstract Lg/h;
.super Ljava/lang/Object;
.source "ForwardingSource.java"

# interfaces
.implements Lg/s;


# instance fields
.field private final delegate:Lg/s;


# direct methods
.method public constructor <init>(Lg/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lg/h;->delegate:Lg/s;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/h;->delegate:Lg/s;

    invoke-interface {v0}, Lg/s;->close()V

    return-void
.end method

.method public final delegate()Lg/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/h;->delegate:Lg/s;

    return-object v0
.end method

.method public read(Lg/c;J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lg/h;->delegate:Lg/s;

    invoke-interface {v0, p1, p2, p3}, Lg/s;->read(Lg/c;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public timeout()Lg/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/h;->delegate:Lg/s;

    invoke-interface {v0}, Lg/s;->timeout()Lg/t;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/h;->delegate:Lg/s;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
