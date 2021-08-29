.class public final Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;
.super Ljava/lang/Object;
.source "SecondaryDeviceDao_Impl.java"

# interfaces
.implements Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;


# instance fields
.field private final __db:Landroidx/room/j;

.field private final __insertionAdapterOfSecondaryDeviceModel:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllData:Landroidx/room/q;

.field private final __preparedStmtOfDeleteDevice:Landroidx/room/q;

.field private final __preparedStmtOfUpdateActiveServices:Landroidx/room/q;

.field private final __preparedStmtOfUpdateActiveStatus:Landroidx/room/q;

.field private final __preparedStmtOfUpdateCallActiveStatus:Landroidx/room/q;

.field private final __preparedStmtOfUpdateDeviceName:Landroidx/room/q;

.field private final __preparedStmtOfUpdateMessageActiveStatus:Landroidx/room/q;


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    .line 3
    new-instance v0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$1;-><init>(Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;Landroidx/room/j;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__insertionAdapterOfSecondaryDeviceModel:Landroidx/room/c;

    .line 4
    new-instance v0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$2;-><init>(Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;Landroidx/room/j;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateActiveStatus:Landroidx/room/q;

    .line 5
    new-instance v0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$3;-><init>(Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;Landroidx/room/j;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateActiveServices:Landroidx/room/q;

    .line 6
    new-instance v0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$4;-><init>(Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;Landroidx/room/j;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateCallActiveStatus:Landroidx/room/q;

    .line 7
    new-instance v0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$5;-><init>(Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;Landroidx/room/j;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateMessageActiveStatus:Landroidx/room/q;

    .line 8
    new-instance v0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$6;-><init>(Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;Landroidx/room/j;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateDeviceName:Landroidx/room/q;

    .line 9
    new-instance v0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$7;-><init>(Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;Landroidx/room/j;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfDeleteDevice:Landroidx/room/q;

    .line 10
    new-instance v0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$8;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$8;-><init>(Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;Landroidx/room/j;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfDeleteAllData:Landroidx/room/q;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;)Landroidx/room/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    return-object p0
.end method


# virtual methods
.method public addConnectedDevice(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__insertionAdapterOfSecondaryDeviceModel:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->insert(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->endTransaction()V

    .line 6
    throw p1
.end method

.method public deleteAllData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfDeleteAllData:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->acquire()Lb/p/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->beginTransaction()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Lb/p/a/f;->executeUpdateDelete()I

    .line 5
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->endTransaction()V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfDeleteAllData:Landroidx/room/q;

    invoke-virtual {v1, v0}, Landroidx/room/q;->release(Lb/p/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->endTransaction()V

    .line 9
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfDeleteAllData:Landroidx/room/q;

    invoke-virtual {v2, v0}, Landroidx/room/q;->release(Lb/p/a/f;)V

    .line 10
    throw v1
.end method

.method public deleteDevice(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfDeleteDevice:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->acquire()Lb/p/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->beginTransaction()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Lb/p/a/f;->executeUpdateDelete()I

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->endTransaction()V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfDeleteDevice:Landroidx/room/q;

    invoke-virtual {p1, v0}, Landroidx/room/q;->release(Lb/p/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v1}, Landroidx/room/j;->endTransaction()V

    .line 11
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfDeleteDevice:Landroidx/room/q;

    invoke-virtual {v1, v0}, Landroidx/room/q;->release(Lb/p/a/f;)V

    .line 12
    throw p1
.end method

.method public deleteOldDevices(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 2
    invoke-static {}, Landroidx/room/t/f;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DELETE FROM SecondaryDevice WHERE device_id in ("

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Landroidx/room/t/f;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v1, v0}, Landroidx/room/j;->compileStatement(Ljava/lang/String;)Lb/p/a/f;

    move-result-object v0

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 10
    invoke-interface {v0, v1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {v0, v1, v2}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->beginTransaction()V

    .line 13
    :try_start_0
    invoke-interface {v0}, Lb/p/a/f;->executeUpdateDelete()I

    move-result p1

    .line 14
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->endTransaction()V

    .line 16
    throw p1
.end method

.method public getActiveServices(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "SELECT active_services FROM SecondaryDevice WHERE device_id=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/m;->s(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/room/m;->bindNull(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/m;->bindString(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/t/c;->b(Landroidx/room/j;Lb/p/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Landroidx/room/m;->M()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Landroidx/room/m;->M()V

    .line 12
    throw v1
.end method

.method public getAllConnectedDevice()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM SecondaryDevice"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/m;->s(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->getInvalidationTracker()Landroidx/room/g;

    move-result-object v2

    const-string v3, "SecondaryDevice"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$10;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$10;-><init>(Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;Landroidx/room/m;)V

    invoke-virtual {v2, v3, v1, v4}, Landroidx/room/g;->d([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAllConnectedDevices()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM SecondaryDevice"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/m;->s(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v2}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/t/c;->b(Landroidx/room/j;Lb/p/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "device_id"

    .line 4
    invoke-static {v1, v2}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "line_id"

    .line 5
    invoke-static {v1, v3}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "device_active"

    .line 6
    invoke-static {v1, v4}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "call_active"

    .line 7
    invoke-static {v1, v5}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "message_active"

    .line 8
    invoke-static {v1, v6}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "active_services"

    .line 9
    invoke-static {v1, v7}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "device_name"

    .line 10
    invoke-static {v1, v8}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "device_category"

    .line 11
    invoke-static {v1, v9}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 12
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 14
    new-instance v11, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    invoke-direct {v11}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;-><init>()V

    .line 15
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 16
    invoke-virtual {v11, v12}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setDevice_id(Ljava/lang/String;)V

    .line 17
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 18
    invoke-virtual {v11, v12}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setLine_id(Ljava/lang/String;)V

    .line 19
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 20
    invoke-virtual {v11, v12}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setDevice_active(I)V

    .line 21
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 22
    invoke-virtual {v11, v12}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setCall_active(I)V

    .line 23
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 24
    invoke-virtual {v11, v12}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setMessage_active(I)V

    .line 25
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 26
    invoke-virtual {v11, v12}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setActive_services(Ljava/lang/String;)V

    .line 27
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 28
    invoke-virtual {v11, v12}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setDevice_name(Ljava/lang/String;)V

    .line 29
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 30
    invoke-virtual {v11, v12}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setDevice_category(Ljava/lang/String;)V

    .line 31
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 33
    invoke-virtual {v0}, Landroidx/room/m;->M()V

    return-object v10

    :catchall_0
    move-exception v2

    .line 34
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 35
    invoke-virtual {v0}, Landroidx/room/m;->M()V

    .line 36
    throw v2
.end method

.method public getCallActiveStatus(Ljava/lang/String;)I
    .locals 3

    const-string v0, "SELECT call_active FROM SecondaryDevice WHERE device_id=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/m;->s(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/room/m;->bindNull(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/m;->bindString(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroidx/room/t/c;->b(Landroidx/room/j;Lb/p/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Landroidx/room/m;->M()V

    return v2

    :catchall_0
    move-exception v1

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Landroidx/room/m;->M()V

    .line 12
    throw v1
.end method

.method public getConnectedDevice(Ljava/lang/String;)Ljava/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT device_id FROM SecondaryDevice WHERE device_id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/m;->s(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/room/m;->bindNull(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/m;->bindString(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/t/c;->b(Landroidx/room/j;Lb/p/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    :cond_1
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v0}, Landroidx/room/m;->M()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v0}, Landroidx/room/m;->M()V

    .line 13
    throw v1
.end method

.method public getConnectedDeviceData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM SecondaryDevice WHERE device_id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/m;->s(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/room/m;->bindNull(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/m;->bindString(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->getInvalidationTracker()Landroidx/room/g;

    move-result-object p1

    const-string v1, "SecondaryDevice"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$9;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$9;-><init>(Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;Landroidx/room/m;)V

    invoke-virtual {p1, v1, v2, v3}, Landroidx/room/g;->d([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceActiveStatus(Ljava/lang/String;)I
    .locals 3

    const-string v0, "SELECT device_active FROM SecondaryDevice WHERE device_id=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/m;->s(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/room/m;->bindNull(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/m;->bindString(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroidx/room/t/c;->b(Landroidx/room/j;Lb/p/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Landroidx/room/m;->M()V

    return v2

    :catchall_0
    move-exception v1

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Landroidx/room/m;->M()V

    .line 12
    throw v1
.end method

.method public getMessageActiveStatus(Ljava/lang/String;)I
    .locals 3

    const-string v0, "SELECT message_active FROM SecondaryDevice WHERE device_id=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/m;->s(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/room/m;->bindNull(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/m;->bindString(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroidx/room/t/c;->b(Landroidx/room/j;Lb/p/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v0}, Landroidx/room/m;->M()V

    return v2

    :catchall_0
    move-exception v1

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Landroidx/room/m;->M()V

    .line 12
    throw v1
.end method

.method public updateActiveServices(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateActiveServices:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->acquire()Lb/p/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0, p1, p2}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    .line 7
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->beginTransaction()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Lb/p/a/f;->executeUpdateDelete()I

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->endTransaction()V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateActiveServices:Landroidx/room/q;

    invoke-virtual {p1, v0}, Landroidx/room/q;->release(Lb/p/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p2}, Landroidx/room/j;->endTransaction()V

    .line 13
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateActiveServices:Landroidx/room/q;

    invoke-virtual {p2, v0}, Landroidx/room/q;->release(Lb/p/a/f;)V

    .line 14
    throw p1
.end method

.method public updateActiveStatus(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateActiveStatus:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->acquire()Lb/p/a/f;

    move-result-object v0

    int-to-long v1, p2

    const/4 p2, 0x1

    .line 3
    invoke-interface {v0, p2, v1, v2}, Lb/p/a/d;->bindLong(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 4
    invoke-interface {v0, p2}, Lb/p/a/d;->bindNull(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p2, p1}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->beginTransaction()V

    .line 7
    :try_start_0
    invoke-interface {v0}, Lb/p/a/f;->executeUpdateDelete()I

    .line 8
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->endTransaction()V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateActiveStatus:Landroidx/room/q;

    invoke-virtual {p1, v0}, Landroidx/room/q;->release(Lb/p/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p2}, Landroidx/room/j;->endTransaction()V

    .line 12
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateActiveStatus:Landroidx/room/q;

    invoke-virtual {p2, v0}, Landroidx/room/q;->release(Lb/p/a/f;)V

    .line 13
    throw p1
.end method

.method public updateCallActiveStatus(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateCallActiveStatus:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->acquire()Lb/p/a/f;

    move-result-object v0

    int-to-long v1, p2

    const/4 p2, 0x1

    .line 3
    invoke-interface {v0, p2, v1, v2}, Lb/p/a/d;->bindLong(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 4
    invoke-interface {v0, p2}, Lb/p/a/d;->bindNull(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p2, p1}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->beginTransaction()V

    .line 7
    :try_start_0
    invoke-interface {v0}, Lb/p/a/f;->executeUpdateDelete()I

    .line 8
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->endTransaction()V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateCallActiveStatus:Landroidx/room/q;

    invoke-virtual {p1, v0}, Landroidx/room/q;->release(Lb/p/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p2}, Landroidx/room/j;->endTransaction()V

    .line 12
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateCallActiveStatus:Landroidx/room/q;

    invoke-virtual {p2, v0}, Landroidx/room/q;->release(Lb/p/a/f;)V

    .line 13
    throw p1
.end method

.method public updateDeviceName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateDeviceName:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->acquire()Lb/p/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p2}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0, p2}, Lb/p/a/d;->bindNull(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0, p2, p1}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    .line 7
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->beginTransaction()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Lb/p/a/f;->executeUpdateDelete()I

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->endTransaction()V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateDeviceName:Landroidx/room/q;

    invoke-virtual {p1, v0}, Landroidx/room/q;->release(Lb/p/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p2}, Landroidx/room/j;->endTransaction()V

    .line 13
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateDeviceName:Landroidx/room/q;

    invoke-virtual {p2, v0}, Landroidx/room/q;->release(Lb/p/a/f;)V

    .line 14
    throw p1
.end method

.method public updateMessageActiveStatus(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateMessageActiveStatus:Landroidx/room/q;

    invoke-virtual {v0}, Landroidx/room/q;->acquire()Lb/p/a/f;

    move-result-object v0

    int-to-long v1, p2

    const/4 p2, 0x1

    .line 3
    invoke-interface {v0, p2, v1, v2}, Lb/p/a/d;->bindLong(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 4
    invoke-interface {v0, p2}, Lb/p/a/d;->bindNull(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p2, p1}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->beginTransaction()V

    .line 7
    :try_start_0
    invoke-interface {v0}, Lb/p/a/f;->executeUpdateDelete()I

    .line 8
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->endTransaction()V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateMessageActiveStatus:Landroidx/room/q;

    invoke-virtual {p1, v0}, Landroidx/room/q;->release(Lb/p/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p2}, Landroidx/room/j;->endTransaction()V

    .line 12
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->__preparedStmtOfUpdateMessageActiveStatus:Landroidx/room/q;

    invoke-virtual {p2, v0}, Landroidx/room/q;->release(Lb/p/a/f;)V

    .line 13
    throw p1
.end method
