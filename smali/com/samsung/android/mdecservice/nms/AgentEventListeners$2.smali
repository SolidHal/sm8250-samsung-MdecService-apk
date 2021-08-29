.class Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;
.super Ljava/lang/Object;
.source "AgentEventListeners.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/AgentEventListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBulkDeleteCompleted(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBulkDeleteCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " urlList="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgentEventListeners"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res_url in ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    const-string v2, "\u0000"

    const-string v3, "?,"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->deleteTable(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteRows from deleteBufferDB  = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "Nothing deleted in BufferDB . Cannot complete delete action"

    .line 6
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBulkPostCompleted(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBulkPostCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cvList="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgentEventListeners"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ContentValues;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "is-relay"

    .line 5
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v7, "res_url"

    .line 7
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isValidResourceUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    const/4 v6, 0x0

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryBufferDBwithResUrl(Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cv is empty, selectionstr is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onBulkUpdateCompleted(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBulkUpdateCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " urlList="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgentEventListeners"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v7, v1

    .line 4
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string p2, "new"

    const-string v1, "0"

    .line 5
    invoke-virtual {v5, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object p2

    iget-object v2, p2, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    const-string v6, "res_url==?"

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDeleteCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeleteCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resourceUrl="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " objectId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationTag="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AgentEventListeners"

    invoke-static {p3, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 2
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    sget-object p3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    const-string p4, "res_url==?"

    invoke-virtual {p2, p3, p4, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->deleteTable(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public onGetCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resourceUrl= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " objectId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " correlationTag= "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p7}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AgentEventListeners"

    .line 3
    invoke-static {v0, p3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result p3

    if-nez p3, :cond_0

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDate()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p7}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getDate()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    iget-object p3, p3, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p7}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getLastActivatedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-gez p3, :cond_0

    const-string p1, "onGetCompleted: old data. don\'t receive it"

    .line 8
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->removeChangedObjEvent(Ljava/lang/String;)V

    const-string p3, "Deleted"

    .line 10
    invoke-interface {p5, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 11
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object p3

    iget-object p3, p3, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {p3, v0, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryBufferDBwithResUrl(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v7

    .line 12
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object p3

    iget-object v1, p3, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    move-object v2, p6

    move-object v4, p2

    move-object v5, p4

    move-object v6, p7

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->tryUpdateCallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;I)I

    return-void
.end method

.method public onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ID="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resourceUrl="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " objectId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationTag="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " lastmodseq="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "AgentEventListeners"

    invoke-static {p4, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3
    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isValidResourceUrl(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "invalid resource URL. don\'t update it"

    .line 4
    invoke-static {p4, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "res_url"

    .line 5
    invoke-virtual {v3, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "lastmodseq"

    .line 6
    invoke-virtual {v3, p1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "_id = \'"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\'"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object p1

    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 p1, 0x0

    if-eqz p8, :cond_1

    .line 9
    iget-object p4, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p4}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object p4

    iget-object v0, p4, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object v1, p7

    move-object v3, p3

    move-object v4, p5

    move-object v5, p8

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->tryUpdateCallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;I)I

    move-result p1

    :cond_1
    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    invoke-virtual {p1, p3}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->queryBufferDBwithResUrl(Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onUpdateCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resourceUrl="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " objectId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationTag="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AgentEventListeners"

    invoke-static {p3, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string p1, "new"

    const-string p3, "0"

    .line 3
    invoke-virtual {v3, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v5, p1

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;->this$0:Lcom/samsung/android/mdecservice/nms/AgentEventListeners;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object p1

    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mCallLogQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CALLLOG_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    const-string v4, "res_url==?"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->updateTable(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
