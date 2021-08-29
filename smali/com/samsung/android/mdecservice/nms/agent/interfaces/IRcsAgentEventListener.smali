.class public interface abstract Lcom/samsung/android/mdecservice/nms/agent/interfaces/IRcsAgentEventListener;
.super Ljava/lang/Object;
.source "IRcsAgentEventListener.java"


# virtual methods
.method public abstract OnGetRcsObjectsCompleted(ILjava/util/List;Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;)V
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
.end method

.method public abstract onBulkDeleteCifCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract onBulkDeleteCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract onBulkPostCifCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract onBulkPostCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract onBulkUpdateCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract onDeleteCifCompeted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDeleteCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDeleteContactCompleted(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract onGetBinaryDataCompleted(ILjava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onGetCifCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onNotifyUploadCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V
.end method

.method public abstract onPayloadProgress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/event/PayloadProgressEvent;)V
.end method

.method public abstract onPostCifCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onPostContactCompleted(ILjava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract onPostFtCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V
.end method

.method public abstract onPostPayloadCompleted(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestFailed(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onSearchContactCompleted(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)V
.end method

.method public abstract onUpdateContactCompleted(ILjava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract onUpdateGioCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;)V
.end method
