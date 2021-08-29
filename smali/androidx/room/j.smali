.class public abstract Landroidx/room/j;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/j$b;,
        Landroidx/room/j$d;,
        Landroidx/room/j$a;,
        Landroidx/room/j$c;
    }
.end annotation


# static fields
.field private static final DB_IMPL_SUFFIX:Ljava/lang/String; = "_Impl"

.field public static final MAX_BIND_PARAMETER_CNT:I = 0x3e7


# instance fields
.field private mAllowMainThreadQueries:Z

.field private final mBackingFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/j$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected volatile mDatabase:Lb/p/a/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mInvalidationTracker:Landroidx/room/g;

.field private mOpenHelper:Lb/p/a/c;

.field private mQueryExecutor:Ljava/util/concurrent/Executor;

.field private final mSuspendingTransactionId:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionExecutor:Ljava/util/concurrent/Executor;

.field mWriteAheadLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/room/j;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/j;->mSuspendingTransactionId:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/j;->mBackingFieldMap:Ljava/util/Map;

    .line 5
    invoke-virtual {p0}, Landroidx/room/j;->createInvalidationTracker()Landroidx/room/g;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/j;->mInvalidationTracker:Landroidx/room/g;

    return-void
.end method

.method private static isMainThread()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public assertNotMainThread()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/room/j;->mAllowMainThreadQueries:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroidx/room/j;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertNotSuspendingTransaction()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/j;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/j;->mSuspendingTransactionId:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public beginTransaction()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/room/j;->assertNotMainThread()V

    .line 2
    iget-object v0, p0, Landroidx/room/j;->mOpenHelper:Lb/p/a/c;

    invoke-interface {v0}, Lb/p/a/c;->getWritableDatabase()Lb/p/a/b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/room/j;->mInvalidationTracker:Landroidx/room/g;

    invoke-virtual {v1, v0}, Landroidx/room/g;->p(Lb/p/a/b;)V

    .line 4
    invoke-interface {v0}, Lb/p/a/b;->beginTransaction()V

    return-void
.end method

.method public abstract clearAllTables()V
.end method

.method public close()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/j;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/room/j;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    iget-object v1, p0, Landroidx/room/j;->mInvalidationTracker:Landroidx/room/g;

    invoke-virtual {v1}, Landroidx/room/g;->m()V

    .line 5
    iget-object v1, p0, Landroidx/room/j;->mOpenHelper:Lb/p/a/c;

    invoke-interface {v1}, Lb/p/a/c;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Lb/p/a/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/j;->assertNotMainThread()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v0, p0, Landroidx/room/j;->mOpenHelper:Lb/p/a/c;

    invoke-interface {v0}, Lb/p/a/c;->getWritableDatabase()Lb/p/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/p/a/b;->j(Ljava/lang/String;)Lb/p/a/f;

    move-result-object p1

    return-object p1
.end method

.method protected abstract createInvalidationTracker()Landroidx/room/g;
.end method

.method protected abstract createOpenHelper(Landroidx/room/a;)Lb/p/a/c;
.end method

.method public endTransaction()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/j;->mOpenHelper:Lb/p/a/c;

    invoke-interface {v0}, Lb/p/a/c;->getWritableDatabase()Lb/p/a/b;

    move-result-object v0

    invoke-interface {v0}, Lb/p/a/b;->endTransaction()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/j;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/room/j;->mInvalidationTracker:Landroidx/room/g;

    invoke-virtual {v0}, Landroidx/room/g;->h()V

    :cond_0
    return-void
.end method

.method getBackingFieldMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/j;->mBackingFieldMap:Ljava/util/Map;

    return-object v0
.end method

.method getCloseLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidationTracker()Landroidx/room/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j;->mInvalidationTracker:Landroidx/room/g;

    return-object v0
.end method

.method public getOpenHelper()Lb/p/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j;->mOpenHelper:Lb/p/a/c;

    return-object v0
.end method

.method public getQueryExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j;->mQueryExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method getSuspendingTransactionId()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/j;->mSuspendingTransactionId:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public getTransactionExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public inTransaction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j;->mOpenHelper:Lb/p/a/c;

    invoke-interface {v0}, Lb/p/a/c;->getWritableDatabase()Lb/p/a/b;

    move-result-object v0

    invoke-interface {v0}, Lb/p/a/b;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public init(Landroidx/room/a;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/j;->createOpenHelper(Landroidx/room/a;)Lb/p/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/j;->mOpenHelper:Lb/p/a/c;

    .line 2
    instance-of v1, v0, Landroidx/room/o;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/room/o;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/room/o;->d(Landroidx/room/a;)V

    .line 5
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 6
    iget-object v0, p1, Landroidx/room/a;->g:Landroidx/room/j$c;

    sget-object v1, Landroidx/room/j$c;->d:Landroidx/room/j$c;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    move v2, v0

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/room/j;->mOpenHelper:Lb/p/a/c;

    invoke-interface {v0, v2}, Lb/p/a/c;->a(Z)V

    .line 8
    :cond_2
    iget-object v0, p1, Landroidx/room/a;->e:Ljava/util/List;

    iput-object v0, p0, Landroidx/room/j;->mCallbacks:Ljava/util/List;

    .line 9
    iget-object v0, p1, Landroidx/room/a;->h:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/room/j;->mQueryExecutor:Ljava/util/concurrent/Executor;

    .line 10
    new-instance v0, Landroidx/room/r;

    iget-object v1, p1, Landroidx/room/a;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Landroidx/room/r;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroidx/room/j;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    .line 11
    iget-boolean v0, p1, Landroidx/room/a;->f:Z

    iput-boolean v0, p0, Landroidx/room/j;->mAllowMainThreadQueries:Z

    .line 12
    iput-boolean v2, p0, Landroidx/room/j;->mWriteAheadLoggingEnabled:Z

    .line 13
    iget-boolean v0, p1, Landroidx/room/a;->j:Z

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Landroidx/room/j;->mInvalidationTracker:Landroidx/room/g;

    iget-object v1, p1, Landroidx/room/a;->b:Landroid/content/Context;

    iget-object p1, p1, Landroidx/room/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/room/g;->k(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected internalInitInvalidationTracker(Lb/p/a/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j;->mInvalidationTracker:Landroidx/room/g;

    invoke-virtual {v0, p1}, Landroidx/room/g;->f(Lb/p/a/b;)V

    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/j;->mDatabase:Lb/p/a/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lb/p/a/b;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public query(Lb/p/a/e;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/room/j;->query(Lb/p/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Lb/p/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroidx/room/j;->assertNotMainThread()V

    .line 4
    invoke-virtual {p0}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    if-eqz p2, :cond_0

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/room/j;->mOpenHelper:Lb/p/a/c;

    invoke-interface {v0}, Lb/p/a/c;->getWritableDatabase()Lb/p/a/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lb/p/a/b;->u(Lb/p/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    iget-object p2, p0, Landroidx/room/j;->mOpenHelper:Lb/p/a/c;

    invoke-interface {p2}, Lb/p/a/c;->getWritableDatabase()Lb/p/a/b;

    move-result-object p2

    invoke-interface {p2, p1}, Lb/p/a/b;->l(Lb/p/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/j;->mOpenHelper:Lb/p/a/c;

    invoke-interface {v0}, Lb/p/a/c;->getWritableDatabase()Lb/p/a/b;

    move-result-object v0

    new-instance v1, Lb/p/a/a;

    invoke-direct {v1, p1, p2}, Lb/p/a/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lb/p/a/b;->l(Lb/p/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Landroidx/room/j;->beginTransaction()V

    .line 7
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    invoke-static {p1}, Landroidx/room/t/e;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    throw p1

    :catch_1
    move-exception p1

    .line 11
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    .line 13
    throw p1
.end method

.method public runInTransaction(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/room/j;->beginTransaction()V

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3
    invoke-virtual {p0}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/room/j;->endTransaction()V

    .line 5
    throw p1
.end method

.method public setTransactionSuccessful()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/j;->mOpenHelper:Lb/p/a/c;

    invoke-interface {v0}, Lb/p/a/c;->getWritableDatabase()Lb/p/a/b;

    move-result-object v0

    invoke-interface {v0}, Lb/p/a/b;->setTransactionSuccessful()V

    return-void
.end method
