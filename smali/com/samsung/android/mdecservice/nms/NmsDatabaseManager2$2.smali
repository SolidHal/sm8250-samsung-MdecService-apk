.class Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$2;
.super Landroid/database/ContentObserver;
.source "NmsDatabaseManager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$2;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$2;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    const/16 v0, 0x35

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$2;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$2;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
