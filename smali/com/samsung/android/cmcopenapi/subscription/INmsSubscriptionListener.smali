.class public interface abstract Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;
.super Ljava/lang/Object;
.source "INmsSubscriptionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Stub;,
        Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onSubscribed(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;)V
.end method

.method public abstract onUnsubscribed(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;)V
.end method
