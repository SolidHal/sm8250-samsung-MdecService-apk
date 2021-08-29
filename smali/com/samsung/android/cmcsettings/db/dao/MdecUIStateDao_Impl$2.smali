.class Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl$2;
.super Landroidx/room/b;
.source "MdecUIStateDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b<",
        "Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;Landroidx/room/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl$2;->this$0:Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public bind(Lb/p/a/f;Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;)V
    .locals 3

    .line 2
    iget-wide v0, p2, Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;->key:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lb/p/a/d;->bindLong(IJ)V

    .line 3
    iget-object v0, p2, Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;->value:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p1, v1}, Lb/p/a/d;->bindNull(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1, v1, v0}, Lb/p/a/d;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    .line 6
    iget-wide v1, p2, Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;->key:J

    invoke-interface {p1, v0, v1, v2}, Lb/p/a/d;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Lb/p/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/cmcsettings/db/dao/MdecUIStateDao_Impl$2;->bind(Lb/p/a/f;Lcom/samsung/android/cmcsettings/db/entity/MdecUIState;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `mdec_Ui_States` SET `_id` = ?,`value` = ? WHERE `_id` = ?"

    return-object v0
.end method
