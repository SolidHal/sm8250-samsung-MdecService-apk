.class public Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Default;
.super Ljava/lang/Object;
.source "INmsSubscriptionListener.java"

# interfaces
.implements Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;
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

.method public onSubscribed(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;)V
    .locals 0

    return-void
.end method

.method public onUnsubscribed(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;)V
    .locals 0

    return-void
.end method
