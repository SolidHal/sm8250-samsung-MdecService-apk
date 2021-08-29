.class public final Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;
.super Ljava/lang/Object;
.source "MdecUIStateDao_Impl.java"

# interfaces
.implements Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao;


# instance fields
.field private final __db:Landroidx/room/j;

.field private final __insertionAdapterOfMdecUIState:Landroidx/room/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/c<",
            "Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfMdecUIState:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b<",
            "Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__db:Landroidx/room/j;

    .line 3
    new-instance v0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl$1;-><init>(Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;Landroidx/room/j;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__insertionAdapterOfMdecUIState:Landroidx/room/c;

    .line 4
    new-instance v0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl$2;-><init>(Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;Landroidx/room/j;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__updateAdapterOfMdecUIState:Landroidx/room/b;

    return-void
.end method


# virtual methods
.method public insert(Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__insertionAdapterOfMdecUIState:Landroidx/room/c;

    invoke-virtual {v0, p1}, Landroidx/room/c;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1}, Landroidx/room/j;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->endTransaction()V

    .line 6
    throw p1
.end method

.method public selectById(J)Landroid/database/Cursor;
    .locals 2

    const-string v0, "SELECT * FROM mdec_Ui_States WHERE _id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/m;->s(Ljava/lang/String;I)Landroidx/room/m;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/m;->bindLong(IJ)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {p1, v0}, Landroidx/room/j;->query(Lb/p/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__updateAdapterOfMdecUIState:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;->__db:Landroidx/room/j;

    invoke-virtual {v0}, Landroidx/room/j;->endTransaction()V

    .line 6
    throw p1
.end method
