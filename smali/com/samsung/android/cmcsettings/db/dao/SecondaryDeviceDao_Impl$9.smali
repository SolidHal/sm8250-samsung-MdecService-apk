.class Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$9;
.super Ljava/lang/Object;
.source "SecondaryDeviceDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->getConnectedDeviceData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;

.field final synthetic val$_statement:Landroidx/room/m;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;Landroidx/room/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$9;->this$0:Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$9;->val$_statement:Landroidx/room/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$9;->this$0:Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;->access$000(Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;)Landroidx/room/j;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$9;->val$_statement:Landroidx/room/m;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/t/c;->b(Landroidx/room/j;Lb/p/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "device_id"

    .line 3
    invoke-static {v0, v1}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "line_id"

    .line 4
    invoke-static {v0, v2}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "device_active"

    .line 5
    invoke-static {v0, v4}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "call_active"

    .line 6
    invoke-static {v0, v5}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "message_active"

    .line 7
    invoke-static {v0, v6}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "active_services"

    .line 8
    invoke-static {v0, v7}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "device_name"

    .line 9
    invoke-static {v0, v8}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "device_category"

    .line 10
    invoke-static {v0, v9}, Landroidx/room/t/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 11
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 12
    new-instance v3, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    invoke-direct {v3}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;-><init>()V

    .line 13
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v3, v1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setDevice_id(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v3, v1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setLine_id(Ljava/lang/String;)V

    .line 17
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 18
    invoke-virtual {v3, v1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setDevice_active(I)V

    .line 19
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 20
    invoke-virtual {v3, v1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setCall_active(I)V

    .line 21
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 22
    invoke-virtual {v3, v1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setMessage_active(I)V

    .line 23
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v3, v1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setActive_services(Ljava/lang/String;)V

    .line 25
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v3, v1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setDevice_name(Ljava/lang/String;)V

    .line 27
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v3, v1}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->setDevice_category(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 30
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$9;->call()Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$9;->val$_statement:Landroidx/room/m;

    invoke-virtual {v0}, Landroidx/room/m;->M()V

    return-void
.end method
