.class public Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$CalllogSubscriptionListener;
.super Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Stub;
.source "NmsDatabaseManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalllogSubscriptionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$CalllogSubscriptionListener;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscribed(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase$CalllogSubscriptionListener;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;

    sget-object v0, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->trySyncBufferDB(Landroid/net/Uri;)V

    return-void
.end method

.method public onUnsubscribed(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;)V
    .locals 0

    return-void
.end method
