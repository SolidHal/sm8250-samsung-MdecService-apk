.class public interface abstract Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;
.super Ljava/lang/Object;
.source "IMessageAgentEventListener.java"


# virtual methods
.method public abstract onBulkDeleteCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onBulkPostCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onBulkUpdateCompleted(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDeleteCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V
.end method

.method public abstract onGetCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Z)V
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
            "Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract onGetMmsCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/util/List;Z)V
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
            "Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onGetNotiCompleted(ILjava/lang/String;)V
.end method

.method public abstract onGetRcsCompleted(ILjava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;Ljava/util/List;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation
.end method

.method public abstract onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V
.end method

.method public abstract onRequestFailed(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onUpdateCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Lcom/samsung/android/mdecservice/nms/agent/interfaces/MessageAgentType;)V
.end method
