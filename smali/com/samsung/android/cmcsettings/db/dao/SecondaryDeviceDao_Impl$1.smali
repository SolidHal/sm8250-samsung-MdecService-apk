.class Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$1;
.super Landroidx/room/c;
.source "SecondaryDeviceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/c<",
        "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;Landroidx/room/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$1;->this$0:Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/c;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public bind(Lb/p/a/f;Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V
    .locals 3

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getLine_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getLine_id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_active()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lb/p/a/d;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 9
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getCall_active()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lb/p/a/d;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getMessage_active()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lb/p/a/d;->bindLong(IJ)V

    .line 11
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getActive_services()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_2

    .line 12
    invoke-interface {p1, v1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getActive_services()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    .line 14
    :goto_2
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_3

    .line 15
    invoke-interface {p1, v1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_3

    .line 16
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    .line 17
    :goto_3
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_category()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 18
    invoke-interface {p1, v1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_4

    .line 19
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->getDevice_category()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    :goto_4
    return-void
.end method

.method public bridge synthetic bind(Lb/p/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$1;->bind(Lb/p/a/f;Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `SecondaryDevice` (`device_id`,`line_id`,`device_active`,`call_active`,`message_active`,`active_services`,`device_name`,`device_category`) VALUES (?,?,?,?,?,?,?,?)"

    return-object v0
.end method
