.class Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl$1;
.super Landroidx/room/c;
.source "PrimaryDeviceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;Landroidx/room/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl$1;->this$0:Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public bind(Lb/p/a/f;Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;)V
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->getPrimaryKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->getPrimaryKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->getDevice_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->getDevice_id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->getDevice_name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->getDevice_name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    .line 11
    :goto_2
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 12
    invoke-interface {p1, v1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    .line 14
    :goto_3
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->getActive_services()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 15
    invoke-interface {p1, v1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->getActive_services()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    :goto_4
    return-void
.end method

.method public bridge synthetic bind(Lb/p/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl$1;->bind(Lb/p/a/f;Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `PrimaryDevice` (`primary_key`,`device_id`,`device_name`,`msisdn`,`active_services`) VALUES (?,?,?,?,?)"

    return-object v0
.end method
