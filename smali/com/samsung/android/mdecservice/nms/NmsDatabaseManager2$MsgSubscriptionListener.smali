.class public Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$MsgSubscriptionListener;
.super Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Stub;
.source "NmsDatabaseManager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgSubscriptionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$MsgSubscriptionListener;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscribed(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$MsgSubscriptionListener;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->setCmcSubscribed(Z)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$MsgSubscriptionListener;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->getPhoneId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->isRcsEnabled(I)Z

    move-result p1

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$MsgSubscriptionListener;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->setRcsEnabled(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$MsgSubscriptionListener;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRcsEnableRequest()V

    :goto_0
    return-void
.end method

.method public onUnsubscribed(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$MsgSubscriptionListener;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->setCmcSubscribed(Z)V

    return-void
.end method
