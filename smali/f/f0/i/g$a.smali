.class Lf/f0/i/g$a;
.super Lf/f0/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/f0/i/g;->f0(ILf/f0/i/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Lf/f0/i/b;

.field final synthetic e:Lf/f0/i/g;


# direct methods
.method varargs constructor <init>(Lf/f0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILf/f0/i/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/f0/i/g$a;->e:Lf/f0/i/g;

    iput p4, p0, Lf/f0/i/g$a;->c:I

    iput-object p5, p0, Lf/f0/i/g$a;->d:Lf/f0/i/b;

    invoke-direct {p0, p2, p3}, Lf/f0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/f0/i/g$a;->e:Lf/f0/i/g;

    iget v1, p0, Lf/f0/i/g$a;->c:I

    iget-object v2, p0, Lf/f0/i/g$a;->d:Lf/f0/i/b;

    invoke-virtual {v0, v1, v2}, Lf/f0/i/g;->e0(ILf/f0/i/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lf/f0/i/g$a;->e:Lf/f0/i/g;

    invoke-static {v0}, Lf/f0/i/g;->f(Lf/f0/i/g;)V

    :goto_0
    return-void
.end method
