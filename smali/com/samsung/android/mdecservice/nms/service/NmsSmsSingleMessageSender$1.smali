.class Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender$1;
.super Landroid/content/BroadcastReceiver;
.source "NmsSmsSingleMessageSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string p1, "id"

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v1

    const-string v2, "\\Failed"

    const-string v3, "UpdateRequest"

    const-string v4, "eventTypeServer"

    const-string v5, "resourceURL"

    const-string v6, "correlationTag"

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sms Send Failed, ResultCode :  "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p2

    .line 8
    invoke-virtual {p2, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p2

    .line 9
    invoke-virtual {p2, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p2

    .line 10
    invoke-virtual {p2, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object p2

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$200(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto/16 :goto_0

    .line 13
    :cond_1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS_SENT_ACTION INTENT RECEIVED"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "objectID"

    .line 16
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "uri"

    .line 17
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 19
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 21
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    const-string v4, "9655"

    .line 22
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$100(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$100(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 24
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCodelist : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$100(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

    invoke-virtual {v2, v0, v1, v7, p2}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->insertRelayedDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sms Send Failed, uri is not propagated"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p2

    .line 30
    invoke-virtual {p2, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p2

    .line 31
    invoke-virtual {p2, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p2

    .line 32
    invoke-virtual {p2, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p2

    .line 33
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object p2

    .line 34
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$200(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    .line 35
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$310(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)I

    .line 36
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$100(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 37
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$300(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)I

    move-result p2

    if-gtz p2, :cond_4

    .line 38
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "requestCodeList Clear!!"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$100(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 40
    :cond_4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "requestCodeList remove!!"

    invoke-static {p2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender$1;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->access$100(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void
.end method
