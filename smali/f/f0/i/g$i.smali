.class final Lf/f0/i/g$i;
.super Lf/f0/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/f0/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "i"
.end annotation


# instance fields
.field final c:Z

.field final d:I

.field final e:I

.field final synthetic f:Lf/f0/i/g;


# direct methods
.method constructor <init>(Lf/f0/i/g;ZII)V
    .locals 2

    .line 1
    iput-object p1, p0, Lf/f0/i/g$i;->f:Lf/f0/i/g;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lf/f0/i/g;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, p1, v0}, Lf/f0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-boolean p2, p0, Lf/f0/i/g$i;->c:Z

    .line 4
    iput p3, p0, Lf/f0/i/g$i;->d:I

    .line 5
    iput p4, p0, Lf/f0/i/g$i;->e:I

    return-void
.end method


# virtual methods
.method public k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/f0/i/g$i;->f:Lf/f0/i/g;

    iget-boolean v1, p0, Lf/f0/i/g$i;->c:Z

    iget v2, p0, Lf/f0/i/g$i;->d:I

    iget v3, p0, Lf/f0/i/g$i;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lf/f0/i/g;->d0(ZII)V

    return-void
.end method
