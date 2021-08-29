.class public Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;
.super Ljava/lang/Object;
.source "SyncResultHandler.java"


# instance fields
.field private mDataType:Ljava/lang/String;

.field private mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

.field private final mRelay:Z

.field private mRequestType:Ljava/lang/String;

.field private mSyncResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncResult;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mTransactionId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mDataType:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mRequestType:Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mSyncResults:Ljava/util/List;

    .line 7
    iput-boolean p5, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mRelay:Z

    return-void
.end method

.method private addAndSendResult(Lcom/samsung/android/mdecservice/nms/event/SyncResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->addSyncError(Lcom/samsung/android/mdecservice/nms/event/SyncResult;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->sendFailureResultToApp()V

    return-void
.end method

.method private addSyncError(Lcom/samsung/android/mdecservice/nms/event/SyncResult;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mSyncResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getAppRequestType()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mRequestType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mRequestType:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "PostGroupInfoRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "PostStateRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "BulkUpdateRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_3
    const-string v2, "BulkPostRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "PostRcsPayloadRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "UpdateRcsRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v2, "DeleteRcsRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_7
    const-string v2, "PostRcsRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_8
    const-string v2, "PostFtRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    const-string v2, "BulkDeleteRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_a
    const-string v2, "UpdateGroupInfoRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mRequestType:Ljava/lang/String;

    return-object v0

    :pswitch_0
    const-string v0, "delete"

    return-object v0

    :pswitch_1
    const-string v0, "update"

    return-object v0

    :pswitch_2
    const-string v0, "post"

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mRequestType:Ljava/lang/String;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73a566f5 -> :sswitch_a
        -0x678cb5ae -> :sswitch_9
        -0x4bbd7aff -> :sswitch_8
        -0x2ec70753 -> :sswitch_7
        -0x1f083408 -> :sswitch_6
        -0x10e54e6a -> :sswitch_5
        -0x15616bd -> :sswitch_4
        0x130d3d -> :sswitch_3
        0x4b7d7974 -> :sswitch_2
        0x5326f19e -> :sswitch_1
        0x7b16f2e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private iSyncErrorsExist()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mSyncResults:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private sendCompleteResult(Lcom/samsung/android/mdecservice/nms/event/SyncResult;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->clearSyncErrors()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mTransactionId:Ljava/lang/String;

    const-string v3, "transaction_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget v2, p1, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const-string v3, "result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget p1, p1, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mFailureReason:I

    const-string v2, "failure_reason"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mRelay:Z

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    invoke-interface {p1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->notifyRelayRcsResult(Ljava/util/List;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mTransactionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mDataType:Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->getAppRequestType()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-interface {p1, v1, v2, v3, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->notifyServerRequestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearSyncErrors()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->iSyncErrorsExist()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mSyncResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mSyncResults:Ljava/util/List;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mTransactionId:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mRequestType:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mDataType:Ljava/lang/String;

    return-void
.end method

.method public getSyncErrorsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mSyncResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public handleError(Lcom/samsung/android/mdecservice/nms/event/SyncResult;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler$1;->$SwitchMap$com$samsung$android$mdecservice$nms$event$SyncResult$Action:[I

    iget-object v1, p1, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mAction:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->addSyncError(Lcom/samsung/android/mdecservice/nms/event/SyncResult;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->addAndSendResult(Lcom/samsung/android/mdecservice/nms/event/SyncResult;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->sendCompleteResult(Lcom/samsung/android/mdecservice/nms/event/SyncResult;)V

    :goto_0
    return-void
.end method

.method public sendFailureResultToApp()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->iSyncErrorsExist()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mSyncResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/nms/event/SyncResult;

    .line 4
    iget-object v3, v2, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mReqBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mCorrelationTag:Ljava/lang/String;

    const-string v5, "correlation_tag"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v4, v2, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mCorrelationId:Ljava/lang/String;

    const-string v5, "correlation_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mTransactionId:Ljava/lang/String;

    const-string v5, "transaction_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget v4, v2, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mErrorCode:I

    const-string v5, "result"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget v2, v2, Lcom/samsung/android/mdecservice/nms/event/SyncResult;->mFailureReason:I

    const-string v4, "failure_reason"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mRelay:Z

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mRequestType:Ljava/lang/String;

    const-string v2, "PostRcsPayloadRequest"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "status_flag"

    const-string v4, "failed"

    .line 15
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "msg_context"

    const-string v4, "ft"

    .line 16
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mRequestType:Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "rcs"

    invoke-interface {v1, v0, v4, v2, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    const-string v3, "update"

    invoke-interface {v2, v1, v4, v3, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->notifyRelayRcsResult(Ljava/util/List;)V

    goto :goto_3

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mTransactionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->mDataType:Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->getAppRequestType()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->notifyServerRequestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 23
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/event/SyncResultHandler;->clearSyncErrors()V

    :cond_5
    return-void
.end method
