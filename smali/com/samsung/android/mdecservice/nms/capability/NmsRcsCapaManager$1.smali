.class Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$1;
.super Landroid/os/Handler;
.source "NmsRcsCapaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getStatusFromBufferDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    const-string v1, "-2"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->changeStatusBufferDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->access$000(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)V

    :goto_0
    return-void
.end method
