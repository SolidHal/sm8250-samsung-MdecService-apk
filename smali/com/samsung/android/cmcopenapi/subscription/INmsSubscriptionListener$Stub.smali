.class public abstract Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Stub;
.super Landroid/os/Binder;
.source "INmsSubscriptionListener.java"

# interfaces
.implements Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cmcopenapi.subscription.INmsSubscriptionListener"

.field static final TRANSACTION_onSubscribed:I = 0x1

.field static final TRANSACTION_onUnsubscribed:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.cmcopenapi.subscription.INmsSubscriptionListener"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.cmcopenapi.subscription.INmsSubscriptionListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.samsung.android.cmcopenapi.subscription.INmsSubscriptionListener"

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;

    .line 6
    :cond_2
    invoke-interface {p0, v0}, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;->onUnsubscribed(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;)V

    return v1

    .line 7
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    sget-object p1, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;

    .line 10
    :cond_4
    invoke-interface {p0, v0}, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;->onSubscribed(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;)V

    return v1
.end method
