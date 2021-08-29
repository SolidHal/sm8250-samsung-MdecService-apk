.class public Lcom/samsung/android/mdecservice/nms/request/BioPostRequestObject;
.super Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;
.source "BioPostRequestObject.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BioPostRequestObj"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;",
            "Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public prepareSyncEvent()V
    .locals 9

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    const-string v1, "eventTypeServer"

    const-string v2, "eventTypeRcs"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v3, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 4
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 5
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p0, v5}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->isValidBioRequest(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v5

    .line 7
    invoke-virtual {v5, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v5

    const-string v6, "PostCifRequest"

    .line 8
    invoke-virtual {v5, v6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mTransactionId:Ljava/lang/String;

    .line 9
    invoke-virtual {v5, v6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setTid(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    .line 10
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "date"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setTimeStamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    .line 12
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "service_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setBotServiceId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    .line 13
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v8, "cif_json_content"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->setCif(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;

    move-result-object v5

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->existsInCifTable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 17
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "cif"

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->updateToBuffer(Landroid/os/Bundle;Ljava/lang/String;)I

    goto :goto_1

    .line 18
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    const-string v1, "chatbotinfo"

    .line 19
    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->writeToBuffer(Ljava/lang/String;Ljava/util/List;)V

    .line 20
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 21
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->notifyErrorResultToApp()V

    .line 23
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 24
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    :cond_4
    return-void
.end method
