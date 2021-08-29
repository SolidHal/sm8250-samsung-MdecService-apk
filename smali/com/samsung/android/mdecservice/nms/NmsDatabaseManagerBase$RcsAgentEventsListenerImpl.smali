.class public Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;
.super Ljava/lang/Object;
.source "NmsDatabaseManagerBase.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RcsAgentEventsListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnGetRcsObjectsCompleted(ILjava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;",
            ")V"
        }
    .end annotation

    const-string p1, "DatabaseMgrBase"

    const-string p2, "applicable for phase 2: ignore"

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBulkDeleteCifCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    const-string v2, "cif"

    const-string v3, "delete"

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->handleCompletedDataToNotifyApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onBulkDeleteCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBulkDeleteCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DatabaseMgrBase"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;

    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_BULK_DELETE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;-><init>(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;Z)V

    .line 3
    invoke-virtual {p1, p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->setSuccessResponseList(Ljava/util/List;)V

    .line 4
    invoke-virtual {p1, p4}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->setFailureResponseList(Ljava/util/List;)V

    .line 5
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    invoke-virtual {p2, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->updateResponses(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V

    return-void
.end method

.method public onBulkPostCifCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    const-string v2, "cif"

    const-string v3, "post"

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->handleCompletedDataToNotifyApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onBulkPostCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;

    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_BULK_POST:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;-><init>(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;Z)V

    .line 2
    invoke-virtual {p1, p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->setSuccessResponseList(Ljava/util/List;)V

    .line 3
    invoke-virtual {p1, p4}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->setFailureResponseList(Ljava/util/List;)V

    .line 4
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    invoke-virtual {p2, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->updateResponses(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V

    return-void
.end method

.method public onBulkUpdateCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBulkUpdateCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DatabaseMgrBase"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;

    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_BULK_UPDATE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;-><init>(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;Z)V

    .line 3
    invoke-virtual {p1, p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->setSuccessResponseList(Ljava/util/List;)V

    .line 4
    invoke-virtual {p1, p4}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->setFailureResponseList(Ljava/util/List;)V

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->setRelayResponse()V

    .line 6
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    invoke-virtual {p2, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->updateResponses(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V

    return-void
.end method

.method public onDeleteCifCompeted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeleteCifCompeted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resourceUrl="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 2
    invoke-static {p3, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " objectId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " serviceId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "DatabaseMgrBase"

    .line 3
    invoke-static {p4, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string p4, "res_url"

    .line 6
    invoke-virtual {p1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "service_id"

    .line 7
    invoke-virtual {p1, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    const-string v2, "cif"

    const-string v3, "delete"

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->handleCompletedDataToNotifyApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onDeleteCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeleteCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resourceUrl="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " objectId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationTag="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DatabaseMgrBase"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;

    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_SINGLE_DELETE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;-><init>(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;Z)V

    .line 3
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "res_url"

    .line 4
    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "object_id"

    .line 5
    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "correlation_id"

    .line 6
    invoke-virtual {p2, p3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "correlation_tag"

    .line 7
    invoke-virtual {p2, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getSuccessResponseList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object p2, p2, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    invoke-virtual {p2, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->updateResponses(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V

    :cond_1
    return-void
.end method

.method public onDeleteContactCompleted(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "DatabaseMgrBase"

    const-string p2, "applicable for phase 2: ignore"

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetBinaryDataCompleted(ILjava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "DatabaseMgrBase"

    const-string p2, "applicable for phase 2: ignore"

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetCifCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetCifCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resourceUrl= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " objectId= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " serviceId= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " timeStamp="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isSearch="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "DatabaseMgrBase"

    invoke-static {p3, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object p3, p3, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    if-eqz p7, :cond_0

    .line 3
    invoke-virtual {p1, p4}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->existsInCifTable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    const-string v1, "update"

    move-object v2, p4

    move-object v3, p5

    move-object v4, p2

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->fillBufferDBValuesForCif(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    const-string v1, "insert"

    move-object v2, p4

    move-object v3, p5

    move-object v4, p2

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->fillBufferDBValuesForCif(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onNotifyUploadCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onNotifyUploadCompleted: phoneId="

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " objectId="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationId="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uploadStatus= "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DatabaseMgrBase"

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPayloadProgress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;)V
    .locals 0

    const-string p1, "DatabaseMgrBase"

    const-string p2, "applicable for phase 2: ignore"

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPostCifCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostCifCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resourceUrl="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 2
    invoke-static {p3, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " objectId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " serviceId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "DatabaseMgrBase"

    .line 3
    invoke-static {p4, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string p4, "res_url"

    .line 6
    invoke-virtual {p1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "service_id"

    .line 7
    invoke-virtual {p1, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRequestManager:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    const-string v2, "cif"

    const-string v3, "post"

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->handleCompletedDataToNotifyApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationTag="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " respCode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " flag="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DatabaseMgrBase"

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resourceUrl="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 2
    invoke-static {p3, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " objectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " correlationTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " correlationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " respCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseMgrBase"

    .line 3
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "res_url"

    .line 5
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "object_id"

    .line 6
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "correlation_id"

    .line 7
    invoke-virtual {v0, p3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "correlation_tag"

    .line 8
    invoke-virtual {v0, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "code"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "flag"

    .line 10
    invoke-virtual {v0, p3, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance p3, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;

    sget-object p4, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_SINGLE_POST:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    invoke-direct {p3, p2, p4, p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;-><init>(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;Z)V

    .line 12
    invoke-virtual {p3}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getSuccessResponseList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    invoke-virtual {p1, p3}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->updateResponses(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V

    return-void
.end method

.method public onPostContactCompleted(ILjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "DatabaseMgrBase"

    const-string p2, "applicable for phase 2: ignore"

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPostFtCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V
    .locals 0

    .line 1
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string p10, "onPostFtCompleted: phoneId="

    invoke-virtual {p7, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tid="

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resourceUrl="

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 2
    invoke-static {p3, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " objectId="

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationTag="

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationId="

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " respCode="

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " flag="

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DatabaseMgrBase"

    .line 3
    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPostPayloadCompleted(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPostPayloadCompleted: phoneId="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tid="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " objectId="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationTag="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationId="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DatabaseMgrBase"

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestFailed(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    const-string p1, "DatabaseMgrBase"

    const-string p2, "applicable for phase 2: ignore"

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSearchContactCompleted(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;",
            ">;)V"
        }
    .end annotation

    const-string p1, "DatabaseMgrBase"

    const-string p2, "applicable for phase 2: ignore"

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateCompleted: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resourceUrl="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " objectId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationTag="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " correlationId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "agent"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DatabaseMgrBase"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;

    sget-object v0, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;->RESPONSE_ON_SINGLE_UPDATE:Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;-><init>(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse$ResponseType;Z)V

    if-eqz p7, :cond_0

    .line 3
    invoke-virtual {p7}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->isRelay()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->setRelayResponse(Z)V

    .line 4
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "res_url"

    .line 5
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "object_id"

    .line 6
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "correlation_id"

    .line 7
    invoke-virtual {v0, p3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "correlation_tag"

    .line 8
    invoke-virtual {v0, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;->getSuccessResponseList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    iget-object p3, p3, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mRcsQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;

    invoke-virtual {p3, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilderBase;->updateResponses(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GenericResponse;)V

    if-eqz p7, :cond_1

    .line 11
    invoke-virtual {p7}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->isRelay()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p7}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ft-message"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p7}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->isResent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$RcsAgentEventsListenerImpl;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    invoke-static {p1, p2, p4, p5, p7}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->access$000(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)V

    :cond_1
    return-void
.end method

.method public onUpdateContactCompleted(ILjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "DatabaseMgrBase"

    const-string p2, "applicable for phase 2: ignore"

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateGioCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;)V
    .locals 0

    const-string p1, "DatabaseMgrBase"

    const-string p2, "applicable for phase 2: ignore"

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
