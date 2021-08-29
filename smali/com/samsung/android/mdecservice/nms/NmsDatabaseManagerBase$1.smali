.class Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$1;
.super Landroid/database/ContentObserver;
.source "NmsDatabaseManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CallLog URI DB changed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DatabaseMgrBase"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$1;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->trySyncBufferDB(Landroid/net/Uri;)V

    return-void
.end method
