.class public Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;
.super Ljava/lang/Object;
.source "RequestObjectBase.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RequestObjBase"


# instance fields
.field protected mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mDataType:Ljava/lang/String;

.field protected mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field protected mNmsRequestMan:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

.field protected mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestType:Ljava/lang/String;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    .line 16
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mTransactionId:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestType:Ljava/lang/String;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mResolver:Landroid/content/ContentResolver;

    .line 22
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mResolver:Landroid/content/ContentResolver;

    .line 24
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 25
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mNmsRequestMan:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mTransactionId:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestType:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mResolver:Landroid/content/ContentResolver;

    .line 8
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mResolver:Landroid/content/ContentResolver;

    .line 10
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 11
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mNmsRequestMan:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    .line 12
    iput-object p5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mTransactionId:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public checkProperListFromApp(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RequestObjBase"

    if-eqz v0, :cond_0

    const-string p1, "Bundle is null"

    .line 2
    invoke-static {v2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attribute from App , correlationTag = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "correlation_tag"

    .line 4
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", correlationId ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "correlation_id"

    .line 5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", creator = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "creator"

    .line 6
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", objectID = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "object_id"

    .line 7
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Doesn\'t contain correlationTag & correlationId both."

    .line 13
    invoke-static {v2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const/16 v2, 0x2bc

    const-string v3, "result"

    .line 15
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mNmsRequestMan:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mTransactionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestType:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->notifyRequestToServerResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    .line 18
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getCallbackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    return-object v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    return-object v0
.end method

.method public getRequestType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestType:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public isValidBioRequest(Landroid/os/Bundle;)Z
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RequestObjBase"

    if-eqz v0, :cond_0

    const-string p1, "Bundle is null"

    .line 2
    invoke-static {v2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attribute from App , botserviceId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "service_id"

    .line 4
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", timestamp ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "date"

    .line 5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cifExists = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "cif_json_content"

    .line 6
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestType:Ljava/lang/String;

    const-string v6, "delete"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v6, 0x2bc

    const-string v8, "result"

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Doesn\'t contain ServiceID for delete"

    .line 10
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 13
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Doesn\'t contain ServiceID & Date & CIF content."

    .line 16
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_2
    return v7
.end method

.method public notifyErrorResultToApp()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyErrorResultToApp, mTransactionId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDataType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestObjBase"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackList = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callbackList size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mNmsRequestMan:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mTransactionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestType:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;->notifyRequestToServerResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public prepareSyncEvent()V
    .locals 0

    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestObjBase"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    return-void
.end method

.method public setRequestType(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequestType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestObjBase"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestType:Ljava/lang/String;

    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTransactionId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestObjBase"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mTransactionId:Ljava/lang/String;

    return-void
.end method
