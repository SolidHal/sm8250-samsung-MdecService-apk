.class Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl$3;
.super Landroidx/room/q;
.source "PrimaryDeviceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;Landroidx/room/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl$3;->this$0:Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/q;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM PrimaryDevice"

    return-object v0
.end method
