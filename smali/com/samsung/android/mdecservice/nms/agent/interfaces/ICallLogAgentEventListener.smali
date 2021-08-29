.class public interface abstract Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;
.super Ljava/lang/Object;
.source "ICallLogAgentEventListener.java"


# virtual methods
.method public abstract onBulkDeleteCompleted(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBulkPostCompleted(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBulkUpdateCompleted(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDeleteCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onGetCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)V
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
.end method

.method public abstract onPostCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)V
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
.end method

.method public abstract onUpdateCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
