.class public interface abstract Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;
.super Ljava/lang/Object;
.source "INmsClientManager.java"


# virtual methods
.method public abstract abortDelayedSyncEventComplete(I)V
.end method

.method public abstract isCalllogSyncRunning()Z
.end method

.method public abstract isContactSyncRunning()Z
.end method

.method public abstract isGioPushHistoryExist()Z
.end method

.method public abstract isPushHistoryExist(Ljava/lang/String;)Z
.end method

.method public abstract isRelayDataPushHistoryExist()Z
.end method

.method public abstract isSaRegistered(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Z
.end method

.method public abstract isSearchRequiredAfterAirplaneOff()Z
.end method

.method public abstract makeGioSearchOperation()V
.end method

.method public abstract makeRelayDataSearchOperation()V
.end method

.method public abstract makeSearchOperation(Ljava/lang/String;)V
.end method

.method public abstract markSearchCompleted(Ljava/lang/String;)V
.end method

.method public abstract notifyDefaultSmsAppChanged()V
.end method

.method public abstract onEntitlementProfileUpdated(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/mdecservice/nms/config/EntitlementProfile;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onNetworkStateChanged(IZ)V
.end method

.method public abstract onSamsungAccountInfoChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onWatchActivationChanged(Z)V
.end method

.method public abstract postJsonRequestToServer(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V
.end method

.method public abstract postOkHttpRequestToServer(Lf/a0;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/okhttp/OkHttpRequestCallback;)V
.end method

.method public abstract postStringRequestToServer(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/http/volley/VolleyRequestCallback;)V
.end method

.method public abstract publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
.end method

.method public abstract publishSyncEventComplete(I)V
.end method

.method public abstract publishSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V
.end method

.method public abstract publishTryDeregisterEvent()V
.end method

.method public abstract registerNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
.end method

.method public abstract resetPushHistory(Ljava/lang/String;)V
.end method

.method public abstract setContactSyncRunning(Z)V
.end method

.method public abstract setSearchRequiredAfterAirplaneOff(Z)V
.end method

.method public abstract unregisterNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
.end method
