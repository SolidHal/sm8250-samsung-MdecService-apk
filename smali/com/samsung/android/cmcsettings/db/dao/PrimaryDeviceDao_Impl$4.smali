.class Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl$4;
.super Ljava/lang/Object;
.source "PrimaryDeviceDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;->getPrimaryDevices()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;

.field final synthetic val$_statement:Landroidx/room/m;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;Landroidx/room/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl$4;->this$0:Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl$4;->val$_statement:Landroidx/room/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl$4;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl$4;->this$0:Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;->access$000(Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;)Landroidx/room/j;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl$4;->val$_statement:Landroidx/room/m;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/t/c;->b(Landroidx/room/j;Lb/p/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "primary_key"

    .line 3
    invoke-static {v0, v1}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "device_id"

    .line 4
    invoke-static {v0, v2}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "device_name"

    .line 5
    invoke-static {v0, v3}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "msisdn"

    .line 6
    invoke-static {v0, v4}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "active_services"

    .line 7
    invoke-static {v0, v5}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 10
    new-instance v7, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;

    invoke-direct {v7}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;-><init>()V

    .line 11
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v7, v8}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->setPrimaryKey(Ljava/lang/String;)V

    .line 13
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {v7, v8}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->setDevice_id(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-virtual {v7, v8}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->setDevice_name(Ljava/lang/String;)V

    .line 17
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-virtual {v7, v8}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->setMsisdn(Ljava/lang/String;)V

    .line 19
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual {v7, v8}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->setActive_services(Ljava/lang/String;)V

    .line 21
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v6

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 23
    throw v1
.end method

.method protected finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl$4;->val$_statement:Landroidx/room/m;

    invoke-virtual {v0}, Landroidx/room/m;->M()V

    return-void
.end method
