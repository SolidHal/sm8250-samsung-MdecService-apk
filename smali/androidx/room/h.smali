.class Landroidx/room/h;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field c:I

.field final d:Landroidx/room/g;

.field final e:Landroidx/room/g$c;

.field f:Landroidx/room/e;

.field final g:Ljava/util/concurrent/Executor;

.field final h:Landroidx/room/d;

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final j:Landroid/content/ServiceConnection;

.field final k:Ljava/lang/Runnable;

.field final l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/g;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/room/h$a;

    invoke-direct {v0, p0}, Landroidx/room/h$a;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/room/h;->h:Landroidx/room/d;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Landroidx/room/h$b;

    invoke-direct {v0, p0}, Landroidx/room/h$b;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/room/h;->j:Landroid/content/ServiceConnection;

    .line 5
    new-instance v0, Landroidx/room/h$c;

    invoke-direct {v0, p0}, Landroidx/room/h$c;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/room/h;->k:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Landroidx/room/h$d;

    invoke-direct {v0, p0}, Landroidx/room/h$d;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/room/h;->l:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Landroidx/room/h$e;

    invoke-direct {v0, p0}, Landroidx/room/h$e;-><init>(Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/room/h;->m:Ljava/lang/Runnable;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/h;->a:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Landroidx/room/h;->b:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Landroidx/room/h;->d:Landroidx/room/g;

    .line 11
    iput-object p4, p0, Landroidx/room/h;->g:Ljava/util/concurrent/Executor;

    .line 12
    new-instance p1, Landroidx/room/h$f;

    iget-object p2, p3, Landroidx/room/g;->b:[Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Landroidx/room/h$f;-><init>(Landroidx/room/h;[Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/h;->e:Landroidx/room/g$c;

    .line 13
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Landroidx/room/h;->a:Landroid/content/Context;

    const-class p3, Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    iget-object p2, p0, Landroidx/room/h;->a:Landroid/content/Context;

    iget-object p3, p0, Landroidx/room/h;->j:Landroid/content/ServiceConnection;

    const/4 p4, 0x1

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/room/h;->g:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/room/h;->m:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
