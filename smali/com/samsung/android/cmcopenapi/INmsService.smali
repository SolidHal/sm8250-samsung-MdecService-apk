.class public interface abstract Lcom/samsung/android/cmcopenapi/INmsService;
.super Ljava/lang/Object;
.source "INmsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcopenapi/INmsService$Stub;,
        Lcom/samsung/android/cmcopenapi/INmsService$Default;
    }
.end annotation


# virtual methods
.method public abstract getAllCif()V
.end method

.method public abstract getMessageSetting()V
.end method

.method public abstract getRcsCapability(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract isNmsSubscribed(ILcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Z
.end method

.method public abstract onRequestToAppCompleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
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

.method public abstract registerCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)Z
.end method

.method public abstract registerNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V
.end method

.method public abstract registerNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
.end method

.method public abstract requestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
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

.method public abstract sendMessageSetting(Ljava/lang/String;)V
.end method

.method public abstract sendMessageSettingExt(Ljava/lang/String;)V
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

.method public abstract unregisterCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)Z
.end method

.method public abstract unregisterNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V
.end method

.method public abstract unregisterNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
.end method
