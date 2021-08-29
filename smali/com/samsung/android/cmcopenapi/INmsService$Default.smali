.class public Lcom/samsung/android/cmcopenapi/INmsService$Default;
.super Ljava/lang/Object;
.source "INmsService.java"

# interfaces
.implements Lcom/samsung/android/cmcopenapi/INmsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcopenapi/INmsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllCif()V
    .locals 0

    return-void
.end method

.method public getMessageSetting()V
    .locals 0

    return-void
.end method

.method public getRcsCapability(Ljava/util/List;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public isInitialized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNmsSubscribed(ILcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onRequestToAppCompleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public registerCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public registerNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V
    .locals 0

    return-void
.end method

.method public registerNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
    .locals 0

    return-void
.end method

.method public requestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public sendMessageSetting(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendMessageSettingExt(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendRelayRCS(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public sendrelayMMS(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public sendrelaySMS(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public unregisterNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V
    .locals 0

    return-void
.end method

.method public unregisterNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
    .locals 0

    return-void
.end method
