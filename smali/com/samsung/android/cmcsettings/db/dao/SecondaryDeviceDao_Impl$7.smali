.class Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$7;
.super Landroidx/room/q;
.source "SecondaryDeviceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;Landroidx/room/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl$7;->this$0:Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/q;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM SecondaryDevice WHERE device_id=?"

    return-object v0
.end method
