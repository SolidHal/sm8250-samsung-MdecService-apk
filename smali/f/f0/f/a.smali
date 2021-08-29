.class public final Lf/f0/f/a;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lf/t;


# instance fields
.field public final a:Lf/w;


# direct methods
.method public constructor <init>(Lf/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/f0/f/a;->a:Lf/w;

    return-void
.end method


# virtual methods
.method public intercept(Lf/t$a;)Lf/b0;
    .locals 5

    .line 1
    move-object v0, p1

    check-cast v0, Lf/f0/g/g;

    .line 2
    invoke-virtual {v0}, Lf/f0/g/g;->e()Lf/z;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lf/f0/g/g;->k()Lf/f0/f/g;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lf/z;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 5
    iget-object v4, p0, Lf/f0/f/a;->a:Lf/w;

    invoke-virtual {v2, v4, p1, v3}, Lf/f0/f/g;->h(Lf/w;Lf/t$a;Z)Lf/f0/g/c;

    move-result-object p1

    .line 6
    invoke-virtual {v2}, Lf/f0/f/g;->c()Lf/f0/f/c;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v1, v2, p1, v3}, Lf/f0/g/g;->j(Lf/z;Lf/f0/f/g;Lf/f0/g/c;Lf/f0/f/c;)Lf/b0;

    move-result-object p1

    return-object p1
.end method
