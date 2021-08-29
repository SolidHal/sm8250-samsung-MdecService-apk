.class public abstract Lcom/samsung/android/cmcopenapi/INmsServiceCallback$Stub;
.super Landroid/os/Binder;
.source "INmsServiceCallback.java"

# interfaces
.implements Lcom/samsung/android/cmcopenapi/INmsServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcopenapi/INmsServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcopenapi/INmsServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cmcopenapi.INmsServiceCallback"

.field static final TRANSACTION_onRcsCapabilityChanged:I = 0x4

.field static final TRANSACTION_onRelayCompleted:I = 0x1

.field static final TRANSACTION_onRelayRcsCompleted:I = 0x3

.field static final TRANSACTION_onRequestToServerCompleted:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.cmcopenapi.INmsServiceCallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcopenapi/INmsServiceCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.cmcopenapi.INmsServiceCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/samsung/android/cmcopenapi/INmsServiceCallback;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/samsung/android/cmcopenapi/INmsServiceCallback;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/samsung/android/cmcopenapi/INmsServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcopenapi/INmsServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/cmcopenapi/INmsServiceCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/INmsServiceCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcopenapi/INmsServiceCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/INmsServiceCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcopenapi/INmsServiceCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/samsung/android/cmcopenapi/INmsServiceCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcopenapi/INmsServiceCallback;

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
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.samsung.android.cmcopenapi.INmsServiceCallback"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 3
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lcom/samsung/android/cmcopenapi/INmsServiceCallback;->onRcsCapabilityChanged(Ljava/util/List;)V

    return v0

    .line 6
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 8
    invoke-interface {p0, p1}, Lcom/samsung/android/cmcopenapi/INmsServiceCallback;->onRelayRcsCompleted(Ljava/util/List;)V

    return v0

    .line 9
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 13
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 14
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/android/cmcopenapi/INmsServiceCallback;->onRequestToServerCompleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return v0

    .line 15
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 16
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/cmcopenapi/INmsServiceCallback;->onRelayCompleted(Ljava/util/List;Ljava/lang/String;)V

    return v0
.end method
