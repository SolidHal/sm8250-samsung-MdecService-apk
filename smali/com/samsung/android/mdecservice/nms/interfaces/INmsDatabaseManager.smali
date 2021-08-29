.class public interface abstract Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;
.super Ljava/lang/Object;
.source "INmsDatabaseManager.java"


# virtual methods
.method public abstract getNotificationStatus(I)I
.end method

.method public abstract isDuplicatedLastModSeq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isMuteThread(J)Z
.end method

.method public abstract makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract notifyRcsCapabilityChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyRelayRcsResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyServerRequestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerNmsCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)V
.end method

.method public abstract sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendRelayRCS(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendrelayMMS(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendrelaySMS(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startContactSync()V
.end method

.method public abstract unregisterNmsCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)V
.end method
