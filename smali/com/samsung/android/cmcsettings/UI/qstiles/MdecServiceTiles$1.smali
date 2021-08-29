.class Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles$1;
.super Landroid/database/ContentObserver;
.source "MdecServiceTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles$1;->this$0:Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CMCActivationObserver onChange"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles$1;->this$0:Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->access$102(Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;Z)Z

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles$1;->this$0:Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;

    invoke-virtual {p1}, Landroid/service/quicksettings/TileService;->semUpdateDetailView()V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles$1;->this$0:Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->access$200(Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;->access$300(Lcom/samsung/android/cmcsettings/UI/qstiles/MdecServiceTiles;Z)V

    return-void
.end method
