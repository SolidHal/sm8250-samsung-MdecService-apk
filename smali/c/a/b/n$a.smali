.class Lc/a/b/n$a;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/b/n;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lc/a/b/n;


# direct methods
.method constructor <init>(Lc/a/b/n;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/a/b/n$a;->d:Lc/a/b/n;

    iput-object p2, p0, Lc/a/b/n$a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lc/a/b/n$a;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/a/b/n$a;->d:Lc/a/b/n;

    invoke-static {v0}, Lc/a/b/n;->access$000(Lc/a/b/n;)Lc/a/b/v$a;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/n$a;->b:Ljava/lang/String;

    iget-wide v2, p0, Lc/a/b/n$a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lc/a/b/v$a;->a(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Lc/a/b/n$a;->d:Lc/a/b/n;

    invoke-static {v0}, Lc/a/b/n;->access$000(Lc/a/b/n;)Lc/a/b/v$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/b/v$a;->b(Ljava/lang/String;)V

    return-void
.end method
