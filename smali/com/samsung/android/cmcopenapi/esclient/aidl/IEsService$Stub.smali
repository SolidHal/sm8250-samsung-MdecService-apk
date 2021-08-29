.class public abstract Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService$Stub;
.super Landroid/os/Binder;
.source "IEsService.java"

# interfaces
.implements Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cmcopenapi.esclient.aidl.IEsService"

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_sendMessage:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.cmcopenapi.esclient.aidl.IEsService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.cmcopenapi.esclient.aidl.IEsService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;

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

    const-string v1, "com.samsung.android.cmcopenapi.esclient.aidl.IEsService"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 6
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 7
    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;->sendMessage(ILandroid/os/Bundle;)V

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 9
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback;

    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;->unregisterCallback(Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback;)Z

    move-result p1

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 14
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback;

    move-result-object p1

    .line 16
    invoke-interface {p0, p1}, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;->registerCallback(Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback;)Z

    move-result p1

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
